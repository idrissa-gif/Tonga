package com.visitafrica.tonga.model;

import javax.persistence.*;

@Entity
@Table(name = "country_tb" , uniqueConstraints = @UniqueConstraint(columnNames = "country_name"))
public class Country {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "country_name")
    private String name ;

    @Column (name = "country_tours")
    private Integer tours;

    @Column(name = "country_operator")
    private Integer operators;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getTours() {
        return tours;
    }

    public void setTours(Integer tours) {
        this.tours = tours;
    }

    public Integer getOperators() {
        return operators;
    }

    public void setOperators(Integer operators) {
        this.operators = operators;
    }


}
