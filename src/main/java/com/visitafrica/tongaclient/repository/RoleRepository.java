package com.visitafrica.tongaclient.repository;

import com.visitafrica.tongaclient.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;


public interface RoleRepository extends JpaRepository<Role, Long> {

    Role findByName(String name);
}
