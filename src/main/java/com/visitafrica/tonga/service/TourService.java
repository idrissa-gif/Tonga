package com.visitafrica.tonga.service;

import com.visitafrica.tonga.model.Tour;
import com.visitafrica.tonga.repository.TourRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TourService {
    @Autowired
    private TourRepository tourRepository;
    public void saveTour(Tour tour)
    {
        tourRepository.save(tour);
    }

    public List<Tour> findTours()
    {
        return tourRepository.findAll();
    }
    public void Delete(Tour tour){tourRepository.delete(tour);}
    public Tour findTourById(Long id){
        return tourRepository.findById(id).get();
    }


    public void updateTour(Tour tour) {
        tourRepository.updateTour(tour.getId(), tour.getTour_name(), tour.getDescription(),tour.getTour_operator(),tour.getCountries(),tour.getPrices(),tour.getRate(),tour.getImage1(),tour.getImage2(),tour.getImage3());
    }

    public long getTourCount() {
        return tourRepository.count();
    }
}

