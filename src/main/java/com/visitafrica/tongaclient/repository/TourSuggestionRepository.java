package com.visitafrica.tongaclient.repository;

import com.visitafrica.tongaclient.model.TourSuggestion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TourSuggestionRepository extends JpaRepository<TourSuggestion, Long> {
}
