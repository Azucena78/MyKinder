package com.cursoceat.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.security.PublicKey;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.util.ArrayList;
import java.util.List;

import org.apache.jasper.compiler.TextOptimizer;

import com.cursoceat.model.Autorizados;
import com.cursoceat.model.Ninio;
import com.cursoceat.model.Tutores;
/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/**
		 * Datos Niño
		 */
		String nombre=request.getParameter("nombre"); //Los valores vienen del jsp y almacena del name="nombre" su valor.
		String apellidos=request.getParameter("apellidos");
		String fNacimiento=request.getParameter("fNacimiento");
		String direccion=request.getParameter("direccion");
		String poblacion=request.getParameter("poblacion");
		String codigoPostal=request.getParameter("codigoPostal");
		String alergias=request.getParameter("alergias");
		String alergiasAlimentarias=request.getParameter("alergiasAlimentarias");
		String intolerancias=request.getParameter("intolerancias");
		String medicacion=request.getParameter("medicacion");
		String observaciones=request.getParameter("observaciones");
		/**
		 * Datos Tutor
		 */
		String nombreYapellidosTutor=request.getParameter("nombreYapellidosTutor");
		String dniTutor=request.getParameter("dniTutor");
		String telefonoTutor=request.getParameter("telefonoTutor");
		String profesionTutor=request.getParameter("profesionTutor");
		String emailTutor=request.getParameter("emailTutor");
		String parentescoTutor=request.getParameter("parentescoTutor");
		//ejemplo de un casting a entero
		//int telefono=Integer.parseInt(request.getParament("telefonoT1));
		
		/**
		 * Datos de los Autorizados 1
		 */
		int Autorizados = 1;
		String autor1=request.getParameter("autor1");
		String dniAutor1=request.getParameter("dniAutor1");
		String telefonoAutor1=request.getParameter("telefonoAutor1");
		String parentescoAutor1=request.getParameter("parentescoAutor1");
		//Leer todos los datos del formulario
		//Crear mis objetos -> crear las clases
		
	
		if (nombre.isEmpty() || apellidos.isEmpty() || fNacimiento.isEmpty() || direccion.isEmpty() || poblacion.isEmpty() || codigoPostal.isEmpty() || nombreYapellidosTutor.isEmpty() || dniTutor.isEmpty() || telefonoTutor.isEmpty() || parentescoTutor.isEmpty()
				|| autor1.isEmpty() || dniAutor1.isEmpty() || telefonoAutor1.isEmpty() || !(ValidarTelefono(telefonoTutor))) {
			String error = "Los campos requeridos son obligatorios";
			 
			request.setAttribute("error", error); //no se envia hasta que no se despache
			request.getRequestDispatcher("index.jsp").forward(request, response); //no se muestra si tengo quien lo muestre
		
		}else {
			request.getRequestDispatcher("confirmacion.jsp").forward(request, response);
			/**
			 * Aquí falta validar que la seisón se cree cuando se pulse todo correcto
			 */	
				List<Ninio> miNiList = new ArrayList<Ninio>();
				List<Tutores> tutoList = new ArrayList<Tutores>();
				List<Autorizados> autoList = new ArrayList<Autorizados>();
			
			Ninio miNinio = new Ninio (nombre, apellidos, direccion, fNacimiento, poblacion, codigoPostal, alergias, alergiasAlimentarias, intolerancias, medicacion, observaciones);
			//Crear la colección de niños en alta
			miNiList.add(miNinio);
			int idNinio = miNinio.getIdNinio();
			System.out.println("id Niño: " + miNinio);
			Tutores elTutor = new Tutores (idNinio, nombreYapellidosTutor, dniTutor, telefonoTutor, profesionTutor, emailTutor, parentescoTutor);
			System.out.println("Tutor: " + elTutor.toString());
			tutoList.add(elTutor);
			Autorizados elAutorizado = new Autorizados(idNinio, autor1, dniAutor1, telefonoAutor1, parentescoAutor1);
			System.out.println("Autorizado: " + elAutorizado);
			autoList.add(elAutorizado);
			/**
			 * Datos tutor 1
			 */
			String nombreYapellidosTutor1=request.getParameter("nombreYapellidosTutor1");
			if (!nombreYapellidosTutor1.isEmpty()) {
			String dniTutor1=request.getParameter("dniTutor1");
			String telefonoTutor1=request.getParameter("telefonoTutor1");;
			String profesionTutor1=request.getParameter("profesionTutor1");
			String emailTutor1=request.getParameter("emailTutor1");
			String parentescoTutor1=request.getParameter("parentescoTutor1");
			Tutores elTutor1 = new Tutores (idNinio, nombreYapellidosTutor1, dniTutor1, telefonoTutor1, profesionTutor1, emailTutor1, parentescoTutor1);
			tutoList.add(elTutor1);
			}
			/**
			 * Datos de los autorizados
			 */
			String autor2=request.getParameter("autor2");
			if (!autor2.isEmpty()) {
			String dniAutor2=request.getParameter("dniAutor2");
			String telefonoAutor2=request.getParameter("telefonoAutor2");
			String parentescoAutor2=request.getParameter("parentescoAutor2");
			Autorizados elAutorizado2 = new Autorizados(idNinio, autor2, dniAutor2, telefonoAutor2, parentescoAutor2);
			autoList.add(elAutorizado2);
			}
			String autor3=request.getParameter("autor3");
			if (!autor3.isEmpty()) {
			String dniAutor3=request.getParameter("dniAutor3");
			String telefonoAutor3=request.getParameter("telefonoAutor3");
			String parentescoAutor3=request.getParameter("parentescoAutor3");
			Autorizados elAutorizado3 = new Autorizados(idNinio, autor3, dniAutor3, telefonoAutor3, parentescoAutor3);
			autoList.add(elAutorizado3);
			}
			String autor4=request.getParameter("autor4");
			if (!autor4.isEmpty()) {
			String dniAutor4=request.getParameter("dniAutor4");
			String telefonoAutor4=request.getParameter("telefonoAutor4");
			String parentescoAutor4=request.getParameter("parentescoAutor4");
			Autorizados elAutorizado4 = new Autorizados(idNinio, autor4, dniAutor4, telefonoAutor4, parentescoAutor4);
			autoList.add(elAutorizado4);
			}
			String autor5=request.getParameter("autor5");
			if (!autor5.isEmpty()) {
			String dniAutor5=request.getParameter("dniAutor5");
			String telefonoAutor5=request.getParameter("telefonoAutor5");
			String parentescoAutor5=request.getParameter("parentescoAutor5");
			Autorizados elAutorizado5 = new Autorizados(idNinio, autor5, dniAutor5, telefonoAutor5, parentescoAutor5);
			autoList.add(elAutorizado5);
			}
			//Sesiones para poder recuperar la información dentro de la aplicación
			HttpSession sesion = request.getSession();//crea el objeto tipo sesión
			System.out.println(sesion.getId());//mostrar el id de la sesión
			request.getSession().setAttribute("idNinio", idNinio);
			request.getSession().setAttribute("nombre", nombre);
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	//Área de validaión
	/**
	 * @param telefono
	 * @return boolean
	 * @descripction Validamos el teléfono según formato de España
	 */
	public boolean ValidarTelefono(String telefono) {
		if ((!telefono.startsWith("9") && !telefono.startsWith("6") && !telefono.startsWith("7")) || telefono.length()!=9) {
			return false;
		}else {
			return true;
		}
	}
	/**
	 * @param fNacimiento
	 * @return boolean
	 * @description Validamos si en fecha de nacimiento es menor de 6 años (el niño no puede tener más de 6 años).
	 */
	public boolean validarFN(String fNacimiento) {
		LocalDate fechaN = LocalDate.parse(fNacimiento);
		int aniosNino = fechaN.getYear();
		int anioActual = LocalDate.now().getYear();
		if ((anioActual-aniosNino)>6 || anioActual+1<aniosNino) //deja que ponga fechas superiores
		return false;
		else
		return true;
		}
	public boolean validarDNI(String dNI) {
		
		String letra = "TRWAGMYFPDXBNJZSQVHLCKE";
		//posición inicial, longitud
		String intDni = dNI.substring(0,8); //dividimos el dniÇ: aquí las primeras 8 posiciones.
		//Esta línea puede dar un error, y programador tiene que saber controlar ese posible error.
		try {
		int dNIEntero = Integer.parseInt(intDni)%23; //convertimos esas 8 posiciones a entero y sacamos el módulo.
		char letraDni = dNI.toUpperCase().charAt(8); //convertimos a tipo char la posición 9 que debe ser la letra y en mayúscula.
		char letraCorrecta = letra.charAt(dNIEntero); //me trae la letra correcta dsegún el algoritmo de la policía.
		/**
		 * condicional para
		 * 1. el string de dni sea igual a 9 posiciones.
		 * 2. que la letra introducida (letraDni) sea igual a letra del algoritmo de la policia (letraCorrecta).
		 */
		if (dNI.length()==9 && letraDni == letraCorrecta) {
			return true;
		}else {
			return false;
		}
	}catch (Exception e) {
		return false;
	}finally {
	}
}
	/**
	 * 
	 * @param texto
	 * @return texto con la primera letra en mayúscula.
	 * @Description método para pasar la primera letra a mayúscula de cualquier texto
	 */
	public String pasarPmayuscula(String texto) {
		texto = texto.toLowerCase(); //paso todo el texto a minúsculas
		String[] arrayTexto = texto.split(" "); //si es más de una palabra la separamos en una array
		String temp = ""; //creo la variable que se formará por cada interacción del bucle que recorre el array
		for (int i = 0; i<arrayTexto.length; i++) { //recorremos el array
			arrayTexto[i] = arrayTexto[i].substring(0,1).toUpperCase() + arrayTexto[i].substring(1); //pasamos la primera letra de cada palabra en mayúscula
			temp += arrayTexto + " "; //lo acumulamos en el temp
		}
		return temp.trim(); //enviamos temp ya formateada y quitamos espacios del principio y final
	}
}
