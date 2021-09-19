package com.hotelbooking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("vendor")
public class VendorController {

    //REQUEST PATH: /vendor/dashboard
    @RequestMapping(value = "/dashboard")
    public String dashboard(){
        return "vendor/dashboard";
    }


    //REQUEST PATH: /vendor/contact
    @RequestMapping(value = "/contact")
    public String contact(){
        return "vendor/contact";
    }

    //REQUEST PATH: /vendor/complain
    @RequestMapping(value = "/complain")
    public String complain(){
        return "vendor/complain";
    }

    //REQUEST PATH: /vendor/booking
    @RequestMapping(value = "/booking")
    public String viewing(){
        return "vendor/booking";
    }

    //REQUEST PATH: /vendor/properties
    @RequestMapping(value = "/properties")
    public String properties(){
        return "vendor/properties";
    }
}
