<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="bootstrap/css/estilo.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<%
		session.invalidate();
	%>	
	<div id="cuadro">
		<div id= "cabeza"><b>INGRESO</b></div>
		<div id= "cuerpo">
			<form method="POST" action= "SignIn">
  				<div class="form-group">
    				<label for="inputUsuario">Usuario</label>
    				<input type="text" style= width:524px name="usuario" class="form-control" id="usuario" placeholder="Usuario" autocomplete="off" required/>
  				</div>
  				<div class="form-group">
    				<label for="InputPassword">Contraseņa</label>
    				<label><input type="password" style= width:524px name="contrasenia" class="form-control" id="contrasenia" placeholder="Contraseņa" autocomplete="off" required/></label>
  				</div>
  				<button type="submit" class="btn btn-success">Ingresar</button>
			</form>
		</div>
	</div>
</body>
</html>