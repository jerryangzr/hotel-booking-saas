package com.hotelbooking.model;
import javax.persistence.*;

@Entity
@Table(name = "roles")
public class Role {
    //ROLE ID PRIMARY KEY
    @Id
    @Column(name = "role_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;
    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    // remaining getters and setters
}