package com.eagle.brta.bean;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.time.LocalDate;
import java.util.Arrays;
import java.util.Base64;
import java.util.Map;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ConstantValues {

    public static String EDDSAPrivateKey = "";
    public static String EDDSAPublicKey = "";
    public static Map<LocalDate, String> pubkeyvalue;

    public static String SK1 = "select ed1 from mst_ed where id=1"; // Private Key
    public static String SK2 = "select ed2 from mst_ed where id=1";// Public Key

    public static String StaticAESKeyForDB = "6246f3d13d3a12c1b9e23abe5d1791f7b96273f23199d1303261cf42a07a56ff";

    public static SecretKeySpec secretKey;
    public static byte[] key;
    public static String secKey;

    public static String acccode = "f114202a$$$*2faa@4225&a891#f1aed2cc21f8";

    private static final Logger logger = LoggerFactory.getLogger(ConstantValues.class);

    public static void setKey(String myKey) {
        MessageDigest sha = null;
        try {
            key = myKey.getBytes("UTF-8");
            sha = MessageDigest.getInstance("SHA-1");
            key = sha.digest(key);
            key = Arrays.copyOf(key, 16);
            secretKey = new SecretKeySpec(key, "AES");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    public static String encrypt(String strToEncrypt, String secret) {
        try {
            logger.info("data passed to encrypt method");
            setKey(secret);
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(Cipher.ENCRYPT_MODE, secretKey);
            return Base64.getEncoder().encodeToString(cipher.doFinal(strToEncrypt.getBytes("UTF-8")));

        } catch (Exception e) {
            System.out.println("Error while encrypting: " + e.toString());
        }
        return null;
    }

    public static String decrypt(String strToDecrypt, String secret) {
        try {
            logger.info("data passed to decrypt method");

            if (strToDecrypt.contains("new")) {
                strToDecrypt = strToDecrypt.substring(0, strToDecrypt.length() - 3);
            }

            setKey(secret);
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
            cipher.init(Cipher.DECRYPT_MODE, secretKey);
            return new String(cipher.doFinal(Base64.getDecoder().decode(strToDecrypt.trim())));
        } catch (Exception e) {
            System.out.println("Error while decrypting: " + e.toString());
        }
        return null;
    }

}
