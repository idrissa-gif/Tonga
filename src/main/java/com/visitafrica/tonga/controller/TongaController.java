package com.visitafrica.tonga.controller;

import com.visitafrica.tonga.model.Tour;
import com.visitafrica.tonga.model.User;
import com.visitafrica.tonga.repo.UserService;
import com.visitafrica.tonga.services.TourService;
import com.visitafrica.tonga.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.List;


@Controller
public class TongaController {

    @Autowired
    private TourService tourService;
    @Autowired
    private UserService userService;

    @Autowired
    private UserValidator userValidator;


    @GetMapping("/login")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

    @GetMapping({"/", "/welcome","/dashboard"})
    public String welcome(Model model) {
        return "dashboard";
    }


    @GetMapping("/add-tour")
    public ModelAndView addTour(ModelAndView model) {
        model.setViewName("/add-tour");
        return model;
    }

    @PostMapping("/add-tour")

    public String saveTour(@ModelAttribute("tour") @Valid Tour tour, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "add-tour";
        }

        tourService.saveTour(tour);

        return "redirect:/add-tour";
    }
    @GetMapping("/manage-tour")
    public String editTourDetail(Model model)
    {
        List<Tour> tours = tourService.findTour();
        model.addAttribute("tours", tours);
        return "/manage-tour";
    }

}

