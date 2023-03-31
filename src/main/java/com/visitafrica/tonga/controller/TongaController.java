package com.visitafrica.tonga.controller;

import com.visitafrica.tonga.repo.TourDao;
import com.visitafrica.tonga.model.Login;
import com.visitafrica.tonga.model.PasswordEncoder;
import com.visitafrica.tonga.model.Tour;
import com.visitafrica.tonga.services.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Objects;


@Controller
public class TongaController {
    @Autowired
    private LoginService loginService;
    @Autowired
    private TourDao tourDao;

    @RequestMapping({"/","/login"})
    public String login()
    {
        return "login";
    }

    @PostMapping({"/","/login"})
    public ModelAndView login(@ModelAttribute("login") Login login, ModelAndView model)
    {
        String password = PasswordEncoder.encode(login.getPassword());
        System.out.println(password);
        Login oauthUser = loginService.login(login.getEmail(),password);
        if(Objects.nonNull(oauthUser)){
            List<Tour> ListTour = tourDao.tourList();
            model.addObject("tourList",ListTour);
            model.setViewName("/dashboard");
            return model;
        }else {
            model.setViewName("/login");
            return model;
        }
    }

    @GetMapping("/dashboard")
    public ModelAndView dashboard(ModelAndView model)
    {
        model.setViewName("/dashboard");
        return model;
    }


}
