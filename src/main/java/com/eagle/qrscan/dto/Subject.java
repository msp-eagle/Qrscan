package com.eagle.qrscan.dto;

import com.fasterxml.jackson.annotation.JsonProperty;


public class Subject {

    @JsonProperty("Suffix")
    public String suffix;
    public String lName;
    public String fName;
    public String mName;
    public String sex;
    @JsonProperty("BF")
    public String bF;
    @JsonProperty("DOB")
    public String dOB;
    @JsonProperty("POB")
    public String pOB;
    @JsonProperty("PCN")
    public String pCN;

    public String getSuffix() {
        return suffix;
    }

    public void setSuffix(String suffix) {
        this.suffix = suffix;
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

    public String getbF() {
        return bF;
    }

    public void setbF(String bF) {
        this.bF = bF;
    }

    public String getdOB() {
        return dOB;
    }

    public void setdOB(String dOB) {
        this.dOB = dOB;
    }

    public String getpOB() {
        return pOB;
    }

    public void setpOB(String pOB) {
        this.pOB = pOB;
    }

    public String getpCN() {
        return pCN;
    }

    public void setpCN(String pCN) {
        this.pCN = pCN;
    }


}
