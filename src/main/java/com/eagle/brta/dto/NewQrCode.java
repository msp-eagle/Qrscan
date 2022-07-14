package com.eagle.brta.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public class NewQrCode {


    @JsonProperty("DateIssued")
    public String dateIssued;
    @JsonProperty("Issuer")
    public String issuer;
    @JsonProperty("subject")
    public NewSubject subject;
    public String alg;
    public String signature;

    public String Suffix;
    public String lName;
    public String fName;
    public String mName;
    public String sex;
    public String DOB;

    public String getSuffix() {
        return Suffix;
    }

    public void setSuffix(String suffix) {
        Suffix = suffix;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public String getPOB() {
        return POB;
    }

    public void setPOB(String POB) {
        this.POB = POB;
    }

    public String getPCN() {
        return PCN;
    }

    public void setPCN(String PCN) {
        this.PCN = PCN;
    }

    public String getBF() {
        return BF;
    }

    public void setBF(String BF) {
        this.BF = BF;
    }

    public String POB;
    public String PCN;
    public String BF;

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

    public NewSubject getSubject() {
        return subject;
    }

    public void setSubject(NewSubject subject) {
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
