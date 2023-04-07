package com.visitafrica.tonga.service;



import com.visitafrica.tonga.model.Country;
import com.visitafrica.tonga.repository.CountryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CountryService {

    @Autowired
    private CountryRepository countryRepository;

    public void addCountry(Country country) {
        countryRepository.save(country); // Save the country object to the database
    }
    public List<Country> findCountries()
    {
        return countryRepository.findAll();
    }


    public void deleteCountryById(Long id) {
        countryRepository.deleteById(id);
    }
}
