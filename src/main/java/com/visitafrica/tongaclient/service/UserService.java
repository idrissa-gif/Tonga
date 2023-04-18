package com.visitafrica.tongaclient.service;

import com.visitafrica.tongaclient.model.User;
import com.visitafrica.tongaclient.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserRepository userRepository ;
    public boolean existsByUsername(String username) {
        User user = userRepository.findByUsername(username);
        return user != null;
    }
    public boolean existsByEmail(String email) {
        User user = userRepository.findByEmail(email);
        return user != null;
    }

    public void saveUser(User user)
    {
        userRepository.save(user);
    }

    public User getbyEmail(String email)
    {
        return userRepository.findByEmail(email);
    }


}