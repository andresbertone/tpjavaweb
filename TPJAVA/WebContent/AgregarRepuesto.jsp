<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="entidades.*"%>
<%@page import="java.sql.*"%>
<%@page import="datos.*"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="bootstrap/css/estilo.css" rel="stylesheet" type="text/css" />
<title>Nuevo Repuesto</title>
</head>
<body>
	<div id=plantillaAgregar>
		<form method="POST" action="NuevoRepuesto">
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="descripcion"><b>Descripcion</b></label> <input
						type="text" class="form-control" name="descripcion"
						id="descripcion" placeholder="Foco Delantero">
				</div>
				<div class="form-group col-md-2">
					<label for="cantidad"><b>Cantidad</b></label> <input type="text"
						class="form-control" name="cantidad" id="cantidad" placeholder="4">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="telefono"><b>Precio por unidad ($)</b></label> <input
						type="text" class="form-control" name="precio" id="precio"
						placeholder="24.80">
				</div>
			</div>
			<button type="submit" class="btn btn-success">Guardar</button>
		</form>
	</div>
</body>
</html>