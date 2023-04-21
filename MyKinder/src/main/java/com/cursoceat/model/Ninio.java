package com.cursoceat.model;

public class Ninio {
	

	static int id; //todos los niños
	private int idNinio; //id de un objeto niño que se cree
	private String nombreN;
	private String apellidosN;
	private String fechaNacimientoN;
	private String direccionN;
	private String poblacionN;
	private String codigoPostalN;
	private String alergias;
	private String alergiasAlimentarias;
	private String intolerancias;
	private String medicacion;
	private String observaciones;
	
	public Ninio(String nombreN, String apellidosN, String fechaNacimientoN, String direccionN,
			String poblacionN, String codigoPostalN, String alergias, String alergiasAlimentarias, String intolerancias,
			String medicacion, String observaciones) {
		
		this.idNinio = ++id;
		this.nombreN = nombreN;
		this.apellidosN = apellidosN;
		this.fechaNacimientoN = fechaNacimientoN;
		this.direccionN = direccionN;
		this.poblacionN = poblacionN;
		this.codigoPostalN = codigoPostalN;
		this.alergias = alergias;
		this.alergiasAlimentarias = alergiasAlimentarias;
		this.intolerancias = intolerancias;
		this.medicacion = medicacion;
		this.observaciones = observaciones;
	}

	public Ninio() {
		this.idNinio = ++id;
	}
	public static int getId() {
		return id;
	}

	public int getIdNinio() {
		return idNinio;
	}

	public String getNombreN() {
		return nombreN;
	}

	public void setNombreN(String nombreN) {
		this.nombreN = nombreN;
	}

	public String getApellidosN() {
		return apellidosN;
	}

	public void setApellidosN(String apellidosN) {
		this.apellidosN = apellidosN;
	}

	public String getFechaNacimientoN() {
		return fechaNacimientoN;
	}

	public void setFechaNacimientoN(String fechaNacimientoN) {
		this.fechaNacimientoN = fechaNacimientoN;
	}

	public String getDireccionN() {
		return direccionN;
	}

	public void setDireccionN(String direccionN) {
		this.direccionN = direccionN;
	}

	public String getPoblacionN() {
		return poblacionN;
	}

	public void setPoblacionN(String poblacionN) {
		this.poblacionN = poblacionN;
	}

	public String getCodigoPostalN() {
		return codigoPostalN;
	}

	public void setCodigoPostalN(String codigoPostalN) {
		this.codigoPostalN = codigoPostalN;
	}

	public String getAlergias() {
		return alergias;
	}

	public void setAlergias(String alergias) {
		this.alergias = alergias;
	}

	public String getAlergiasAlimentarias() {
		return alergiasAlimentarias;
	}

	public void setAlergiasAlimentarias(String alergiasAlimentarias) {
		this.alergiasAlimentarias = alergiasAlimentarias;
	}

	public String getIntolerancias() {
		return intolerancias;
	}

	public void setIntolerancias(String intolerancias) {
		this.intolerancias = intolerancias;
	}

	public String getMedicacion() {
		return medicacion;
	}

	public void setMedicacion(String medicacion) {
		this.medicacion = medicacion;
	}

	public String getObservaciones() {
		return observaciones;
	}

	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}

	@Override
	public String toString() {
		return "Ninio [idNinio=" + idNinio + ", nombreN=" + nombreN + ", apellidosN=" + apellidosN
				+ ", fechaNacimientoN=" + fechaNacimientoN + ", direccionN=" + direccionN + ", poblacionN=" + poblacionN
				+ ", codigoPostalN=" + codigoPostalN + ", alergias=" + alergias + ", alergiasAlimentarias="
				+ alergiasAlimentarias + ", intolerancias=" + intolerancias + ", medicacion=" + medicacion
				+ ", observaciones=" + observaciones + "]";
	}
}

