package com.cursoceat.model;

public class Tutores extends DatosGenerales{

		private String profesion;
		private String email;
		private String parentesco;
		
		public Tutores(int idNinio, String nombreApellidos, String dni, String telefono, String profesion,
				String email, String parentesco) {
			super(idNinio, nombreApellidos, dni, telefono);
			this.profesion = profesion;
			this.email = email;
			this.parentesco = parentesco;
		}

		public Tutores() {
			super();
		}
		public String getProfesion() {
			return profesion;
		}

		public void setProfesion(String profesion) {
			this.profesion = profesion;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}
		public String getParentesco() {
			return parentesco;
		}

		public void setParentesco(String parentesco) {
			this.parentesco = parentesco;
		}
		
		@Override
	public String toString() {
		return super.toString() + "Tutores [profesion=" + profesion + ", email=" + email + ", parentesco=" + parentesco + "]";
	}
		
}
