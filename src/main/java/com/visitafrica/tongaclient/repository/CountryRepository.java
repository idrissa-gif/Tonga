package com.visitafrica.tongaclient.repository;

import com.visitafrica.tongaclient.model.Country;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CountryRepository extends JpaRepository<Country, Long> {
    // Define any additional custom database operations here

}
