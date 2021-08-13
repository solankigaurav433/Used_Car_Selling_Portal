package com.spring.controllers;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.entities.Car;
import com.spring.service.CarService;

@Controller
public class SearchController {

	@Autowired
	CarService service;

	@RequestMapping("/searchCar")
	public ModelAndView search() {
		List<Car> search = service.listAll();
		ModelAndView mav = new ModelAndView("searchCar");
		Iterator<Car> iterator = search.iterator();
		while (iterator.hasNext()) {
			System.out.println(iterator.next());
		}
		mav.addObject("search", search);
		return mav;
	}

	@RequestMapping("/search")
	public ModelAndView search(@RequestParam String keyword) {

		List<Car> result = service.search(keyword);
		ModelAndView mav = new ModelAndView("searchResult");
		mav.addObject("search", result);
		System.out.println("Search Store");
		return mav;
	}

}
