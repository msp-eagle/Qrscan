package com.eagle.qrscan.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.eagle.qrscan.audit.model.QrAudit;
import com.eagle.qrscan.audit.repo.QrAuditRepo;
import com.eagle.qrscan.bean.ConstantValues;
import com.eagle.qrscan.dto.NewQrCode;
import com.eagle.qrscan.dto.NewSubject;
import com.eagle.qrscan.dto.QrCode;
import com.eagle.qrscan.dto.Subject;
import com.eagle.qrscan.service.QRGenServiceImp;
import com.eagle.qrscan.service.QrRepoImp;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@RestController
public class ApiController {
    HttpServletRequest request;
    HttpServletResponse response;
    private String msg;
    public String encData;

    public String username;
    public String email;
    public String message;

    @Autowired
    QRGenServiceImp qRGenServiceImp;
    @Autowired
    QrRepoImp qrRepoImp;
    @Autowired
    QrAuditRepo qrAuditRepo;

    private static final Logger logger = LoggerFactory.getLogger(ApiController.class);

    @PostMapping(value = "/scan")
    public String dem(@RequestBody String qrdata) throws JsonProcessingException {
        System.out.println(qrdata);
        logger.info("Qr data passed to jsonobject");
        String qrcode = null;
        try {
            JSONObject jsonObj = new JSONObject(qrdata);
            JSONArray array = new JSONArray(jsonObj.get("qrdata").toString());

            JSONObject jsonObj1 = new JSONObject(array.get(0).toString());

            String s = jsonObj1.get("qrdata").toString();

            if (s != null && s != "") {
                Pattern p = Pattern.compile("\"\\d\"");
                Matcher m = p.matcher(s);

                boolean b = false;
                if (m.find()) {
                    qrcode = newJsonDataFormater(s);
                    logger.info("Qr data passed to success jsp page");
                    return qrcode + "new";
                } else {
                    qrcode = jsonDataFormater(s);
                    logger.info("Qr data passed to success jsp page");
                    return qrcode;
                }
            } else {
                return "errorpage";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "errorpage";
        }

    }

    public String newJsonDataFormater(String data){
        try {
            logger.info("Qr data passed to new json format method");
            ObjectMapper objectMapper = new ObjectMapper();
            NewQrCode qrJson = objectMapper.readValue(data, NewQrCode.class);
            String pubkey = getNewDateBKey(qrJson.getDateIssued());
            NewSubject qrSubJson = qrJson.getSubject();
            String sign = qrJson.getSignature();

            String s = "{\n" + "  \"DateIssued\": \"" + qrJson.getDateIssued() + "\",\n" + "  \"Issuer\": \""
                    + qrJson.getIssuer() + "\",\n" + "  \"subject\": {\n" + "    \"Suffix\": \"" + qrSubJson.getSuffix()
                    + "\",\n" + "    \"lName\": \"" + qrSubJson.getlName() + "\",\n" + "    \"fName\": \""
                    + qrSubJson.getfName() + "\",\n" + "    \"mName\": \"" + qrSubJson.getmName() + "\",\n"
                    + "    \"sex\": \"" + qrSubJson.getSex() + "\",\n" + "    \"BF\": [\n" + "      \"" + qrSubJson.getbF()[0] + "\",\n"
                    + "      \"" + qrSubJson.getbF()[1] + "\"\n    ],\n"
                    + "    \"DOB\": \"" + qrSubJson.getdOB() + "\",\n" + "    \"POB\": \"" + qrSubJson.getpOB() + "\",\n"
                    + "    \"PCN\": \"" + qrSubJson.getpCN() + "\"\n" + "  },\n" + "  \"alg\": \"" + qrJson.getAlg()
                    + "\"\n" + "}";

            msg = qRGenServiceImp.VerifyDigSign(s, sign, pubkey);

            QrAudit qr = new QrAudit();
            qr.setPcn(ConstantValues.encrypt(qrSubJson.getpCN(), ConstantValues.secKey));
            qr.setUsername(qrSubJson.getfName());
            qr.setStatus(msg);
            qr.setCurrDate(LocalDateTime.now());

            qrAuditRepo.save(qr);
            logger.info("Qr data saved in to audit table");

            if (msg.equals("VerifiedSuccessfully")) {
                encData = ConstantValues.encrypt(data, ConstantValues.secKey);
                return encData;
            } else {
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "errorpage";
        }
    }


    public String jsonDataFormater(String data){
        try {
            logger.info("Qr data passed to old json format method");
            ObjectMapper objectMapper = new ObjectMapper();
            QrCode qrJson = objectMapper.readValue(data, QrCode.class);
            String pubkey = getDateBKey(qrJson.getDateIssued());
            Subject qrSubJson = qrJson.getSubject();
            String sign = qrJson.getSignature();
            String s = "{\n" + "  \"DateIssued\": \"" + qrJson.getDateIssued() + "\",\n" + "  \"Issuer\": \""
                    + qrJson.getIssuer() + "\",\n" + "  \"subject\": {\n" + "    \"Suffix\": \"" + qrSubJson.getSuffix()
                    + "\",\n" + "    \"lName\": \"" + qrSubJson.getlName() + "\",\n" + "    \"fName\": \""
                    + qrSubJson.getfName() + "\",\n" + "    \"mName\": \"" + qrSubJson.getmName() + "\",\n"
                    + "    \"sex\": \"" + qrSubJson.getSex() + "\",\n" + "    \"BF\": \"" + qrSubJson.getbF() + "\",\n"
                    + "    \"DOB\": \"" + qrSubJson.getdOB() + "\",\n" + "    \"POB\": \"" + qrSubJson.getpOB() + "\",\n"
                    + "    \"PCN\": \"" + qrSubJson.getpCN() + "\"\n" + "  },\n" + "  \"alg\": \"" + qrJson.getAlg()
                    + "\"\n" + "}";

            msg = qRGenServiceImp.VerifyDigSign(s, sign, pubkey);

            QrAudit qr = new QrAudit();
            qr.setPcn(ConstantValues.encrypt(qrSubJson.getpCN(), ConstantValues.secKey));
            qr.setUsername(qrSubJson.getfName());
            qr.setStatus(msg);
            qr.setCurrDate(LocalDateTime.now());

            qrAuditRepo.save(qr);
            logger.info("Qr data saved in to audit table");

            if (msg.equals("VerifiedSuccessfully")) {

                encData = ConstantValues.encrypt(data, ConstantValues.secKey);

                return encData;
            } else {
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("old json");
            return "errorpage";
        }
    }


    public String getDateBKey(String issuDate) {
        logger.info("Checking old issue date format for getting public key");
        DateTimeFormatter f = new DateTimeFormatterBuilder().parseCaseInsensitive()
                .append(DateTimeFormatter.ofPattern("dd MMMM yyyy")).toFormatter();
        LocalDate ld = LocalDate.parse(issuDate, f);

        String dKey = null;
        boolean isvalied = false;
        for (Map.Entry<LocalDate, String> entry : ConstantValues.pubkeyvalue.entrySet()) {
            if (!isvalied) {
                if (ld.isBefore(entry.getKey()) || ld.equals(entry.getKey())) {
                    isvalied = true;
                    dKey = entry.getValue();
                    logger.info("public key has assigned to constant variable");
                }
            }

        }
        return dKey;

    }


    public String getNewDateBKey(String issuDate) {
        logger.info("Checking new issue date format for getting public key");
        DateTimeFormatter f = new DateTimeFormatterBuilder().parseCaseInsensitive()
                .append(DateTimeFormatter.ofPattern("yyyy-MM-dd")).toFormatter();
        LocalDate ld = LocalDate.parse(issuDate, f);

        String dKey = null;
        boolean isvalied = false;
        for (Map.Entry<LocalDate, String> entry : ConstantValues.pubkeyvalue.entrySet()) {
            if (!isvalied) {
                if (ld.isBefore(entry.getKey()) || ld.equals(entry.getKey())) {
                    isvalied = true;
                    dKey = entry.getValue();
                    logger.info("public key has assigned to constant variable");
                }
            }

        }
        return dKey;

    }


}
