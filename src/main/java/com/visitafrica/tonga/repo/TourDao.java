package com.visitafrica.tonga.repo;

import com.visitafrica.tonga.model.Tour;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface TourDao  {
    public List<Tour> tourList();

}
