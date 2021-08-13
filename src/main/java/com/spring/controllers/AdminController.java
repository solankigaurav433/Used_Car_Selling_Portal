package com.spring.controllers;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.spring.entities.Car;
import com.spring.entities.User;
import com.spring.service.CarService;

@Controller
public class AdminController {

	@Autowired
	CarService service;

	@RequestMapping("/viewCars")
	public ModelAndView admin() {
		List<Car> admin = service.listAll();
		ModelAndView mav = new ModelAndView("viewCars");
		Iterator<Car> iterator = admin.iterator();
		while (iterator.hasNext()) {
			System.out.println(iterator.next());
		}
		mav.addObject("admin", admin);
		return mav;
	}

	@RequestMapping("/viewUsers")
	public ModelAndView home() {
		List<User> admin = service.listAllUser();
		ModelAndView mav = new ModelAndView("viewUsers");
		Iterator<User> iterator = admin.iterator();
		while (iterator.hasNext()) {
			System.out.println(iterator.next());
		}
		mav.addObject("admin", admin);
		return mav;
	}

	@RequestMapping("/deleteC")
	public String deleteCar(@RequestParam int id) {
		service.deleteC(id);
		System.out.println("Del Store");
		return "redirect:/viewCars?dashboard";

	}

	@RequestMapping("/deleteU")
	public String deleteUser(@RequestParam int id) {
		service.deleteU(id);
		System.out.println("Del Store");
		return "redirect:/viewUsers?dashboard";

	}

}
