package com.visitafrica.tongaclient.service;

import com.visitafrica.tongaclient.model.Tour;
import com.visitafrica.tongaclient.repository.TourRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TourService {
    @Autowired
    private TourRepository tourRepository;
    public List<Tour> findTour()
    {
        return tourRepository.findAll();
    }

}

