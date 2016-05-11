package com.libraryweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.libraryweb.dal.LibrosRepository;
import com.libraryweb.dal.ReservasRepository;
import com.libraryweb.model.Libro;
import com.libraryweb.model.LibroInventario;

@Controller
@RequestMapping(value = "/Reserve/")
public class ReservasController {

	@Autowired
	ReservasRepository reservasRepo;
	
	@Autowired
	LibrosRepository librosRepo;
	
	@RequestMapping(value = "copies", method = RequestMethod.GET)
	public String getBookCopies(@RequestParam("id") String id, Model model)
	{
		List<LibroInventario> copias = this.reservasRepo.getAvailableBookCopies(id);
		Libro libro = this.librosRepo.getLibroById(id);
		
		model.addAttribute("result", copias);
		model.addAttribute("libro", libro);
		
		return "Reserve/copies";
	}
	
	@RequestMapping(value = "reserve", method = RequestMethod.GET)
	public String reserveBook(@RequestParam("book") String idLibro, @RequestParam("inventory") int idLibro_interno, Model model)
	{
		boolean success = this.reservasRepo.reserveBook(idLibro, idLibro_interno);
		Libro libro = this.librosRepo.getLibroById(idLibro);
		
		model.addAttribute("result", success);
		model.addAttribute("libro", libro);
		
		return "Reserve/reserve";
	}
}
