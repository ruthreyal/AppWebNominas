<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Buscar Empleado</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 20px; }
        h1 { color: #333; }
        form { margin: 20px auto; width: 300px; }
        label, input { display: block; margin: 10px 0; }
        button { background-color: #007BFF; color: white; border: none; padding: 10px; cursor: pointer; }
        button:hover { background-color: #0056b3; }
    </style>
</head>
<body>
    <h1>Buscar Empleado</h1>
    <form action="empleado" method="post">
        <input type="hidden" name="opcion" value="buscarEmpleado">
        <label for="dni">DNI:</label>
        <input type="text" id="dni" name="dni">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre">
        <label for="sexo">Sexo (M/F):</label>
        <input type="text" id="sexo" name="sexo" maxlength="1" pattern="[MFmf]">
        <label for="categoria">Categor�a:</label>
        <input type="number" id="categoria" name="categoria">
        <label for="anyos">A�os de Servicio:</label>
        <input type="number" id="anyos" name="anyos">
        <button type="submit">Buscar</button>
    </form>
    <a href="index.jsp">Volver al men�</a>
</body>
</html>

