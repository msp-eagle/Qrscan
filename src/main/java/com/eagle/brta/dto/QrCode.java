package com.eagle.brta.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

@JsonPropertyOrder({"DateIssued", "Issuer", "subject", "alg", "signature"})
public class QrCode {

    @JsonProperty("DateIssued")
    public String dateIssued;
    @JsonProperty("Issuer")
    public String issuer;
    @JsonProperty("subject")
    public Subject subject;
    @JsonProperty("alg")
    public String alg;
    @JsonProperty("signature")
    public String signature;

    public String getDateIssued() {
        return dateIssued;
    }

    public void setDateIssued(String dateIssued) {
        this.dateIssued = dateIssued;
    }

    public String getIssuer() {
        return issuer;
    }

    public void setIssuer(String issuer) {
        this.issuer = issuer;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    public String getAlg() {
        return alg;
    }

    public void setAlg(String alg) {
        this.alg = alg;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }


}
