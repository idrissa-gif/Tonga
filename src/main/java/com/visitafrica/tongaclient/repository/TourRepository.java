package com.visitafrica.tongaclient.repository;

import com.visitafrica.tongaclient.model.Tour;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface TourRepository extends JpaRepository<Tour,Long> {

}

