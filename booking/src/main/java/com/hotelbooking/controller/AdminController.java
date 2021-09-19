package com.hotelbooking.controller;

import com.hotelbooking.message.request.VendorForm;
import com.hotelbooking.service.VendorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("admin")
public class AdminController {

    @Autowired
    public VendorService vendorService;

    //REQUEST PATH: /admin
    @RequestMapping(value = "/dashboard")
    public String dashboard(){
        return "admin/dashboard";
    }

    //REQUEST PATH: /admin/vendor
    @RequestMapping(value = "/vendor")
    public String vendor(Model model){
        model.addAttribute("vendors", vendorService.getVendors());
        return "admin/vendor";
    }

    //REQUEST PATH: /admin/booking
    @RequestMapping(value = "/booking")
    public String offer(){
        return "admin/booking";
    }

    //REQUEST PATH: /complain/offer
    @RequestMapping(value = "/complain")
    public String complain(){
        return "admin/complain";
    }


    //REQUEST PATH: /admin/offer
    @RequestMapping(value = "/contact")
    public String contact(){
        return "admin/contact";
    }

    //CREATE VENDOR
//    @GetMapping("/createvendor")
//    public String createvendor(@RequestParam String company, @RequestParam String email, Model model) {
//        vendorService.createVendor(new VendorForm(company, email));
//        System.out.println(company);
//        model.addAttribute("vendor", new VendorForm());
//        return "admin/vendor";
//    }

    //CREATE VENDOR
    @PostMapping("/createvendor")
    public String createvendorSubmit(@ModelAttribute VendorForm vendor, Model model) {
        try {
            System.out.println("------------------------>/create");
            String resp = vendorService.createVendor(vendor);
            model.addAttribute("message", resp);
            return "admin/vendor";
        }catch(Exception e){
            System.out.println("------------------------>/fail");
            model.addAttribute("message", vendor.getCompany()+" is failed to add");
            return "admin/vendor";
        }
    }
}
