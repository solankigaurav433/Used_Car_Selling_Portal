package com.spring.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.spring.entities.User;
import com.spring.service.CarService;

@Controller
public class LoginController {

	@Autowired
	CarService service;

	@GetMapping("/login")
	public String loginPage(Model model) {
		model.addAttribute("login", new User());
		return "login";
	}

	@RequestMapping(value = "/login_error")
	public String onLoginError(Model model) {
		String error_msg = "Incorrect user or password. Please re-enter.";
		model.addAttribute("error_string", error_msg);
		return "login";
	}

	@RequestMapping("/logged")
	public String postLogin(@ModelAttribute("login") String email, Model model) {

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

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/login?logout";
	}

}
