<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Resultados de Búsqueda</title>
</head>
<body>
    <h1>Resultados de Búsqueda</h1>
    <c:if test="${not empty lista}">
        <table border="1">
            <tr>
                <th>DNI</th>
                <th>Nombre</th>
                <th>Sexo</th>
                <th>Categoría</th>
                <th>Años</th>
                <th>Acciones</th>
            </tr>
            <c:forEach var="empleado" items="${filtro}">
                <tr>
                    <td>${empleado.dni}</td>
                    <td>${empleado.nombre}</td>
                    <td>${empleado.sexo}</td>
                    <td>${empleado.categoria}</td>
                    <td>${empleado.anyos}</td>
                    <td>
                        <a href="empleado?opcion=editarEmpleado&dni=${empleado.dni}">Editar</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <c:if test="${empty lista}">
        <p>No se encontraron empleados.</p>
    </c:if>
</body>
</html>
