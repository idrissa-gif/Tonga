package com.visitafrica.tonga.repository;

import com.visitafrica.tonga.model.Operator;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

public interface OperatorRepository extends JpaRepository<Operator, Long> {
    // You can add custom methods here for querying the Operator entity
    @Modifying
    @Query("UPDATE Operator o SET o.name = :name, o.tours = :tours, o.countries = :countries, o.rate = :rate, o.image = :image, o.description = :description WHERE o.id = :id")
    @Transactional
    void updateOperator(@Param("id") Long id, @Param("name") String name, @Param("tours") String tours, @Param("countries") String countries, @Param("rate") Integer rate, @Param("image") String image, @Param("description") String description);

}
