package com.visitafrica.tongaclient.repository;

import com.visitafrica.tongaclient.model.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReviewRepository extends JpaRepository<Review,Long> {
    @Query("select r from Review r where LOWER(r.target) =LOWER(?1)")
    public List<Review> getReviewByTarget(String target);
}
