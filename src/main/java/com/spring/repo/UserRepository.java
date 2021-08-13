package com.spring.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spring.entities.User;

public interface UserRepository extends JpaRepository<User, Integer> {

	User findByUsername(String username);

	User findUserByEmail(String email);

	

}
