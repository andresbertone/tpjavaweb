<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmar eliminaci�n</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/css/estilo.css" rel="stylesheet" type="text/css" />
</head>
<body>
<h2><b>SEGURO QUE DESEA ELIMINAR EL VEH�CULO: <%=request.getParameter("marca")%> <%=request.getParameter("modelo")%></b></h2>
<h2><b>PATENTE: <%=request.getParameter("patente")%></b></h2>
<h2><b>CLIENTE: <%=request.getParameter("nombre_y_apellido")%></b></h2>
<div id=botonesConfirmarEliminacion>
<a href="EliminarVehiculo?patente=<%=request.getParameter("patente")%>" class="btn btn-danger">Eliminar</a>
<a href="MostrarVehiculosPorCliente.jsp" class="btn btn-secondary">Cancelar</a>
</div>
</body>
</html>