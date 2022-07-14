package com.eagle.brta.service;

import net.i2p.crypto.eddsa.EdDSAEngine;
import net.i2p.crypto.eddsa.EdDSAPrivateKey;
import net.i2p.crypto.eddsa.EdDSAPublicKey;
import net.i2p.crypto.eddsa.EdDSASecurityProvider;
import net.i2p.crypto.eddsa.spec.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eagle.brta.bean.ConstantValues;
import com.eagle.brta.controller.ApiController;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;
import java.security.*;
import java.util.Base64;

@Service
public class QRGenServiceImp {

    private static final Logger logger = LoggerFactory.getLogger(QRGenServiceImp.class);

    private static SecretKey secretKey;


    @Autowired
    QrRepoImp qrRepoImp;

    public String algEd25519 = "Ed25519";
    public static String Success = "0";
    public static String Error = "-1";
    public static String Valid = "Valid";
    public static String InValid = "InValid";


    public String[] GenerateDigSign(String InputData) {
        String[] OutputData = new String[2];
        byte[] bytesToSign = null;
        byte[] signature = null;
        boolean signatureIsValid = false;
        EdDSAPrivateKey privateKey;
        EdDSAPublicKey publicKey;

        try {
            // System.out.println("InputData : "+InputData);                           


            // System.out.println("PrivateKey Static  : "+ ConstantValues.PrivateKey);          
            Security.addProvider(new EdDSASecurityProvider());
            //byte[] privateBytes =ConstantValues.PrivateKey.getBytes();  //Key String format
            // byte[] privateBytes =  hexStringToByteArray(ConstantValues.PrivateKey); //Key Hexa format  
            byte[] privateFullBytes = Base64.getDecoder().decode(new String(ConstantValues.EDDSAPrivateKey).getBytes("UTF-8"));  //Key base64 format
            EdDSANamedCurveSpec ed25519_1 = EdDSANamedCurveTable.getByName(algEd25519);

            byte[] privateBytes = new byte[32];

            for (int byt = 0; byt < 32; byt++) {
                privateBytes[byt] = privateFullBytes[byt];
            }

            //  System.out.println("Scale :"+ed25519_1.getCurve().getField().getb()/8);  
            EdDSAPrivateKeySpec privateSpec = new EdDSAPrivateKeySpec(privateBytes, ed25519_1);
            //System.out.println("seed :"+privateSpec.getSeed().length);
            KeyFactory keyFactory = KeyFactory.getInstance("EdDSA", new EdDSASecurityProvider());
            PrivateKey prvKey = keyFactory.generatePrivate(privateSpec);
            privateKey = (EdDSAPrivateKey) prvKey;

            bytesToSign = InputData.getBytes(StandardCharsets.US_ASCII);//Our                               
            EdDSAParameterSpec spec = EdDSANamedCurveTable.getByName(algEd25519);
            EdDSAEngine sgr = new EdDSAEngine(MessageDigest.getInstance(spec.getHashAlgorithm()));
            //sgr.setParameter(spec); //temp       
            sgr.initSign(privateKey);
            sgr.update(bytesToSign);
            signature = sgr.sign();

            if (signature == null) {
                System.out.println("Signature is Null");
                return OutputData;
            }

            OutputData[1] = ByteToBase64New(signature);
            System.out.println("signature created ");

            OutputData[0] = Success;
            return OutputData;

        } catch (Exception e) {
            System.out.println(" Common : GenerateDigSign : " + e.getMessage());
            e.printStackTrace();
            OutputData[0] = Error;
            return OutputData;
        } finally {

        }
    }


