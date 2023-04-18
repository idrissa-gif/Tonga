package com.visitafrica.tongaclient.repository;


import com.visitafrica.tongaclient.model.Operator;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface OperatorRepository extends JpaRepository<Operator, Long> {
    @Query("select o from Operator o where o.name = ?1")
    Operator findByName(String name);
    // You can add custom methods here for querying the Operator entity
}
