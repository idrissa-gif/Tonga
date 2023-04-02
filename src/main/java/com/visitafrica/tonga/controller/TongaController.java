package com.visitafrica.tonga.controller;

import com.visitafrica.tonga.model.Tour;
import com.visitafrica.tonga.services.LoginService;
import com.visitafrica.tonga.services.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;


@Controller
public class TongaController {
    @Autowired
    private LoginService loginService;
    @Autowired
    private TourService tourService;

    @RequestMapping({"/", "/login"})
    public String login() {
        return "login";
    }


    @GetMapping("/dashboard")
    public ModelAndView dashboard(ModelAndView model) {
        model.setViewName("/dashboard");
        return model;
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

