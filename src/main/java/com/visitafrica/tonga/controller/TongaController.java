package com.visitafrica.tonga.controller;

import com.visitafrica.tonga.model.*;
import com.visitafrica.tonga.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid; // Import the Valid annotation

import java.util.List;


@Controller
public class TongaController {

    @Autowired
    private CountryService countryService;

    @Autowired
    private TourService tourService;

    @Autowired
    private OperatorService operatorService;

    @Autowired
    private ReviewService reviewService;
    @Autowired
    private BookService bookService;

    @GetMapping("/login")
    public String login(Model model, String error, String logout) {

        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "/login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String username, @RequestParam String password, Model model, HttpServletRequest request) {
        // Authenticate user and set session attribute
        HttpSession session = request.getSession();
        session.setAttribute("user", username);
        return "/dashboard";
    }
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        // Invalidate session and redirect to login page
        session.invalidate();
        return "redirect:/login";
    }

    @GetMapping({"/", "/welcome","/dashboard"})
    public String welcome(Model model) {
        long totalcountry = countryService.getCountryCount();
        long totaltour = tourService.getTourCount();
        long totaloperator = operatorService.getOperatorCount();
        long totalreview = reviewService.getReviewCount();
        long totalbook = bookService.getBookCount();

        model.addAttribute("totalcountry",totalcountry);
        model.addAttribute("totaltour",totaltour);
        model.addAttribute("totaloperator",totaloperator);
        model.addAttribute("totalreview",totalreview);
        model.addAttribute("totalbook",totalbook);
        System.out.println(totalcountry+    " "+totaloperator+ " "+totalreview  );
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
            model.addAttribute("message", " Failed to add Country!");
            return "/Country/add-country"; // Return back to the form if validation fails
        }
        country.setOperators(0);
        country.setTours(0);

        countryService.addCountry(country); // Call the service to add the country to the database

        model.addAttribute("message", "Country added successfully!"); // Add success message to model
        return "/Country/add-country"; // Return to a success page
    }

    @GetMapping("/manage-country")
    public String manageCountry(Model model){
        List<Country> countryList = countryService.findCountries();
        model.addAttribute("countries", countryList);
        return "/Country/manage-country";
    }

    @GetMapping("/deleteCountry/{id}")
    public String deleteCountry(@PathVariable("id") Long id) {
        countryService.deleteCountryById(id);

        return "redirect:/manage-country"; // Redirect to the country list page after deletion
    }

    @GetMapping("/editCountry/{id}")
    public String editCountry(@PathVariable("id") Long countryId, Model model) {
        // Retrieve the country information by ID from the service
        Country country = countryService.getCountryById(countryId);

        // Add the country object to the model to be passed to the view
        model.addAttribute("country", country);

        // Return the view name for the edit country page
        return "/Country/edit-country";
    }
    @GetMapping("/updateCountry")
    public String updateCountry(@ModelAttribute("country") Country country, Model model) {
        // Call the service to update the country in the database
        countryService.updateCountry(country);

        model.addAttribute("message", "Country updated successfully!"); // Add success message to model
        return "/Country/edit-country"; // Return to a success page
    }

    /** END OF COUNTRY FUNCTIONS **/

    /** START OF OPERATOR FUNCTIONS **/
    @RequestMapping("/addOperator")
    public String addOperatorForm(Model model) {
        model.addAttribute("operator",new Country());
        List<Country> countryList = countryService.findCountries();
        model.addAttribute("countries",countryList);
        return "/Operator/add-operator"; // Return the name of the JSP form file
    }

    @GetMapping("/saveOperator")
    public String saveOperator(@Valid @ModelAttribute("operator") Operator operator,Model model,BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            model.addAttribute("message", " Failed to add Country!");
            return "/Operator/add-operator"; // Return back to the form if validation fails
        }
        operator.setTours("0");
        operatorService.saveOperator(operator); // Call the service to save the Operator object

        model.addAttribute("message", "Operator added successfully!"); // Add success message to model
        return "Operator/add-operator"; // Redirect to the addOperator form after saving
    }

    @GetMapping("/manage-operator")
    public String manageOperator(Model model)
    {
        List<Operator> operatorList = operatorService.findOperators();
        List<Country> countryList = countryService.findCountries();
        model.addAttribute("countries",countryList);

        model.addAttribute("operators", operatorList);
        return "/Operator/manage-operator";
    }
    @GetMapping("/editOperator")
    public String editOperator(@RequestParam("id") Long operator_id, Model model) {
        // Retrieve the operator information by ID from the service
        Operator operator = operatorService.getOperatorById(operator_id);
        List<Country> countryList = countryService.findCountries();
        model.addAttribute("countries",countryList);
        // Add the operator object to the model to be passed to the view

        model.addAttribute("operator", operator);

        // Return the view name for the edit operator page
        return "/Operator/edit-operator";
    }
    @GetMapping("/UpdateOperator")
    public String updateOperator(@ModelAttribute("operator") Operator operator, Model model) {
        // Call the service to update the operator in the database
        operatorService.updateOperator(operator);
        List<Country> countryList = countryService.findCountries();
        model.addAttribute("countries",countryList);
        model.addAttribute("operator", operator);
        model.addAttribute("message", "Operator updated successfully!"); // Add success message to model
        return "/Operator/edit-operator"; // Redirect to the addOperator form after saving
    }
    /** END OF OPERATOR FUNCTIONS **/

    /**START OF TOUR FUNCTIONS**/
    @RequestMapping("/showaddform")

    public String showTourForm(Model model) {
        List<Operator> operatorList = operatorService.findOperators();
        List<Country> countryList = countryService.findCountries();
        model.addAttribute("operators",operatorList);
        model.addAttribute("countries",countryList);
        return "/Tour/add-tour";
    }

    @GetMapping("/addTour")
    public String addTour(Tour tour,BindingResult bindingResult,Model model) {

        if (bindingResult.hasErrors()) {
            model.addAttribute("message", " Failed to add Tour!");
            return "/Tour/add-tour"; // Return back to the form if validation fails
        }
        System.out.println(tour.getTour_operator());
        tourService.saveTour(tour); // Call the service to save the Tour object

        model.addAttribute("message", "Tour added successfully!"); // Add success message to model
        return "/Tour/add-tour";
    }
    @GetMapping("/updateTour")
    public String updateTour(@ModelAttribute("tour") Tour tour, Model model) {
        tourService.updateTour(tour);

        model.addAttribute("message", "Tour updated successfully!"); // Add success message to model
        editTourDetail(model);
        return "/Tour/manage-tour";
    }
    @GetMapping("/deleteTour")
    public String RemoveTour(@RequestParam("tour_id")int tour_id,Model model)
    {
        List<Tour> tourList = tourService.findTours();
        for (int i = 0; i < tourList.size(); i++) {
            if(tour_id==tourList.get(i).getId()){
                tourService.Delete(tourList.get(i));
            }
        }

        return editTourDetail(model);
    }


    @GetMapping("/manage-tour")
    public String editTourDetail(Model model)
    {
        List<Tour> tours = tourService.findTours();
        model.addAttribute("tours", tours);
        return "/Tour/manage-tour";
    }

    @GetMapping("/editTour")
    public String editTour(@RequestParam("tour_id") long tour_id,Model model){
        Tour tour = tourService.findTourById(tour_id);
        List<Operator> operatorList = operatorService.findOperators();
        List<Country> countryList = countryService.findCountries();
        model.addAttribute("operators",operatorList);
        model.addAttribute("countries",countryList);
        model.addAttribute("tour", tour);
        return "/Tour/edit-tour-detail";
    }

    /** END OF TOUR FUNCTIONS **/




    /** START OF REVIEW FUNCTIONS **/
    @GetMapping("/reviews")
    public String displayReviews(Model model) {
        List<Review> reviews = reviewService.getAllReviews();
        model.addAttribute("reviews", reviews);
        return "reviews";
    }
    /** END OF REVIEW FUNCTIONS **/

/**  START OF BOOK FUNCTIONS**/
    @GetMapping("/books")
    public String displayBook(Model model) {
        List<Book> books = bookService.getBooks();
        model.addAttribute("books", books);

        return "books";
    }
/**  END OF BOOK FUNCTIONS**/

//@ExceptionHandler(Exception.class)
//public String handleException(Exception ex, HttpServletRequest request) {
//    String url = request.getRequestURI();
//    return "redirect:books";
//}


}

