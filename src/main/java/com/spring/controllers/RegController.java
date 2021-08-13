package com.spring.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.entities.User;
import com.spring.service.CarService;

@Controller
@ComponentScan("com.spring")
public class RegController {

	@Autowired
	CarService service;

	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("index");
		return mav;
	}

	@RequestMapping("/reg")
	public String newUser(Model model) {
		User us = new User();
		model.addAttribute("register", us);
		System.out.println("Registration page");
		return "register";
	}

	@PostMapping("/register")
	public String saveUser(@Valid User register, BindingResult result, @ModelAttribute("register") User us) {
		if (result.hasErrors()) {
			return "register";
		}

		service.regRole(us);
		service.saveUser(us);
		return "RegistratonSuccess";

	}
}
