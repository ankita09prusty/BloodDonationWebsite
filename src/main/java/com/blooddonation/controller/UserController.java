package com.blooddonation.controller;

import com.blooddonation.entity.User;
import com.blooddonation.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String showHomePage() {
        return "index"; // This should match "index.jsp" in WEB-INF/jsp
    }

    @GetMapping("/register")
    public String showRegisterPage() {
        return "register"; // Matches WEB-INF/jsp/register.jsp
    }

    @PostMapping("/registerUser")
    public String registerUser(@ModelAttribute User user) {
        userService.registerUser(user);
        return "redirect:/signin"; // Redirect to sign-in page after successful registration
    }

    @GetMapping("/signin")
    public String showLoginForm() {
        return "signin";
    }

    @PostMapping("/signin")
    public String loginUser(@ModelAttribute User user, Model model) {
        User authenticatedUser = userService.loginUser(user.getEmail(), user.getPassword());
        if (authenticatedUser != null) {
            if (authenticatedUser.getRole().equalsIgnoreCase("DONOR")) {
                return "redirect:/donor";
            } else {
                return "redirect:/receiver";
            }
        } else {
            model.addAttribute("error", "Invalid email or password");
            return "Signin";
        }
    }
    @GetMapping("/activity")
    public String showActivityPage() {
        return "activity"; // This will return WEB-INF/jsp/activity.jsp
    }
    @GetMapping("/blog")
    public String showBlogPage() {
        return "blog"; // No need to add .jsp, Spring Boot automatically looks in WEB-INF/jsp/
    }
    @GetMapping("/service")
    public String showServicePage() {
        return "service"; // No need to add .jsp, Spring Boot automatically looks in WEB-INF/jsp/
    }
    @GetMapping("/contact")
    public String showContactPage() {
        return "contact"; // No need to add .jsp, Spring Boot automatically looks in WEB-INF/jsp/
    }
    @GetMapping("/about")
    public String showAboutPage() {
        return "about"; // Refers to about.jsp in WEB-INF/jsp/
    }



}
