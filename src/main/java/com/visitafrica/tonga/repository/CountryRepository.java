package com.visitafrica.tonga.repository;

import com.visitafrica.tonga.model.Country;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CountryRepository extends JpaRepository<Country, String> {
    // Define any additional custom database operations here
}
