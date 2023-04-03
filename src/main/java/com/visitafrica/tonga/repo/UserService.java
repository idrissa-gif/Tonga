package com.visitafrica.tonga.repo;


import com.visitafrica.tonga.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}