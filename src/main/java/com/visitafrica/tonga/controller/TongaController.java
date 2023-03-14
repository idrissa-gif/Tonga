package com.visitafrica.tonga.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TongaController {
    @RequestMapping({"/","/login"})
    public String ShowLogin()
    {
        return "login";
    }

}
