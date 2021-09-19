package com.hotelbooking.model;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

@Entity
public class Vendor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;

    @NotBlank
    @Column(name = "name")
    private String company;

    @NotBlank
    private String email;
    private String category;

    public Vendor(){}

    public Vendor(String company, String email, String category) {
        this.company = company;
        this.email = email;
        this.category = category;
    }

    public Vendor(String company, String email) {
        this.company = company;
        this.email = email;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return company;
    }

    public void setName(String name) {
        this.company = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
