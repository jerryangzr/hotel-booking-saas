package com.hotelbooking.message.request;

public class VendorForm {
    private String company;
    private String email;

    public VendorForm(){}
    public VendorForm(String company, String email) {
        this.company = company;
        this.email = email;
    }

    public String getCompany() {
        return company;
    }

    public String getEmail() {
        return email;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
