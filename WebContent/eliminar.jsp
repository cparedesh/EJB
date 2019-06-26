<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="javax.naming.InitialContext"%>
<%@page import="cl.model.ServicioLocal"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  

  <!DOCTYPE html>
  <html>
    <head>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>

    <body>
    
    	<div class="row">
    		<div class="col s6 offset-s3">
    			<div class="card-panel">
    				<h4 class="center-align">Eliminar</h4>
    				<form action="control.do" method="post">
    					<div class="row">
							<div class="input-field">
								<input 
									id="nombre" name="nombre" type="text" value="${param.nombre}"> <label
									for="nombre">Nombre</label>
							</div>
							<div class="input-field">
								<input 
									id="apellido" name="apellido" type="text" value="${param.apellido}"> <label
									for="apellido">Apellido</label>
							</div>
							<div class="input-field">
								<input
									id="rut" name="rut" type="text" value="${param.rut}"> <label
									for="rut">RUT</label>
							</div>
							<button name="boton" value="eliminar" type="submit" class="btn right red" >
								Eliminar
							</button>
						</div>
    				</form>
    			</div>
    		</div>
    	</div>
      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
  </html>
        