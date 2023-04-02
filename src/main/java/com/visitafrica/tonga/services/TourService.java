package com.visitafrica.tonga.services;

import com.visitafrica.tonga.model.Tour;
import com.visitafrica.tonga.repo.TourDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TourService {
    @Autowired
    private TourDao tourRepository;
    public void saveTour(Tour tour)
    {
        tourRepository.save(tour);
    }
    public List<Tour> findTour()
    {
        return tourRepository.findAll();
    }
}

