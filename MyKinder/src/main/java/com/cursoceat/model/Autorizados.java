package com.cursoceat.model;

public class Autorizados extends DatosGenerales {
	
	protected String relacion;

	public Autorizados(int idNinio, String nombreApellidos, String dni, String telefono, String relacion) {
		super(idNinio, nombreApellidos, dni, telefono);
		this.relacion = relacion;
	}

	public Autorizados() {
		super();
	}
	
	public String getRelacion() {
		return relacion;
	}

	public void setRelacion(String relacion) {
		this.relacion = relacion;
	}

	@Override
	public String toString() {
		return super.toString() + "Autorizados [relacion=" + relacion + "]";
	}
}
