package com.visitafrica.tongaclient.service;

import com.visitafrica.tongaclient.model.Tour;
import com.visitafrica.tongaclient.repository.TourRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TourService {
    @Autowired
    private TourRepository tourRepository;
    public List<Tour> findTours()
    {
        return tourRepository.findAll();
    }
    public Optional<Tour> findTour(Long id)
    {
        return tourRepository.findById(id);
    }
    public List<Tour> findToursByCountryName(String name){
        return tourRepository.findByCountry(name);
    }
}

