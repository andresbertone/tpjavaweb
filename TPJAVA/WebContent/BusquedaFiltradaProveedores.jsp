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
<title>Administracion de proveedores</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="bootstrap/css/estilo.css" rel="stylesheet" type="text/css"/>
</head>
<div id=titulo><label><b>ADMINISTRACION DE PROVEEDORES</b></label></div>
<div class= "container buscar">
	<button type="button" onclick = "location='AgregarProveedor.jsp'" class="btn btn-success">+ Nuevo</button>
</div>
<body>
<%
	ArrayList<Proveedor> misProveedores = (ArrayList<Proveedor>)request.getSession().getAttribute("misProveedores");
%>
		
<div class="container">
  <div class="row">
    <div class="col-12">
      <table class="table table-bordered">
        <thead>
          <tr>
          	<th scope="col"></th>
            <th scope="col">CUIT</th>
            <th scope="col">RAZON SOCIAL</th>
            <th scope="col">TELEFONO</th>
            <th scope="col">MAIL</th>
            <th scope="col">ACCION</th>
          </tr>
        </thead>
        <tbody>
        
         <% for (Proveedor prov : misProveedores) {%>
		      <tr>
		      	<td>
                 <div class="radio">
                     <label><input type="radio" id='express' name="optradio"></label>
                </div>
             </td>
		        <td><%=prov.getCuit()%></td>
		        <td><%=prov.getRazonSocial()%></td>
		        <td><%=prov.getTelefono()%></td>
		        <td><%=prov.getMail()%></td>
		        <td><div><button type="button" class="btn btn-warning btn-sm">Modificar</button>
		        <button type="button" class="btn btn-danger btn-sm">Eliminar</button></div></td>
		      </tr>
		      <%}%>
        </tbody>
      </table>
    </div>
  </div>
</div>
</body>
</html>