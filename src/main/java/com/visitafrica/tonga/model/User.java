package com.visitafrica.tonga.model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "user_tb")
public class User {
    private Long user_id;
    private String username;
    private String password;
    private String passwordConfirm;
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