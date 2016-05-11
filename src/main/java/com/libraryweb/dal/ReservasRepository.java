package com.libraryweb.dal;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.libraryweb.model.LibroInventario;

@Repository
public class ReservasRepository {

	@Autowired
    JdbcTemplate jdbcTemplate;
	
	public ReservasRepository(){
		
	}
	
	public List<LibroInventario> getAvailableBookCopies(String idLibro)
	{
		String sql = "SELECT li.idLibro_interno idLibro_interno,"
				+ " li.idLibro idLibro, l.titulo titulo, li.estado estado"
				+ " FROM libro_inventario li"
				+ " INNER JOIN libro l ON l.idLibro = li.idLibro"
				+ " WHERE li.idLibro = '" + idLibro + "'"
				+ " AND li.estado = 'disponible';";
		
		List<LibroInventario> result = new ArrayList<LibroInventario>();
		
		List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
		
		int i = 1;
		for (Map<String, Object> row : rows) {
			
			LibroInventario copia = new LibroInventario();
			copia.setNumCopia(i++);
			copia.setIdLibro_interno((int)row.get("idLibro_interno"));
			copia.setIdLibro((String)row.get("idLibro"));
			copia.setTitulo((String)row.get("titulo"));
			copia.setEstado((String)row.get("estado"));
			result.add(copia);
		}
		
		return result;
	}
	
	
	public boolean reserveBook(String idLibro, int idLibro_interno){
		
		try {
			
			Date currentDate = new Date();
			Calendar c = Calendar.getInstance(); 
			c.setTime(currentDate); 
			c.add(Calendar.DATE, 3);
			Date expirationDate = c.getTime();
			
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	        String currentDateTime = dateFormat.format(currentDate);
	        String expirationDateTime = dateFormat.format(expirationDate);
	        
			String insertSql = "INSERT INTO reserva(fecha_reserva, fecha_expiracion,"
					+ "idlibro_interno,idlibro,idusuario) VALUES ('"
					+ currentDateTime + "','" + expirationDateTime + "'," + idLibro_interno
					+ ",'" + idLibro + "','vicflamenco');";
					
			String updateSql = "UPDATE libro_inventario SET estado='reservado'"
					+ " WHERE idLibro_interno = " + idLibro_interno
					+ " AND idLibro = '" + idLibro + "';";
			
			int resultInsert = jdbcTemplate.update(insertSql);
			int resultUpdate = jdbcTemplate.update(updateSql);
			
			return resultInsert > 0 && resultUpdate > 0;
			
		} catch(Exception e){
			return false;
		}
		
	}
}
