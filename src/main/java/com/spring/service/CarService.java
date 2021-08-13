package com.spring.service;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.spring.entities.Car;
import com.spring.entities.User;
import com.spring.repo.CarRepository;
import com.spring.repo.UserRepository;
import com.spring.repo.roleRepo;

@Service
@Transactional
public class CarService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private CarRepository carRepository;

	@Autowired
	private roleRepo roleRepo;

	public User saveUser(User user) {
		User dbUser = user;
		if (user.getId() > 0) {
			Optional<User> tmpUser = userRepository.findById(user.getId());
			if (tmpUser.isPresent()) {
				dbUser = tmpUser.get();
				dbUser.setName(user.getName());
				dbUser.setEmail(user.getEmail());
				dbUser.setPhone_number(user.getPhone_number());
				dbUser.setAddress(user.getAddress());
				dbUser.setUsername(user.getUsername());
				dbUser.setPassword(user.getPassword());
			}

		}
		User savedStore = userRepository.save(dbUser);
		return savedStore;

	}

	public User regRole(User users) {
		users.setRoles(Arrays.asList(roleRepo.findByName("USER")));
		return userRepository.save(users);
	}

	public User retrieve(int id) {
		return userRepository.findById(id).get();
	}

	public User findByUsername(String username) {

		return userRepository.findByUsername(username);

	}

	public User findUserByEmail(String email) {

		return userRepository.findUserByEmail(email);
	}

	public List<User> listAllUser() {

		return userRepository.findAll();
	}

	public void deleteU(int id) {
		userRepository.deleteById(id);

	}

	// Car Part

	public Car saveCar(Car cr) {
		Car dbCar = cr;
		if (cr.getId() > 0) {
			Optional<Car> tmpCar = carRepository.findById(cr.getId());
			if (tmpCar.isPresent()) {
				dbCar = tmpCar.get();
				dbCar.setMake(cr.getMake());
				dbCar.setModel(cr.getModel());
				dbCar.setYear(cr.getYear());
				dbCar.setFuelType(cr.getFuelType());
				dbCar.setRegistrationNo(cr.getRegistrationNo());
				dbCar.setPrice(cr.getPrice());
			}

		}
		Car savedCar = carRepository.save(dbCar);
		return savedCar;

	}

	public List<Car> search(String keyword) {

		return carRepository.search(keyword);

	}

	public List<Car> listAll() {

		return (List<Car>) carRepository.findAll();
	}

	public void deleteC(int id) {
		carRepository.deleteById(id);

	}

	public Optional<Car> findByUserId(int id) {

		return carRepository.findById(id);
	}

}
