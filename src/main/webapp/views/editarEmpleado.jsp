<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Editar Empleado</title>
</head>
<body>
    <h1>Buscar y Editar Empleado</h1>
    
    <!-- Formulario para Filtrar Empleados -->
    <form action="empleado" method="get">
        <input type="hidden" name="opcion" value="filtrar">
        <table>
            <tr>
                <td>DNI:</td>
                <td><input type="text" name="dni"></td>
            </tr>
            <tr>
                <td>Nombre:</td>
                <td><input type="text" name="nombre"></td>
            </tr>
            <tr>
                <td>Sexo:</td>
                <td><input type="text" name="sexo"></td>
            </tr>
            <tr>
                <td>Categoría:</td>
                <td><input type="text" name="categoria"></td>
            </tr>
            <tr>
                <td>Años:</td>
                <td><input type="text" name="anyos"></td>
            </tr>
        </table>
        <input type="submit" value="Buscar">
    </form>

    <!-- Formulario para Editar Empleado -->
    <c:if test="${not empty empleado}">
        <h2>Editar Empleado</h2>
        <form action="empleado" method="post">
            <input type="hidden" name="opcion" value="editar">
            <input type="hidden" name="dni" value="${empleado.dni}">
            <table border="1">
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="nombre" size="50" value="${empleado.nombre}"></td>
                </tr>
                <tr>
                    <td>Sexo:</td>
                    <td><input type="text" name="sexo" size="50" value="${empleado.sexo}"></td>
                </tr>
                <tr>
                    <td>Categoría:</td>
                    <td><input type="text" name="categoria" size="50" value="${empleado.categoria}"></td>
                </tr>
                <tr>
                    <td>Años:</td>
                    <td><input type="text" name="anyos" size="50" value="${empleado.anyos}"></td>
                </tr>
            </table>
            <input type="submit" value="Guardar">
        </form>
    </c:if>
</body>
</html>
