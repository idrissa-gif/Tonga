package com.visitafrica.tongaclient.repository;

import com.visitafrica.tongaclient.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}