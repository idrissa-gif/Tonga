package com.visitafrica.tonga.repo;

import com.visitafrica.tonga.model.Tour;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface TourDao extends JpaRepository<Tour,Long> {
    List<Tour> findAllBy();
}