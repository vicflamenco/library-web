package com.libraryweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class HomeController {
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String sayHello(Model model){
		model.addAttribute("msg", "hola");
		
		return "Home/home";
	}
	
	@RequestMapping(value = "search", method = RequestMethod.GET)
	public String searchBook(@RequestParam("query") String query, Model model)
	{
		model.addAttribute("query", query);
		
		return "Home/search";
	}
}
