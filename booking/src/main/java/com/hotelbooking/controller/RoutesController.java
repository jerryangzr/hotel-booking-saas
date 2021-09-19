package com.hotelbooking.controller;

import com.hotelbooking.message.request.SignUpForm;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class RoutesController {
    //LOGIN PAGE
//    @RequestMapping("/")
//    public String login() {
//        return "index";
//    }

    //URL MAPPING FOR CUSTOM LOGIN PAGE AND LOGOUT
    // FOR DISPLAYING THE LOGIN PAGE
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    //URL MAPPING FOR CUSTOM LOGIN PAGE AND LOGOUT
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(Model model) {
        SignUpForm signUpRequest = new SignUpForm();
        model.addAttribute("user", signUpRequest);
        return "register";
    }

//    @RequestMapping(value = "/#", method = RequestMethod.GET)
//    public String index() {
//        return "#";
//    }

    @RequestMapping(value = "/password", method = RequestMethod.GET)
    public String password(Model model) {
        return "password";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "logout";
    }

//    @RequestMapping(value = "", method = RequestMethod.GET)
//    public String error() {
//        return "error";
//    }
}
