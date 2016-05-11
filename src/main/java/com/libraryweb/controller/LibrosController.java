package com.libraryweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.libraryweb.dal.LibrosRepository;
import com.libraryweb.model.Libro;

@Controller
@RequestMapping(value = "/Books/")
public class LibrosController {

	@Autowired
	LibrosRepository librosRepo;
	
	@RequestMapping(value = "book", method = RequestMethod.GET)
	public String viewBook(@RequestParam("id") String id, Model model)
	{
		Libro libro = this.librosRepo.getLibroById(id);
		
		model.addAttribute("libro", libro);
		
		return "Books/book";
	}
	
	
	@RequestMapping(value = "search", method = RequestMethod.GET)
	public String searchBook(@RequestParam("query") String query, Model model)
	{
		List<Libro> libros = this.librosRepo.buscarLibro(query);
		
		model.addAttribute("query", query);
		model.addAttribute("result", libros);
		
		return "Books/search";
	}
	
	
	@RequestMapping(value = "addBookInventory", method = RequestMethod.GET)
	public String addBookInventoryGet(Model model)
	{
		List<Libro> libros = this.librosRepo.getAll();
		
		model.addAttribute("books", libros);
		
		return "Books/addBookInventory";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "addBookInventory", method = RequestMethod.POST)
	public ResponseEntity<String> addBookInventoryPost(@RequestParam("selectedBook") String idLibro)
	{
		Libro libro = this.librosRepo.getLibroById(idLibro);
		
		if (libro == null)
			return new ResponseEntity<String>(HttpStatus.NOT_FOUND);
		else
			return new ResponseEntity<String>(HttpStatus.OK);
		
	}
}
