package com.visitafrica.tonga.repo;

import com.visitafrica.tonga.model.Login;
import com.visitafrica.tonga.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface LoginRepository extends JpaRepository<Login,Long> {
 Login findByEmail(String email);
}
