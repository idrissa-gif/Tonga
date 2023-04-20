package com.visitafrica.tonga.repository;

import com.visitafrica.tonga.model.Tour;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
public interface TourRepository extends JpaRepository<Tour,Long> {



    @Override
    void delete(Tour tour);
    @Modifying
    @Query("UPDATE Tour t SET t.tour_name = :tourName, t.description = :description, t.tour_operator = :tourOperator, t.countries = :countries, t.prices = :prices, t.rate = :rate, t.image1 = :image1, t.image2 = :image2, t.image3 = :image3 WHERE t.id = :id")
    @Transactional
    void updateTour(@Param("id") Long id, @Param("tourName") String tourName, @Param("description") String description, @Param("tourOperator") String tourOperator, @Param("countries") String countries, @Param("prices") String prices, @Param("rate") Integer rate, @Param("image1") String image1, @Param("image2") String image2, @Param("image3") String image3);

}
