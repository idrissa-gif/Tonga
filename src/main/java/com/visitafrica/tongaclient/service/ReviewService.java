package com.visitafrica.tongaclient.service;

import com.visitafrica.tongaclient.model.Review;
import com.visitafrica.tongaclient.repository.ReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReviewService {
    @Autowired
    ReviewRepository reviewRepository;
    public void saveReview(Review review) {
        reviewRepository.save(review);
    }
    public List<Review> getReviewByTarget(String target)
    {
        return reviewRepository.getReviewByTarget(target);
    }

}
