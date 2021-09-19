package com.hotelbooking.repository;

import com.hotelbooking.model.Vendor;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface VendorRepositoty extends CrudRepository<Vendor, Long> {
    Optional<Vendor> findByCompany(Vendor name);
    Optional<Vendor> findByEmail(Vendor email);
    List<Vendor> findByCategory(Vendor category);

    boolean existsByCompany(String company);

    boolean existsByEmail(String email);
}

