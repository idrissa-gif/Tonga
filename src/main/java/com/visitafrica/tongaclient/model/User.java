package com.visitafrica.tongaclient.model;

import javax.persistence.*;

import java.util.Set;

@Entity
@Table(name = "user_tb")
public class User {
    private Long user_id;
    private String username;
    private String fullName;
    private String user_email;
    private String password;
    private String passwordConfirm;
    private String phone ;
    private String address;
    private Set < Role > roles;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getUser_id() {
        return user_id;
    }

    public void setUser_id(Long id) {
        this.user_id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
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

    @Transient
    public String getPasswordConfirm() {
        return passwordConfirm;
    }

    public void setPasswordConfirm(String passwordConfirm) {
        this.passwordConfirm = passwordConfirm;
    }

    @ManyToMany
    @JoinTable(name = "user_role_tb", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
    public Set < Role > getRoles() {
        return roles;
    }

    public void setRoles(Set < Role > roles) {
        this.roles = roles;
    }

}