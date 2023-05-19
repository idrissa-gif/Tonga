package com.visitafrica.tongaclient.repository;

import com.visitafrica.tongaclient.model.Tour;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface TourRepository extends JpaRepository<Tour,Long> {

    @Query("SELECT t FROM Tour t ORDER BY RAND()")
    List<Tour> findAll();

    @Query("SELECT t FROM Tour t WHERE LOWER(t.country) = LOWER(?1)")
    List<Tour> findByCountry(String name);
    @Query("SELECT t FROM Tour t WHERE LOWER(t.tour_name) LIKE CONCAT('%', LOWER(?1), '%') OR LOWER(t.country) LIKE CONCAT('%', LOWER(?1), '%') OR LOWER(t.tour_operator) LIKE CONCAT('%', LOWER(?1), '%')")
    List<Tour> findBySearch(String search);

}

