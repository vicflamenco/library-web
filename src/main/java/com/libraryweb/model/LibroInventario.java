package com.libraryweb.model;

public class LibroInventario {

	private int numCopia;
	private int idLibro_interno;
	private String idLibro;
	private String titulo;
	private String estado;
	
	public LibroInventario(){
		
	}
	
	public int getNumCopia() {
		return numCopia;
	}

	public void setNumCopia(int numCopia) {
		this.numCopia = numCopia;
	}
	
	public int getIdLibro_interno() {
		return idLibro_interno;
	}

	public void setIdLibro_interno(int idLibro_interno) {
		this.idLibro_interno = idLibro_interno;
	}

	public String getIdLibro() {
		return idLibro;
	}

	public void setIdLibro(String idLibro) {
		this.idLibro = idLibro;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}
}
