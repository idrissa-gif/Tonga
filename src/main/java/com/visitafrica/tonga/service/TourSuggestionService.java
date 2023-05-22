package com.visitafrica.tonga.service;

import com.visitafrica.tonga.model.TourSuggestion;
import com.visitafrica.tonga.repository.TourSuggestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TourSuggestionService {
    @Autowired
    private TourSuggestionRepository tourSuggestionRepository;

    public List<TourSuggestion> getSuggestedPlaces() {
        return tourSuggestionRepository.findAll();
    }
}
