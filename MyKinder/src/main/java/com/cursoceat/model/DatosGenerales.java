package com.cursoceat.model;

public class DatosGenerales {

	protected int idNinio;
	protected String nombreApellidos;
	protected String dni;
	protected String telefono;
	
	public DatosGenerales(int idNinio, String nombreApellidos, String dni, String telefono) {
		this.idNinio = idNinio;
		this.nombreApellidos = nombreApellidos;
		this.dni = dni;
		this.telefono = telefono;
	}

	public DatosGenerales() {
		
	}
	public int getIdNinio() {
		return idNinio;
	}

	public String getNombreApellidos() {
		return nombreApellidos;
	}

	public void setNombreApellidos(String nombreApellidos) {
		this.nombreApellidos = nombreApellidos;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	@Override
	public String toString() {
		return "DatosGenerales [idNinio=" + idNinio + ", nombreApellidos=" + nombreApellidos + ", dni=" + dni
				+ ", telefono=" + telefono + "]";
	}
}
