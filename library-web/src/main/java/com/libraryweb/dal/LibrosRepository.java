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
	
	public Libro getLibroById(String isbn)
	{
		String sql = "SELECT l.*, e.nombre AS editorial, a.nombre AS autor FROM libro l INNER JOIN autor a ON l.idautor = a.idautor INNER JOIN editorial e ON l.ideditorial = e.ideditorial WHERE idlibro = ?";
		
		Map<String, Object> map = this.jdbcTemplate.queryForMap(sql, isbn);
		
		Libro libro = new Libro();
		
		libro.setIdLibro((String)map.get("idlibro"));
		libro.setTitulo((String)map.get("titulo"));
		libro.setAnio((int)map.get("anio"));
		libro.setEdicion((String) map.get("edicion"));
		libro.setSinopsis((String) map.get("sipnosis"));
		libro.setNombreEditorial((String)map.get("editorial"));
		libro.setNombreAutor((String)map.get("autor"));
		
		return libro;
	}
	
	public List<Libro> buscarLibro(String titulo)
	{
		titulo = "%" + titulo + "%";
		String sql = "SELECT l.*, e.nombre AS editorial, a.nombre AS autor FROM libro l INNER JOIN autor a ON l.idautor = a.idautor INNER JOIN editorial e ON l.ideditorial = e.ideditorial WHERE titulo LIKE ?";
		List<Libro> result = new ArrayList<Libro>();
		
		List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql,titulo);
		
		for (Map<String, Object> row : rows) {
			Libro libro = new Libro();
			libro.setIdLibro((String)row.get("idlibro"));
			libro.setTitulo((String)row.get("titulo"));
			libro.setAnio((int)row.get("anio"));
			libro.setEdicion((String) row.get("edicion"));
			libro.setNombreEditorial((String)row.get("editorial"));
			libro.setNombreAutor((String)row.get("autor"));
			
			result.add(libro);
		}
		
		return result;
	}
}
