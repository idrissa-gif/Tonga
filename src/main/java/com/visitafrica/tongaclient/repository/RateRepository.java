package com.visitafrica.tongaclient.repository;

import com.visitafrica.tongaclient.model.Rate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository

public interface RateRepository extends JpaRepository<Rate,Long> {
    @Query("select r from Rate r where r.id = 1")
    Rate find();
}
