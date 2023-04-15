package com.visitafrica.tongaclient.service;

import com.visitafrica.tongaclient.model.User;
import org.springframework.stereotype.Service;

import java.util.List;


public interface UserService {
    void saveUser(User user);

    User findUserByEmail(String email);

    List<User> findAllUsers();
}