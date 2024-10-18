<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.aprendec.dao.EmpleadoDAO" %>
<%@ page import="com.aprendec.model.Empleado" %>
<%@ page import="com.aprendec.exceptions.DatosNoCorrectosException" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Buscar Sueldo</title>
</head>
<body>
    <h1>Buscar Sueldo de Empleado</h1>
    <form action="empleado" method="post">
    <label for="dni">DNI:</label>
     <input type="hidden" name="opcion" value="buscarSueldo">

        <label for="dni">Ingrese el DNI del Empleado:</label>

        <input type="text" id="dni" name="dni" required>

        <button type="submit">Consultar</button>
</form>
 <a href="index.jsp">Volver al menú</a>

</body>
</body>
</html>
