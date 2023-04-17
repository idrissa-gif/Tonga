package com.visitafrica.tongaclient.service;



import com.visitafrica.tongaclient.model.Country;
import com.visitafrica.tongaclient.repository.CountryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CountryService {

    @Autowired
    private CountryRepository countryRepository;


    public List<Country> findCountries()
    {
        return countryRepository.findAll();
    }
    public Country getCountryById(Long countryId){
        Optional<Country> countryOptional = countryRepository.findById(countryId);
        if (countryOptional.isPresent()) {
            return countryOptional.get();
        } else {
            // Handle case where country with given ID is not found
            throw new RuntimeException("Country not found with ID: " + countryId);
        }
    }
}
