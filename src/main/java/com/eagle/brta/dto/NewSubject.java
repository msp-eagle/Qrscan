package com.eagle.brta.dto;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

@JsonPropertyOrder({"Suffix", "lName", "fName", "mName", "sex", "BF", "DOB", "POB", "PCN"})
public class NewSubject {

    @JsonProperty("Suffix")
    public String suffix;
    @JsonProperty("lName")
    public String lName;
    @JsonProperty("fName")
    public String fName;
    @JsonProperty("mName")
    public String mName;
    @JsonProperty("sex")
    public String sex;
    @JsonProperty("BF")
    public String[] bF;
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

    public String[] getbF() {
        return bF;
    }

    public void setbF(String[] bF) {
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
