package com.libraryweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.libraryweb.dal.LibrosRepository;
import com.libraryweb.model.Libro;


@Controller
public class HomeController {
	
	@Autowired
	LibrosRepository librosRepo;
	
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String home(Model model){
		
		return "Home/home";
	}
	
	@RequestMapping(value = "search", method = RequestMethod.GET)
	public String searchBook(@RequestParam("query") String query, Model model)
	{
		List<Libro> libros = this.librosRepo.buscarLibro(query);
		
		model.addAttribute("query", query);
		model.addAttribute("result", libros);
		
		return "Home/search";
	}
}
