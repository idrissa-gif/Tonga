package com.visitafrica.tongaclient.controller;

import com.visitafrica.tongaclient.model.User;
import com.visitafrica.tongaclient.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;
    @GetMapping("/index")
    public String home(){
        return "login";
    }

    @GetMapping("/login")
    public String login()
    {
        return "login";
    }

    @PostMapping("/login")

    public String signin(Model model) {
        return "dashboard";
    }

    @GetMapping({"/","/welcome"})
    public String welcome(Model model)
    {
        return "dashboard";
    }


    @GetMapping("/registration")
    public String showRegistrationForm(Model model){
        // create model object to store form data
        User user = new User();
        model.addAttribute("user", user);
        return "registration";
    }

    // Register a new user
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return "registration"; // Return to registration page if validation fails
        }

        // Check if the username or email already exists
        if (userService.existsByUsername(user.getUsername()) || userService.existsByEmail(user.getEmail())) {
            model.addAttribute("errorMessage", "Username or Email already exists");
            return "registration"; // Return to registration page with error message
        }

        // Encrypt the password before saving
        String encryptedPassword = passwordEncoder.encode(user.getPassword());
        user.setPassword(encryptedPassword);

        // Save the user to the database
        userService.saveUser(user);
        System.out.println(user.getEmail()+ " " +user.getAddress());
        System.out.println(user);

        // Redirect to login page after successful registration
        return "redirect:/login";
    }

}

