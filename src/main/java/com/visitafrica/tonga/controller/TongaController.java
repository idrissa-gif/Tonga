package com.visitafrica.tonga.controller;

import com.visitafrica.tonga.model.Tour;
import com.visitafrica.tonga.services.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
public class TongaController {

    @Autowired
    private TourService tourService;


    @GetMapping("/login")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "/login";
    }

    @PostMapping("/login")
    public String signin(Model model) {
        return "/dashboard";
    }

    @GetMapping({"/", "/welcome","/dashboard"})
    public String welcome(Model model) {
        return "/dashboard";
    }

    @GetMapping("/add-tour")
    public String showAddTourForm(Model model) {
        model.addAttribute("tour", new Tour());
        return "/add-tour";
    }

    @PostMapping("/add-tour")
    public String addTour(@ModelAttribute("tour") Tour tour) {
        tourService.saveTour(tour);
        return "/add-tour";
    }

    @GetMapping("/manage-tour")
    public String editTourDetail(Model model)
    {
        List<Tour> tours = tourService.findTour();
        model.addAttribute("tours", tours);
        return "/manage-tour";
    }

}

