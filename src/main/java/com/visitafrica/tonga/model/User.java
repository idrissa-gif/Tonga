package com.visitafrica.tonga.model;

import javax.persistence.*;

@Entity
@Table(name = "user_tb" , uniqueConstraints = @UniqueConstraint(columnNames = "user_email"))

public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_name")
    private String name ;
    @Column(name = "user_email")
    private String email;
    @Column(name = "phone")
    private String phone ;
    @Column(name = "address")
    private  String address ;
    @Column(name = "password")
    private  String password ;
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
