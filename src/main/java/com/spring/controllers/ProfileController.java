package com.spring.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.entities.User;
import com.spring.service.CarService;

@Controller
public class ProfileController {

	@Autowired
	CarService service;

	@RequestMapping("/edit")
	public ModelAndView updateProfile(@RequestParam int id) {

		ModelAndView mv = new ModelAndView("profile");
		User us = service.retrieve(id);
		mv.addObject("upProf", us);
		return mv;
	}

	@PostMapping("/update")
	public String saveProfile(@ModelAttribute("user") User us) {
		service.saveUser(us);
		return "dashboard";
	}
}
