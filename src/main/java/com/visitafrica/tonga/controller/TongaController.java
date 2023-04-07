package com.visitafrica.tonga.controller;

import com.visitafrica.tonga.model.Country;
import com.visitafrica.tonga.model.Tour;
import com.visitafrica.tonga.service.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.visitafrica.tonga.service.CountryService;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import javax.validation.Valid; // Import the Valid annotation
import java.util.List;


@Controller
public class TongaController {

    @Autowired
    private CountryService countryService;

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

    /** START COUNTRY FUNCTIONS **/
    @GetMapping("add-country")
    public String addCountry(Model model)
    {
        model.addAttribute("country",new Country());
        return "/Country/add-country";
    }

    @GetMapping("/addCountry")
    public String addCountry(@Valid @ModelAttribute("country") Country country,
                             BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return "/Country/add-country"; // Return back to the form if validation fails
        }

        System.out.println(country.getName());
        countryService.addCountry(country); // Call the service to add the country to the database

        model.addAttribute("message", "Country added successfully!"); // Add success message to model
        return "/Country/add-country"; // Return to a success page
    }

    @GetMapping("/manage-country")
    public String manageCountry(Model model){
        List<Country> tours = countryService.findCountries();
        model.addAttribute("countries", tours);
        return "/Country/manage-country";
    }

    @DeleteMapping("/deleteCountry/{id}")
    public String deleteCountry(@PathVariable("id") Long id) {
        // Code to delete the country with the given ID
        // You can use a service or repository to handle the deletion logic
        countryService.deleteCountryById(id);
        return "redirect:/countryList"; // Redirect to the country list page after deletion
    }

    /** END OF COUNTRY FUNCTIONS **/

    /**START OF TOUR FUNCTIONS**/
    @GetMapping("/add-tour")
    public String showAddTour(Model model) {
        model.addAttribute("tour", new Tour());
        return "/Tour/add-tour";
    }


    @PostMapping("/add-tour")
    public String addTour(@ModelAttribute("tour") Tour tour) {
        tourService.saveTour(tour);
        return "/Tour/add-tour";
    }
    @GetMapping("/delete-tour")
    public String RemoveTour(@RequestParam("tour_id")int tour_id,Model model)
    {
        List<Tour> tourList = tourService.findTour();
        for (int i = 0; i < tourList.size(); i++) {
            System.out.println(tourList.get(i).getCountries());
            if(tour_id==tourList.get(i).getId()){
                tourService.Delete(tourList.get(i));
            }
        }

        return editTourDetail(model);
    }


    @GetMapping("/manage-tour")
    public String editTourDetail(Model model)
    {
        List<Tour> tours = tourService.findTour();
        model.addAttribute("tours", tours);
        return "/Tour/manage-tour";
    }

    /** END OF COUNTRY FUNCTIONS **/
}

