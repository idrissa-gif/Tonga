package com.visitafrica.tonga.services;

import com.visitafrica.tonga.model.Login;
import com.visitafrica.tonga.repo.LoginRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
    @Autowired
    private LoginRepository repository ;
    public Login login(String username , String password)
    {
        Login login =repository.findUsernameAndPassword(username, password);
        return login;
    }



}
