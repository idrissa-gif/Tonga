package com.visitafrica.tonga.model;

import javax.persistence.*;


@Entity
@Table(name ="admin_tb",uniqueConstraints = @UniqueConstraint(columnNames = "email"))
public class Login {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    @Column(name = "email")
    private String email ;
    @Column(name = "password")
    private String password;


    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
