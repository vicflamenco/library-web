package com.libraryweb.model;

public class Libro {
    
    private String idLibro;
    private String titulo;
    private int anio;
    private String edicion;
    private String sinopsis;
    private int idEditorial;
    private int idAutor;
    
    private String nombreAutor;
    private String nombreEditorial;
    
    public Libro()
    {
    	
    }
    
    public Libro(String id, String titulo, int anio, String edicion, 
            int idEditorial, int idAutor, String sinopsis, 
            String nombreAutor, String nombreEditorial){
        this.idLibro = id;
        this.titulo = titulo;
        this.anio = anio;
        this.edicion = edicion;
        this.sinopsis = sinopsis;
        this.idEditorial = idEditorial;
        this.idAutor = idAutor;
        this.nombreAutor = nombreAutor;
        this.nombreEditorial = nombreEditorial;
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

    public int getAnio() {
        return anio;
    }

    public void setAnio(int anio) {
        this.anio = anio;
    }
    
    public String getEdicion() {
        return edicion;
    }

    public void setEdicion(String edicion) {
        this.edicion = edicion;
    }

    public String getSinopsis() {
        return sinopsis;
    }

    public void setSinopsis(String sinopsis) {
        this.sinopsis = sinopsis;
    }

    public int getIdEditorial() {
        return idEditorial;
    }

    public void setIdEditorial(int idEditorial) {
        this.idEditorial = idEditorial;
    }

    public int getIdAutor() {
        return idAutor;
    }
    
    public void setIdAutor(int idAutor) {
        this.idAutor = idAutor;
    }

    public String getNombreAutor() {
        return nombreAutor;
    }

    public void setNombreAutor(String nombreAutor) {
        this.nombreAutor = nombreAutor;
    }

    public String getNombreEditorial() {
        return nombreEditorial;
    }

    public void setNombreEditorial(String nombreEditorial) {
        this.nombreEditorial = nombreEditorial;
    }
}