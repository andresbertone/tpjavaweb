<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="bootstrap/css/estilo.css" rel="stylesheet" type="text/css" />
<title>Nuevo Mec�nico</title>
</head>
<body>
	<jsp:include page="ControlarUsuario.jsp"></jsp:include>
	<jsp:include page="ValidaNivelUsuario5.jsp"></jsp:include>
	<div id=plantillaAgregar>
		<form method="POST" action="NuevoMecanico">
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="nombreYApellido"><b>Nombre y Apellido</b></label> <input
						type="text" class="form-control" name="nombreYApellido" maxlength="100"
						id="nombreYApellido" placeholder="Juan Perez" required>
				</div>
				<div class="form-group col-md-3">
					<label for="contrasenia"><b>Contrase�a</b></label> <input type="password"
					class="form-control" id="contrasenia" name="contrasenia" maxlength="45" required>
				</div>
				<div class="form-group col-md-3">
					<label for="contrasenia"><b>Confirmar contrase�a</b></label> <input type="password"
					class="form-control" id="contraseniaConfirmar" name="contraseniaConfirmar" maxlength="45" required>
				</div>
			</div>
			<div class="form-group">
				<label for="nivel"><b>Nivel</b></label>
				<select name="nivel" class="nav-link dropdown-toggle" id="navbarDropdown">
	  				<option class="dropdown-menu" value="administrador">Administrador</option> 
	  				<option class="dropdown-menu" value="mecanico" >Mec�nico</option>
				</select>
			</div>
			<div class="form-group">
				<label for="direccion"><b>Direcci�n</b></label> <input type="text"
					class="form-control" id="direccion" name="direccion" maxlength="100"
					placeholder="Entre Rios 1243" required>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="telefono"><b>Tel�fono</b></label> <input
						type="number" class="form-control" name="telefono" id="telefono" maxlength="12"
						placeholder="420222">
				</div>
				<div class="form-group col-md-6">
					<label for="mail"><b>Mail</b></label> <input type="email"
						class="form-control" id="mail" name="mail" maxlength="100"
						placeholder="ejemplo@gmail.com">
				</div>
			</div>
			<div id="botonGuardar">
				<button type="submit" class="btn btn-success" name="btn_guardar_nuevoCliente"
					style="position: relative; top: 10px; left: 20px">Guardar</button>
				<button type="button" class="btn btn-danger"
					onclick="location='Principal.jsp'"
					style="position: relative; top: 10px; left: 40px">Cancelar</button>
			</div>
		</form>
	</div>
</body>
</html>