package com.visitafrica.tonga.service;

import com.visitafrica.tonga.model.User;
import com.visitafrica.tonga.repository.UserRepository;
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
    public User getbyUsername(String username)
    {
        return userRepository.findByUsername(username);
    }


}