    public String VerifyDigSign(String InputData, String SignData, String pubkey) {
        logger.info("Qr data passed to verification method");
        String OutputData = new String();
        byte[] bytesToSign = null;
        byte[] signature = null;
        boolean signatureIsValid = false;
        EdDSAPrivateKey privateKey;
        EdDSAPublicKey publicKey;

        try {
            // System.out.println("InputData : "+InputData);      

            Security.addProvider(new EdDSASecurityProvider());
            // String pubkey = qrRepoImp.getEd2(); 
            // System.out.println(pubkey);
            //byte[] publicBytes =ConstantValues.PublicKey.getBytes();  //Key String format
            //byte[] publicBytes = hexStringToByteArray(ConstantValues.PublicKey);  //Key Hexa format
            ConstantValues.EDDSAPublicKey = AESDecrypt(pubkey, ConstantValues.StaticAESKeyForDB);
//				System.out.println("pubkey"+pubkey);
//				System.out.println("ConstantValues.EDDSAPublicKey"+" "+ConstantValues.EDDSAPublicKey);
            byte[] publicBytes = Base64.getDecoder().decode(new String(ConstantValues.EDDSAPublicKey).getBytes("UTF-8"));  //Key base64 format
            // System.out.printl/////n("Public key len : "+publicBytes.length);
            EdDSANamedCurveSpec ed25519 = EdDSANamedCurveTable.getByName(algEd25519);
            EdDSAPublicKeySpec publicSpec = new EdDSAPublicKeySpec(publicBytes, ed25519);
            KeyFactory keyFactory = KeyFactory.getInstance("EdDSA", new EdDSASecurityProvider());
            PublicKey pubKey = keyFactory.generatePublic(publicSpec); //keySpec
            publicKey = (EdDSAPublicKey) pubKey;


            //  System.out.println("signature 1 : "+ ByteToBase64New(signature));
            bytesToSign = InputData.getBytes(StandardCharsets.US_ASCII);//Our  
            signature = Base64ToByteNew(SignData);

            System.out.println("signature " + signature);

            EdDSAParameterSpec spec = EdDSANamedCurveTable.getByName(algEd25519);
            EdDSAEngine sgr = new EdDSAEngine(MessageDigest.getInstance(spec.getHashAlgorithm()));
            sgr.initVerify(new EdDSAPublicKey(new EdDSAPublicKeySpec(publicKey.getA(), spec)));
            sgr.initVerify(publicKey);
            sgr.update(bytesToSign);
            signatureIsValid = sgr.verify(signature);

            // System.out.println("Signature verification "+signatureIsValid);            

            if (signatureIsValid) {
                logger.info("Qr data verified successfully");

                OutputData = "VerifiedSuccessfully";
                // System.out.println(OutputData);
            } else {
                logger.warn("Qr data verification failed");
                OutputData = " VerificationFailed";
                // System.out.println(OutputData);	 
            }


            return OutputData;

        } catch (Exception e) {
            System.out.println(" Common : VerifyDigSign : " + e.getMessage());
            e.printStackTrace();
            OutputData = Error;
            return OutputData;
        } finally {

        }
    }

    public byte[] Base64ToByteNew(String sign) {
        byte[] outValue = null;
        try {

            //outValue=   Base64.getEncoder().encodeToString(publicKey);
            outValue = Base64.getDecoder().decode(sign);
            return outValue;

        } catch (Exception ex) {
            System.out.println("Error : " + ex.getMessage());
            return outValue;
        }


    }


    public static String AESEncrypt(String strToEncrypt, String secret) {
        try {
            setKey(secret);
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(Cipher.ENCRYPT_MODE, secretKey);
            //return Base64.getEncoder().encodeToString(cipher.doFinal(strToEncrypt.getBytes("UTF-8"))); //For Base64 output
            return ByteToHexNew(cipher.doFinal(strToEncrypt.getBytes("UTF-8")));  //For Hex output
        } catch (Exception e) {
            System.out.println("Error while encrypting: " + e.toString());
        }
        return null;
    }

    public static String ByteToHexNew(byte[] publicKey) {
        String outValue = "";
        StringBuffer retString = new StringBuffer();
        try {


            for (int i = 0; i < publicKey.length; ++i) {
                retString.append(Integer.toHexString(0x0100 + (publicKey[i] & 0x00FF)).substring(1));
            }
            outValue = retString.toString();
            return outValue;


        } catch (Exception ex) {
            System.out.println("Error : " + ex.getMessage());
            return outValue;
        }


    }


    ////ConstantValues.EDDSAPrivateKey = AESDecrypt("FromDB",ConstantValues.StaticAESKeyForDB);       


    public static String AESDecrypt(String strToDecrypt, String secret) {
        try {
            setKey(secret);
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
            cipher.init(Cipher.DECRYPT_MODE, secretKey);
            // return new String(cipher.doFinal(Base64.getDecoder().decode(strToDecrypt))); //For Base64 input
            return new String(cipher.doFinal(HexToByteNew(strToDecrypt))); //For Hex input
        } catch (Exception e) {
            System.out.println("Error while decrypting: " + e.toString());
        }
        return null;
    }

    public static void setKey(String myKey) {
        try {


            byte[] raw = HexToByteNew(myKey);
            // System.out.println("byt le : "+myKey);
            // System.out.println("byt len : "+raw.length);
            secretKey = new SecretKeySpec(raw, "AES");
        } catch (Exception e) {
            System.out.println("setKey: " + e.toString());
        }

    }

    public static byte[] HexToByteNew(String keyData) {

        byte[] val = null;
        try {
            val = new byte[keyData.length() / 2];
            for (int i = 0; i < val.length; i++) {
                int index = i * 2;
                int j = Integer.parseInt(keyData.substring(index, index + 2), 16);
                val[i] = (byte) j;
            }

            return val;

        } catch (Exception ex) {
            System.out.println("Error : " + ex.getMessage());
            return val;
        }

    }

    public String ByteToBase64New(byte[] publicKey) {
        String outValue = "";
        try {
            outValue = Base64.getEncoder().encodeToString(publicKey);
            return outValue;

        } catch (Exception ex) {
            System.out.println("Error : " + ex.getMessage());
            return outValue;
        }


    }

}
