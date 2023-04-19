package com.visitafrica.tongaclient.model;

import javax.persistence.*;

@Entity
@Table(name = "review_tb",uniqueConstraints =@UniqueConstraint(columnNames = "id"))
public class Review {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @Column(name = "reviewer_name")
    private String reviewer_name;
    @Column(name = "message")
    private String message;
    @Column(name = "target")
    private String target;
    @Column(name="rate")
    private Integer rate ;
    private long time;

    public Review(){}
    public Review(String reviewer_name, String message, String target, Integer rate,long time) {
        this.reviewer_name = reviewer_name;
        this.message = message;
        this.target = target;
        this.rate = rate;
        this.time = time;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getReviewer_name() {
        return reviewer_name;
    }

    public void setReviewer_name(String reviewer_name) {
        this.reviewer_name = reviewer_name;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public Integer getRate() {
        return rate;
    }

    public void setRate(Integer rate) {
        this.rate = rate;
    }

    public long getTime() {
        return time;
    }

    public void setTime(long time) {
        this.time = time;
    }
}
