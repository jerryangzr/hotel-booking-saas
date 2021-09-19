package com.hotelbooking.controller;

import com.hotelbooking.message.request.SignUpForm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("customer")
public class CustomerController {

    //REQUEST PATH: /customer/dashboard
    @RequestMapping(value = "/dashboard")
    public String dashboard(){
        return "customer/dashboard";
    }

    //REQUEST PATH: /customer/details
    @RequestMapping(value = "/upgrade")
    public String upgrade(){
        return "customer/upgrade";
    }


    //REQUEST PATH: /customer/details
    @RequestMapping(value = "/details")
    public String details(){
        return "customer/details";
    }

    //REQUEST PATH: /customer/booking
    @RequestMapping(value = "/booking")
    public String booking(){
        return "customer/booking";
    }

    //REQUEST PATH: /customer/details
    @RequestMapping(value = "/complain")
    public String complain(){
        return "customer/complain";
    }

    //REQUEST PATH: /customer/viewing
    @RequestMapping(value = "/contact")
    public String contact(){
        return "customer/contact";
    }

    //USER REGISTRATION
    //    @RequestMapping(value = "/register")
    @PostMapping("/register")
    public String showRegistrationForm(@ModelAttribute SignUpForm signup) {
//        System.out.println("wer are here");
        //SignUpForm signUpRequest = new SignUpForm();
        //model.addAttribute("user", signUpRequest);
        return "register";
    }
}
