<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Con la siguiente línea llamo al archivo header.jsp y lo inserta en allí, como si estuviera en este mismo código. -->
<jsp:include page="header.jsp"></jsp:include>
<body>
	<!-- Incluir el encabezado en todas las páginas -->
	
	<div class="container">
	<p class="text-danger">
	<!-- c:out Muestra información en la página, se presenta la expresión contenida eb ek atributo value. -->
		<c:out value="${error}"></c:out>
		</p>
		<p>(*) Obligatorio</p>
		<!-- elmétodo get envía los datos del formulario por medio de la url. -->
		<form action="Controller" method="get" class = "needs-validation" novalidate>
		<h2 class="bg-primary-subtle">Datos del Niñ@</h2>
		<fieldset>
		<div class="row">
			<div class="col-4">
			<!-- ${param.nombre} Es como se obtiene el valor del parámetro de contexto en JSP. -->
				<input type="text" class="form-control text-capitalize" placeholder="Nombre*" 
					aria-label="Nombre del Niñ@" name="nombre" value="${param.nombre}" pattern="[a-zA-Z ]+" required>
			</div>
			<div class="col-4">
				<input type="text" class="form-control text-capitalize" placeholder="Apellidos*" 
					aria-label="apellidos del Niñ@" name="apellidos" value="${param.apellidos}" pattern="[a-zA-Z ]+" required>
			</div>
			<div class="col-2 text-end pt-xl-2">
				<label for="fNacimiento">Fecha de Nacimiento:</label>
			</div>
			<div class="col-2">
				<input type="date" class="form-control" aria-label="Fecha de Nacimiento Niñ@" name="fNacimiento" value="${param.fNacimiento}" required>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col">
				<input type="text" class="form-control text-capitalize" placeholder="Dirección*" aria-label="direccion del Niñ@" name="direccion" value="${param.direccion}" required>
			</div>
			<div class="col">
				<input type="text" class="form-control text-capitalize" placeholder="Población*" aria-label="poblacion del Niñ@" name="poblacion" value="${param.poblacion}" pattern="[a-zA-Z ]+" required>
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Código Postal*" aria-label="CodigoPostal" name="codigoPostal" value="${param.codigoPostal}" pattern="[0-9]{5}" required>
			</div>
		</div>
		</fieldset>
		<h2 class="bg-primary-subtle mt-4">Datos del Tutor/ra</h2>
		<fieldset>
		<div class="row mt-4">
			<div class="col">
				<input type="text" class="form-control text-capitalize"
					placeholder="Nombre y Apellidos*"
					aria-label="Nombre y Apellidos del tutor"
					name="nombreYapellidosTutor" value="${param.nombreYapellidosTutor}" pattern="[a-zA-Z ]+" required>
			</div>
			<div class="col has-validation">
				<input type="text" class="form-control" placeholder="DNI*"
					aria-label="Dni del Tutor" name="dniTutor" value="${param.DniTutor}" pattern="[0-9]{8}[a-zA-z]{1}" required>
			<div class="invalid-feedback">
      DNI invalido
    	</div>
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Teléfono*"
					aria-label="Teléfono del Tutor*" name="telefonoTutor" value="${param.telefonoTutor}" pattern="[6789]{1}[0-9]{8}" required>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col">
				<input type="text" class="form-control text-capitalize" placeholder="Profesión"
					aria-label="Profesion del Tutor" name="profesionTutor" value="${param.profesionTutor}" pattern="[a-zA-Z ]+">
			</div>
			<div class="col">
				<input type="text" class="form-control text-Lowercase" placeholder="E-mail"
					aria-label="Email del Tutor" name="emailTutor" value="${param.emailTutor}" >
			</div>
			<div class="col">
				<select class="form-select" aria-label="Parentesco" name="parentescoTutor">
					<option selected>Parentesco</option>
					<option>Madre</option>
					<option>Padre</option>
					<option>Tutor</option>
				</select>
			</div>
		</div>
		<hr class="my-4 border border-primary">
		<div class="row mt-4">
			<div class="col">
				<input type="text" class="form-control text-capitalize"
					placeholder="Nombre y Apellidos "
					aria-label="Nombre y Apellidos del tutor"
					name="nombreYapellidosTutor1" pattern="[a-zA-Z ]+">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="DNI"
					aria-label="Dni del Tutor" name="dniTutor1" pattern="[0-9]{8}[a-zA-z]{1}">
			</div>
			<div class="col">
				<input type="text" class="form-control" placeholder="Teléfono"
					aria-label="Telefono del Tutor" name="telefonoTutor1" pattern="[6789]{1}[0-9]{8}">
			</div>
		</div>

		<div class="row mt-4">
			<div class="col">
				<input type="text" class="form-control text-capitalize" placeholder="Profesión"
					aria-label="Profesion del Tutor" name="profesionTutor1" pattern="[a-zA-Z ]+">
			</div>
			<div class="col">
				<input type="text" class="form-control text-Lowercase" placeholder="E-mail"
					aria-label="Email del Tutor" name="emailTutor1">
			</div>
			<div class="col">
				<select class="form-select" aria-label="Parentesco Tutor 1" name="parentescoTutor1">
					<option selected>Parentesco</option>
					<option>Madre</option>
					<option>Padre</option>
					<option>Tutor</option>
				</select>
			</div>
		</div>
		</fieldset>
		<h2 class="bg-primary-subtle mt-4">Otros Datos</h2>
		<fieldset>
		<p>¡IMPORTANTE!</p>
		<div class="row mt-4">
			<div class="col">
				<input type="text" class="form-control text-capitalize" placeholder="Alergias"
					aria-label="Alergias del Nin@" name="alergias">
			</div>
			<div class="col">
				<input type="text" class="form-control text-capitalize"
					placeholder="Alergias Alimentarias"
					aria-label="Alergias Alimentarias del Nin@"
					name="alergiasAlimentarias">
			</div>
		</div>
		<div class="row mt-4">
			<div class="col">
				<input type="text" class="form-control text-capitalize" placeholder="Intolerancias"
					aria-label="Intolerancias del Nin@" name="intolerancias">
			</div>
			<div class="col">
				<input type="text" class="form-control text-capitalize" placeholder="Medicación"
					aria-label="Medicacion del Nin@" name="medicacion">
			</div>
		</div>
		<div class="row mt-3">
			<div class="mb-3">
				<textarea class="form-control text-capitalize" id="exampleFormControlTextarea1"
					placeholder="Observaciones" name="observaciones" ${param.observaciones} rows="3"></textarea>
			</div>
		</div>
		</fieldset>
		<h2 class="bg-primary-subtle mt-4">Autorizaciones</h2>
			<fieldset>
		<p>Al menos un campo obligatotio (*)</p>
		<div class="input-group mb-3">
			  <span class="input-group-text" id="addon-wrapping">Nombre y Apellidos</span> 
			<input type="text" class="form-control text-capitalize" name="autor1" aria-label="Username" value="${param.autor1}" required> 
			  <span class="input-group-text" id="addon-wrapping" >DNI</span> 
			<input type="text" 	class="form-control" name="dniAutor1" aria-label="Username" value="${param.dniAutor1}" required>
			  <span class="input-group-text" id="addon-wrapping">Teléfono</span> 
			<input	type="text" class="form-control" name="telefonoAutor1" aria-label="Username" value="${param.telefonoAutor1}" required> 
			  <span class="input-group-text" id="addon-wrapping">Parentesco</span> 
			<input type="text"	class="form-control text-capitalize" name="parentescoAutor1" aria-label="Username" value="${param.parentescoAutor1}" required>
		</div>
		<div class="input-group mb-3">
			  <span class="input-group-text" id="addon-wrapping">Nombre y Apellidos</span> 
			<input type="text" class="form-control text-capitalize" name="autor2" aria-label="Username"> 
			  <span class="input-group-text" id="addon-wrapping">DNI</span> 
			<input type="text"
				class="form-control" name="dniAutor2" aria-label="Username">
			  <span class="input-group-text" id="addon-wrapping">Teléfono</span> 
			<input type="text" class="form-control" name="telefonoAutor2"
				aria-label="Username"> 
			  <span class="input-group-text" id="addon-wrapping">Parentesco</span> 
			<input type="text" class="form-control text-capitalize" name="parentescoAutor2" aria-label="Username">
		</div>
		<div class="input-group mb-3">
			  <span class="input-group-text" id="addon-wrapping">Nombre y Apellidos</span> 
			<input type="text" class="form-control text-capitalize" name="autor3" aria-label="Username"> 
			  <span class="input-group-text"
				id="addon-wrapping">DNI</span> 
			<input type="text" class="form-control" name="dniAutor3" aria-label="Username">
			  <span class="input-group-text" id="addon-wrapping">Teléfono</span> 
			<input type="text" class="form-control" name="telefonoAutor3" aria-label="Username"> 
			  <span class="input-group-text" id="addon-wrapping">Parentesco</span> 
			<input type="text" class="form-control text-capitalize" name="parentescoAutor3" aria-label="Username">
		</div>
		<div class="input-group mb-3">
			  <span class="input-group-text" id="addon-wrapping">Nombre y Apellidos</span> 
			<input type="text" class="form-control text-capitalize" name="autor4" aria-label="Username"> 
			  <span class="input-group-text" id="addon-wrapping">DNI</span> 
			<input type="text" class="form-control" name="dniAutor4" aria-label="Username">
			  <span class="input-group-text" id="addon-wrapping">Teléfono</span> 
			<input type="text" class="form-control" name="telefonoAutor4" aria-label="Username"> 
			  <span class="input-group-text" id="addon-wrapping">Parentesco</span> 
			<input type="text" class="form-control text-capitalize" name="parentescoAutor4" aria-label="Username">
		</div>
		<div class="input-group mb-3">
			  <span class="input-group-text" id="addon-wrapping">Nombre y Apellidos</span> 
			<input type="text" class="form-control text-capitalize" name="autor5" aria-label="Username"> 
			  <span class="input-group-text" id="addon-wrapping">DNI</span> 
			<input type="text" class="form-control" name="dniAutor5" aria-label="Username">
			  <span class="input-group-text" id="addon-wrapping">Teléfono</span> 
		    <input type="text" class="form-control" name="telefonoAutor5" aria-label="Username"> 
			  <span class="input-group-text" id="addon-wrapping">Parentesco</span>
			<input type="text" class="form-control text-capitalize" name="parentescoAutor5" aria-label="Username">
	</div>
	
	<div class="row mt-4">
		<div class="col text-center">
		<!-- El submit hace que la acción del formulario se ejecute, a través del método que se ha declarado -->
			<input type="submit" name="enviar" value="Enviar Datos"
				class="btn btn-outline-primary">
		</div>
	</div>
	</fieldset>
	<!-- El submit tiene que estr dentro de las qtiquetas form -->
</form>
</div>
</body>
<script>
(() => {
	  'use strict'

	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
	  const forms = document.querySelectorAll('.needs-validation')

	  // Loop over them and prevent submission
	  Array.from(forms).forEach(form => {
	    form.addEventListener('submit', event => {
	      if (!form.checkValidity()) {
	        event.preventDefault()
	        event.stopPropagation()
	      }

	      form.classList.add('was-validated')
	    }, false)
	  })
	})()
</script> 
</html>