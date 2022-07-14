package com.eagle.brta.model;

import java.time.LocalDate;

import javax.persistence.*;

@Entity
@Table(name = "mst_ed_new")
public class QrModel {

    @Id
    private Long id;
    private String ed1;
    private String ed2;
    private String ed3;
    private String ed4;
    @Column(name = "ed1_validdate")
    private LocalDate ed1Validdate;
    @Column(name = "ed2_validdate")
    private LocalDate ed2Validdate;
    @Column(name = "ed3_validdate")
    private LocalDate ed3Validdate;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEd1() {
        return ed1;
    }

    public void setEd1(String ed1) {
        this.ed1 = ed1;
    }

    public String getEd2() {
        return ed2;
    }

    public void setEd2(String ed2) {
        this.ed2 = ed2;
    }

    public String getEd3() {
        return ed3;
    }

    public void setEd3(String ed3) {
        this.ed3 = ed3;
    }

    public String getEd4() {
        return ed4;
    }

    public void setEd4(String ed4) {
        this.ed4 = ed4;
    }

    public LocalDate getEd1Validdate() {
        return ed1Validdate;
    }

    public void setEd1Validdate(LocalDate ed1Validdate) {
        this.ed1Validdate = ed1Validdate;
    }

    public LocalDate getEd2Validdate() {
        return ed2Validdate;
    }

    public void setEd2Validdate(LocalDate ed2Validdate) {
        this.ed2Validdate = ed2Validdate;
    }

    public LocalDate getEd3Validdate() {
        return ed3Validdate;
    }

    public void setEd3Validdate(LocalDate ed3Validdate) {
        this.ed3Validdate = ed3Validdate;
    }

}
