package com.spring.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spring.entities.Role;



public interface roleRepo extends JpaRepository<Role, Long> {

	
	Role findByName(String name);
}	


