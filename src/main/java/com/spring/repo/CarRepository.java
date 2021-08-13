package com.spring.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import com.spring.entities.Car;

public interface CarRepository extends JpaRepository<Car, Integer>{

	 @Query(value =
			  "SELECT c FROM Car c WHERE c.id LIKE '%' || :keyword || '%'" +" OR c.make LIKE '%' || :keyword || '%'" +
			  " OR c.model LIKE '%' || :keyword || '%'" +
			  " OR c.year LIKE '%' || :keyword || '%'" +" OR c.fuelType LIKE '%' || :keyword || '%'" +" OR c.registrationNo LIKE '%' || :keyword || '%'" +
			  " OR c.price LIKE '%' || :keyword || '%'")
			  public List<Car>
			  search(@Param("keyword") String keyword);
}
