package com.visitafrica.tongaclient.service;

import com.visitafrica.tongaclient.repository.TourSuggestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TourSuggestionService {
    @Autowired
    private TourSuggestionRepository tourSuggestionRepository;
}
