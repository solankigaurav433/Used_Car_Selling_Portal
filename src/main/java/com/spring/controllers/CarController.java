package com.spring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.spring.entities.Car;
import com.spring.entities.User;
import com.spring.service.CarService;

@Controller
public class CarController {

	@Autowired
	CarService service;

	@RequestMapping("/postCar")
	public String newUser(@RequestParam int id, Model model) {
		Car cr = new Car();
		cr.setUser_id(id);
		model.addAttribute("car", cr);
		System.out.println("posting car");
		return "PostCar";
	}

	@PostMapping("/car")
	public String saveCar(@ModelAttribute("car") Car cr) {
		service.saveCar(cr);
		return "viewCarByUser";

	}

	@GetMapping("/Home")
	public String viewCarByUser(@ModelAttribute("car") String email, Model model) {

		String username = null;

		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			username = ((UserDetails) principal).getUsername();
		} else {
			username = principal.toString();
		}
		System.out.println(username);
		User us = service.findByUsername(username);
		model.addAttribute("user", us);
		return "dashboard";

	}

}
