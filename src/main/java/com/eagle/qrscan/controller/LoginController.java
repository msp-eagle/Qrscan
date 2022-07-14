package com.eagle.qrscan.controller;

import javax.annotation.PostConstruct;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eagle.qrscan.audit.model.QrAudit;
import com.eagle.qrscan.audit.repo.QrAuditRepo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.eagle.qrscan.bean.ConstantValues;
import com.eagle.qrscan.dto.NewQrCode;
import com.eagle.qrscan.dto.QrCode;
import com.eagle.qrscan.service.QRGenServiceImp;
import com.eagle.qrscan.service.QrRepoImp;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import java.io.IOException;
import java.time.LocalDateTime;

@Controller
@Scope("session")
public class LoginController {

    HttpServletRequest request;
    HttpServletResponse response;
    private String msg;
    public String decData;
    public String username;
    public String email;
    public String message;
    @Autowired
    QRGenServiceImp qRGenServiceImp;
    @Autowired
    QrRepoImp qrRepoImp;

    @Autowired
    QrAuditRepo qrAuditRepo;

    @Autowired
    private JavaMailSender javaMailSender;

    private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

    @RequestMapping(value = "/")
    public String showLoginPage(ModelMap model) {
        return "offlineEnrolmentPage";
    }

    @RequestMapping(value = "/scanpage")
    public String showscanpage(ModelMap model) {
        return "offlineEnrolmentPage";
    }

    @RequestMapping(value = "/sucesspage")
    public String showWelcomePage(ModelMap model, HttpServletRequest request, @RequestParam String username) {
        try {

            decData = ConstantValues.decrypt(username, ConstantValues.secKey);
            logger.info("data decrypted successfully");
            ObjectMapper objectMapper = new ObjectMapper();
            QrCode qrJson = objectMapper.readValue(decData, QrCode.class);
            model.addAttribute("qrJson", qrJson);
            logger.info("data passed to success page");
            return "sucesspage";
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("sucesspage Error");
            return "notRegerrorpage";
        }
    }

    @RequestMapping(value = "/newsucesspage")
    public String showNewWelcomePage(ModelMap model, HttpServletRequest request, @RequestParam String username){
        try {
            decData = ConstantValues.decrypt(username, ConstantValues.secKey);
            logger.info("data decrypted successfully");
            ObjectMapper objectMapper = new ObjectMapper();
            NewQrCode qrJson = objectMapper.readValue(decData, NewQrCode.class);
            model.addAttribute("qrJson", qrJson);
            logger.info("data passed to success page");
            return "sucesspage";
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("new sucess page Error");
            return "notRegerrorpage";
        }
    }

    @RequestMapping(value = "/errorpage")
    public String showNotRegErrorpage(ModelMap model) {
        QrAudit qr = new QrAudit();
        System.out.println("errorpage.................");
        qr.setStatus("REVOKED or is INACTIVE");
        qr.setCurrDate(LocalDateTime.now());
        qrAuditRepo.save(qr);
        return "errorpage";
    }

    @RequestMapping(value = "/notRegerrorpage")
    public String showErrorpage(ModelMap model) {
        QrAudit qr = new QrAudit();
        System.out.println("notRegerrorpage.............");
        qr.setStatus("NOTRECOGNIZED");
        qr.setCurrDate(LocalDateTime.now());
        qrAuditRepo.save(qr);
        return "notRegerrorpage";
    }

    @RequestMapping("/termsOfUse")
    public String showtermsOfUse() {

        return "termsOfUsePage";
    }

    @RequestMapping("/offlineEnrolmentPage")
    public String showofflineEnrolmentPage() {

        return "offlineEnrolmentPage";
    }

    @RequestMapping("/PrivacyPolicy")
    public String showPrivacyPolicy() {

        return "PrivacyPolicypage";
    }

    @RequestMapping("/ContactUs")
    public String showContactUs() {

        return "Contactuspage";
    }

    @RequestMapping("/FAQs")
    public String showfaqs() {

        return "faqspage";
    }

    @RequestMapping("/abtpqrcvs")
    public String showabtpqrcvs() {

        return "abtpqrcvspage";
    }

    @PostConstruct
    public void getData() {

        ConstantValues.pubkeyvalue = qrRepoImp.getEd2();
        System.out.println("ConstantValues.pubkeyvalue"+ConstantValues.pubkeyvalue);
        logger.info("public key assigned to constat variable");
    }

    @ModelAttribute
    @RequestMapping("/mailcontact")
    public String showmail(@RequestParam(value = "Name") String Name,
                           @RequestParam(value = "Message") String Message,
                           @RequestParam(value = "Email") String Email,
                           RedirectAttributes redirectAttr, Model model) {

        username = Name;
        email = Email;
        message = Message;
        String next = null;

        System.out.println("Sending Email...");
        try {
            sendEmailWithAttachment();
        } catch (MessagingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        System.out.println("Done");
        model.addAttribute("successMessage", "Email send successfully");

        return "mailcontact";
    }

    void sendEmailWithAttachment() throws MessagingException, IOException {
        MimeMessage msg = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(msg, true);
        helper.setTo("verify.support@philsys.gov.ph");
        helper.setSubject("QrScan Feedback");
        String fullMessage = username + "\n" + email + "\n" + message;
        System.out.println(fullMessage);
        helper.setText(fullMessage);
        javaMailSender.send(msg);
    }

}
