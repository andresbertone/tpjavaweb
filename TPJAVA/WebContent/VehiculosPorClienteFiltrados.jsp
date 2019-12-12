<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="entidades.*"%>
<%@page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Veh�culos del cliente</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="bootstrap/css/estilo.css" rel="stylesheet" type="text/css"/>
<%
	ArrayList<Auto> misVehiculos= (ArrayList<Auto>)request.getSession().getAttribute("misAutos");
%>
</head>
<div id=titulo><label><b>VEH�CULOS POR CLIENTE</b></label></div>
<body>
	<jsp:include page="ControlarUsuario.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th scope="col">DNI</th>
							<th scope="col">CLIENTE</th>
							<th scope="col">PATENTE</th>
							<th scope="col">MARCA Y MODELO</th>
							<th scope="col">A�O</th>
							<th scope="col">CANT KM</th>
							<th scope="col">ACCI�N</th>
						</tr>
					</thead>
					<tbody>
						<%
							for (Auto auto : misVehiculos) {
						%>
						<tr>
							<td><%=auto.getCli().getDni()%></td>
							<td><%=auto.getCli().getNombre_y_apellido()%></td>
							<td><%=auto.getPatente()%></td>
							<td><%=auto.getMarca()%> <%=auto.getModelo()%></td>
							<td><%if(auto.getAnio() != 0) {%><%=auto.getAnio()%><%}%></td>
							<td><%=auto.getCantKM()%></td>
							<td>
								<div>
								<a href="EditarVehiculo.jsp?patente=<%=auto.getPatente()%>&marca=<%=auto.getMarca()%>&modelo=<%=auto.getModelo()%>&anio=<%=auto.getAnio()%>&cantidad_km=<%=auto.getCantKM()%>" class="btn btn-warning btn-sm">Modificar</a>
								<a href="ConfirmacionEliminarVehiculo.jsp?patente=<%=auto.getPatente()%>&marca=<%=auto.getMarca()%>&modelo=<%=auto.getModelo()%>&nombre_y_apellido=<%=auto.getCli().getNombre_y_apellido()%>" class="btn btn-danger btn-sm">Eliminar</a>
								</div>							
							</td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
				<a href="MostrarVehiculosPorCliente.jsp"><< Volver</a>
			</div>
		</div>
	</div>
</body>
</html>