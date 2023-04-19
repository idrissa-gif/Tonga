package com.visitafrica.tongaclient.controller;

import com.visitafrica.tongaclient.model.*;
import com.visitafrica.tongaclient.security.OptionalLoginInterceptor;
import com.visitafrica.tongaclient.service.*;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.*;

@Controller
public class UserController {
    @Autowired
    private BookService bookingService;
    @Autowired
    private CountryService countryService;
    @Autowired
    private UserService userService;
    @Autowired
    private TourService tourService;
    @Autowired
    private OperatorService operatorService;
    @Autowired
    private HttpSession session;
    @Autowired
    private OptionalLoginInterceptor optionalLoginInterceptor;
    @Autowired
    private ReviewService reviewService;

    @GetMapping("/map")
    public String map() {
        return "maptest";
    }

    @GetMapping("/index")
    public String home() {
        return "login";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/login")
    public String signin(Model model,
                         @RequestParam("email") String email,
                         @RequestParam("password") String password) {

        if (email.equals(userService.getbyEmail(email).getEmail()) && BCrypt.checkpw(password, userService.getbyEmail(email).getPassword())) {
            optionalLoginInterceptor.addPermittedPath("/reviewtour");
            optionalLoginInterceptor.addPermittedPath("/explorecountry/{country}");
            model.addAttribute("user_email", email);
            List<Tour> tourList = tourService.findTours();
            model.addAttribute("tourList", tourList);
            return "home";
        } else {
            model.addAttribute("message", "Invalid email or password");
            return "login";
        }
    }


    @GetMapping({"/", "/welcome"})
    public String welcome(Model model) {
        List<Tour> tourList = tourService.findTours();
        model.addAttribute("tourList", tourList);
        return "home";
    }


    @GetMapping("/registration")
    public String showRegistrationForm(Model model) {
        // create model object to store form data
        User user = new User();
        model.addAttribute("user", user);
        return "registration";
    }

    // Register a new user
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult bindingResult, Model model, HttpSession session) {
        if (bindingResult.hasErrors()) {
            return "registration"; // Return to registration page if validation fails
        }

        // Check if the username or email already exists
        if (userService.existsByUsername(user.getUsername()) || userService.existsByEmail(user.getEmail())) {
            model.addAttribute("errorMessage", "Username or Email already exists");
            return "registration"; // Return to registration page with error message
        }

        // Encrypt the password before saving
        String encryptedPassword = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
        user.setPassword(encryptedPassword);


        // Save the user to the database
        userService.saveUser(user);


        // Redirect to login page after successful registration
        return "redirect:/login";
    }

    @GetMapping("/country")

    public String getCountries(Model model) {
        List<Country> countryList = countryService.findCountries(); // Replace with your actual service method to retrieve countries
        model.addAttribute("countryList", countryList);
        return "country"; // Replace with the name of the view that displays the list of countries
    }

    @GetMapping("/DetailTourView/{id}")
    public String getDetailTourView(Model model, @PathVariable("id") Long id) {
        Optional<Tour> tour= tourService.findTour(id);
        model.addAttribute("tour", tour.get());

        Operator operator = operatorService.findByName(tour.get().getTour_operator());
        model.addAttribute("operator",operator);

        return "exploretour";
    }

    @GetMapping("/reviewtour")
    public String reviewSave(@RequestParam("rating_data") int ratingData,
                             @RequestParam("user_email") String userEmail,
                             @RequestParam("user_review") String userReview,
                             @RequestParam("target") String target,
                             HttpServletRequest request) throws Exception {

        // Access the 'target' parameter value
        System.out.println("Target: " + target);

        // Add your business logic here, e.g., create a Review object and save/update it
         User user = userService.getbyEmail(userEmail);
         Review review = new Review();
         review.setRate(ratingData);
         review.setReviewer_name(user.getUsername());
         review.setMessage(userReview);
         review.setTarget(target);
         reviewService.saveReview(review);

        // Add any additional logic for sending updates, if needed
        return "/login";
    }

    @GetMapping("/explorecountry/{country}")
    public String exploirecountry(Model model, @PathVariable("country") String name)
    {
        List<Tour> tourList = tourService.findToursByCountryName(name);
        model.addAttribute("tourList", tourList);
        return "tour";
    }

    @PostMapping("/submitRating")
    public String SaveReview(Review review,BindingResult bindingResult,Model model) {
        // Perform booking logic
        if (bindingResult.hasErrors()) {
            model.addAttribute("message", " Failed to review !");
            System.out.println("Error: " + bindingResult.toString());
            return "/home";
        }
        reviewService.saveReview(review);
        System.out.println(review.getReviewer_name());

        // Add booking object to model for displaying confirmation
        model.addAttribute("reviewing", review);

        // Return the view for booking confirmation
        return "home";
    }
    @GetMapping("/getRating/{id}")
    @ResponseBody
    public Map<String, Object> getRatingData(@PathVariable ("id") String id) {
        Map<String, Object> data = new HashMap<>();
        List<Map<String, Object>> reviewContent = new ArrayList<>();

        // Get request data
        String target = id;

        // Perform database query
        // (You can replace this with your own logic for database connection and query execution)
        // ...
        List<Review> reviews = reviewService.getReviewByTarget(target);
        // Build response data
        double averageRating = 0;
        int totalReview = reviews.size();
        int fiveStarReview = 0;
        int fourStarReview = 0;
        int threeStarReview = 0;
        int twoStarReview = 0;
        int oneStarReview = 0;
        int totalUserRating = 0;

        for(int i=0 ; i<reviews.size() ; i++)
        {
            if(reviews.get(i).getRate()==1) oneStarReview++;
            else if(reviews.get(i).getRate()==2) twoStarReview++;
            else if(reviews.get(i).getRate()==3) threeStarReview++;
            else if(reviews.get(i).getRate()==4) fourStarReview++;
            else if(reviews.get(i).getRate()==5) fiveStarReview++;

            totalUserRating+=reviews.get(i).getRate();
        }

        // Populate reviewContent list with retrieved data
        // ...

        // Calculate average rating
        if (totalReview > 0) {
            averageRating = (double) totalUserRating / totalReview;
        }

        data.put("average_rating", String.format("%.1f", averageRating));
        data.put("total_review", totalReview);
        data.put("five_star_review", fiveStarReview);
        data.put("four_star_review", fourStarReview);
        data.put("three_star_review", threeStarReview);
        data.put("two_star_review", twoStarReview);
        data.put("one_star_review", oneStarReview);
        data.put("review_data", reviewContent);

        return data;
    }

    @PostMapping("/bookTour/{id}")
    @ResponseBody
    public Book bookTour(Book book,BindingResult bindingResult,Model model,@PathVariable("id") long id) {
        // Perform booking logic
        if (bindingResult.hasErrors()) {
            model.addAttribute("message", " Failed to book the tour!");
            return book;
        }
        bookingService.save(book);

        // Add booking object to model for displaying confirmation
        model.addAttribute("booking", book);

        // Return the view for booking confirmation
        return book;
    }
}

