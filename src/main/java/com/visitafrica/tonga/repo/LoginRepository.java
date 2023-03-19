package com.visitafrica.tonga.repo;

import com.visitafrica.tonga.model.Login;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface LoginRepository extends JpaRepository<Login,Long> {
    @Query("SELECT u FROM Login u WHERE u.email = ?1 and u.password = ?2")
    public Login findUsernameAndPassword(String email, String password);
}
