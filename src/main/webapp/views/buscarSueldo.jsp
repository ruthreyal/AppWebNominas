<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Buscar Sueldo</title>
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
    <h1>Buscar Sueldo de Empleado</h1>
    <form action="empleado" method="post">
        <input type="hidden" name="opcion" value="buscar">
        <label for="dni">Ingrese el DNI del Empleado:</label>
        <input type="text" id="dni" name="dni" required>
        <button type="submit">Consultar</button>
    </form>
    <a href="index.jsp">Volver al men�</a>
</body>
</html>

