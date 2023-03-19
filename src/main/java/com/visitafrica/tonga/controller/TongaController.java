package com.visitafrica.tonga.controller;

import com.visitafrica.tonga.model.Login;
import com.visitafrica.tonga.model.PasswordEncoder;
import com.visitafrica.tonga.services.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Objects;


@Controller
public class TongaController {
    @Autowired
    private LoginService loginService;
    @RequestMapping({"/","/login"})
    public String login()
    {
        return "login";
    }

    @PostMapping({"/","/login"})
    public String login(@ModelAttribute("login") Login login)
    {
        String password = PasswordEncoder.encode(login.getPassword());
        System.out.println(password);
        Login oauthUser = loginService.login(login.getEmail(),password);
        if(Objects.nonNull(oauthUser)){
            return "/dashboard";
        }else {
            return "redirect:/login";
        }
    }

}
