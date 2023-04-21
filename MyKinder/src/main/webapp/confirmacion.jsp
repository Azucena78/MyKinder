<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<!-- Incluir el encabezado en todas las páginas -->
	<div class="container">
		<fieldset>
		<h2 class="bg-primary-subtle">Datos del Niñ@</h2>
		<div class="row">
			<div class="col-4">
				<b>Nombre: </b>
				<c:out value="${param.nombre}"></c:out>
			</div>
			<div class="col-4">
				<b>Apellidos: </b>
				<c:out value="${param.apellidos}"></c:out>
			</div>
			<div class="col-2 text-end pt-xl-2">
				<b>Fecha de Nacimiento: </b>
				
			</div>
			<div class="col-2">
			<b>Fecha de Nacimineto: </b>
				<c:out value="${param.fNacimiento}"></c:out>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col">
			<b>Dirección: </b>
				<c:out value="${param.direccion}"></c:out>
			</div>
			<div class="col">
			<b>Población: </b>
				<c:out value="${param.poblacion}"></c:out>
			</div>
			<div class="col">
			<b>Código Postal: </b>
				<c:out value="${param.codigoPostal}"></c:out>
			</div>
		</div>

		<h2 class="bg-primary-subtle mt-4">Datos del Tutor/ra</h2>
		<div class="row mt-4">
			<div class="col">
			<b>Nombre y Apellidos: </b>
				<c:out value="${param.nombreYapellidosTutor}"></c:out>
			</div>
			<div class="col">
			<b>Dni: </b>
				<c:out value="${param.dniTutor}"></c:out>
			</div>
			<div class="col">
			<b>Teléfono: </b>
				<c:out value="${param.telefonoTutor}"></c:out>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col">
			<b>Profesión: </b>
				<c:out value="${param.profesionTutor}"></c:out>
			</div>
			<div class="col">
			<b>E-mail: </b>
				<c:out value="${param.emailTutor}"></c:out>
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
				<b>Nombre y Apellidos: </b>
				<c:out value="${param.nombreYapellidosTutor1}"></c:out>
			</div>
			<div class="col">
				<b>Dni: </b>
				<c:out value="${param.dniTutor1}"></c:out>
			</div>
			<div class="col">
				<b>Teléfono: </b>
				<c:out value="${param.telefonoTutor1}"></c:out>
			</div>
		</div>

		<div class="row mt-4">
			<div class="col">
				<b>Teléfono: </b>
				<c:out value="${param.profesionTutor1}"></c:out>
			</div>
			<div class="col">
				<b>E-mail: </b>
				<c:out value="${param.emailTutor1}"></c:out>
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
		<h2 class="bg-primary-subtle mt-4">Otros Datos</h2>
		<div class="row mt-4">
			<div class="col">
				<b>Alergias: </b>
				<c:out value="${param.alergias}"></c:out>
			</div>
			<div class="col">
				<b>Alergias Alimentarias: </b>
				<c:out value="${param.alergiasAlimentarias}"></c:out>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col">
				<b>Intolerancias: </b>
				<c:out value="${param.intolerancias}"></c:out>
			</div>
			<div class="col">
				<b>Medicación: </b>
				<c:out value="${param.medicacion}"></c:out>
			</div>
		</div>
		<div class="row mt-3">
			<div class="mb-3">
			<b>Obesrvaciones:</b>
				<c:out value="${param.observaciones}"></c:out>
			</div>
		</div>
		<h2 class="bg-primary-subtle mt-4">Autorizaciones</h2>
		<table class="table">
		<tr>
		<th>Nombre:</th>
		<th>DNI:</th>
		<th>Teléfono:</th>
		<th>Parentesco:</th>
		</tr>
		<tr>
		<td><c:out value="${param.autor1}"></c:out></td>
		<td><c:out value="${param.dniAutor1}"></c:out></td>
		<td><c:out value="${param.telefonoAutor1}"></c:out></td>
		<td><c:out value="${param.parentescoAutor1}"></c:out></td>
		</tr>
		<tr>
		<td><c:out value="${param.autor2}"></c:out></td>
		<td><c:out value="${param.dniAutor2}"></c:out></td>
		<td><c:out value="${param.telefonoAutor2}"></c:out></td>
		<td><c:out value="${param.parentescoAutor2}"></c:out></td>
		</tr>
		<tr>
		<td><c:out value="${param.autor3}"></c:out></td>
		<td><c:out value="${param.dniAutor3}"></c:out></td>
		<td><c:out value="${param.telefonoAutor3}"></c:out></td>
		<td><c:out value="${param.parentescoAutor3}"></c:out></td>
		</tr>
		<tr>
		<td><c:out value="${param.autor4}"></c:out></td>
		<td><c:out value="${param.dniAutor4}"></c:out></td>
		<td><c:out value="${param.telefonoAutor4}"></c:out></td>
		<td><c:out value="${param.parentescoAutor4}"></c:out></td>
		</tr>
		<tr>
		<td><c:out value="${param.autor5}"></c:out></td>
		<td><c:out value="${param.dniAutor5}"></c:out></td>
		<td><c:out value="${param.telefonoAutor5}"></c:out></td>
		<td><c:out value="${param.parentescoAutor5}"></c:out></td>
		</tr>
		</table>
		</fieldset>
	<div class="row">
		<div class="col">
		<!-- Esta sección arreglar para el tema de las sesiones. -->
			<a href="saludo.jsp" class="btn btn-success Large" id="enviar">Todo Correcto</a>
		</div>
		<div class="col text-center">
		<!-- Se puede insertar comandos javaccript dentro del mismo jsp. -->
			<a href="javascript: history.go(-1)" class="btn btn-success Large " role="button">Corregir</a>
		</div>
		<div class="col text-center">
			<a href="javascript: window.print()" class="btn btn.success Large " role="button"> &#128424;</a>
		</div>
	</div>
	</div>
</body>
</html>