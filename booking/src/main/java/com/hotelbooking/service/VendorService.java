package com.hotelbooking.service;

import com.hotelbooking.message.request.VendorForm;
import com.hotelbooking.model.Vendor;
import com.hotelbooking.repository.VendorRepositoty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class VendorService {
    @Autowired
    VendorRepositoty vendorRepositoty;

    public String createVendor(VendorForm vendor){
        System.out.println("createVendor()");
        if(vendorRepositoty.existsByCompany(vendor.getCompany())){
            return "Failed to add, vendor with this name already exist!";
        }

        if(vendorRepositoty.existsByEmail(vendor.getEmail())){
            return "Failed to add, this vendor's email already exist!";
        }

        Vendor vendorData = new Vendor(vendor.getCompany(), vendor.getEmail());
        vendorRepositoty.save(vendorData);
        System.out.println("Vendor Added!");
        return "Vendor Added!";
    }

    public List<Vendor> getVendors() {
        List<Vendor> vendor = new ArrayList<>();
        vendorRepositoty.findAll()
                .forEach(vendor::add);
        return vendor;
    }
}
