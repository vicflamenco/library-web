package com.libraryweb.dal;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.libraryweb.model.Libro;

@Repository
public class LibrosRepository {
	@Autowired
    JdbcTemplate jdbcTemplate;
	
	public LibrosRepository()
	{
		
	}
	
	public List<Libro> buscarLibro(String titulo)
	{
		titulo = "%" + titulo + "%";
		String sql = "SELECT * FROM libro WHERE titulo LIKE ?";
		List<Libro> result = new ArrayList<Libro>();
		
		System.out.println(titulo);
		
		List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql,titulo);
		
		for (Map<String, Object> row : rows) {
			Libro libro = new Libro();
			libro.setIdLibro((String) row.get("idlibro"));
			libro.setTitulo((String)row.get("titulo"));
			libro.setAnio((int)row.get("anio"));
			libro.setEdicion((String) row.get("edicion"));
			
			System.out.println(libro.getTitulo());
			
			result.add(libro);
		}
		
		return result;
	}
}
