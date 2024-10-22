package com.aprendec.controller;

import com.aprendec.dao.EmpleadoDAO;
import com.aprendec.exceptions.DatosNoCorrectosException;
import com.aprendec.model.Empleado;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/empleado")
public class EmpleadoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EmpleadoDAO empleadoDAO;

    @Override
    public void init() throws ServletException {
        empleadoDAO = new EmpleadoDAO(); 
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opcion = request.getParameter("opcion");

        if ("listar".equals(opcion)) {
            List<Empleado> listaEmpleados = empleadoDAO.obtenerEmpleados(); // Obtiene la lista de empleados
            request.setAttribute("lista", listaEmpleados); // Establece la lista en el request
            request.getRequestDispatcher("views/listar.jsp").forward(request, response); // Redirige a la vista
        } else if ("buscarSueldo".equals(opcion)) {
            request.setAttribute("empleadoDAO", empleadoDAO); // Pasar el DAO al JSP
            request.getRequestDispatcher("views/buscarSueldo.jsp").forward(request, response); // Redirige al JSP de búsqueda
        } else if ("filtrar".equals(opcion)) {
            // Maneja el filtrado
            String dni = request.getParameter("dni");
            String nombre = request.getParameter("nombre");
            String sexo = request.getParameter("sexo");
            String categoria = request.getParameter("categoria");
            String anyosStr = request.getParameter("anyos");
            Integer anyos = (anyosStr != null && !anyosStr.isEmpty()) ? Integer.parseInt(anyosStr) : null;

            try {
                List<Empleado> empleadosFiltrados = empleadoDAO.filtrarEmpleados(dni, nombre, sexo, categoria, anyos);
                System.out.println("Número de empleados encontrados: " + empleadosFiltrados.size());
                request.setAttribute("filtro", empleadosFiltrados); 
                request.getRequestDispatcher("views/resultadoFiltrado.jsp").forward(request, response); // Redirige a la vista con resultados filtrados
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (DatosNoCorrectosException e) {
			
				e.printStackTrace();
			}
        }else if ("editarEmpleado".equals(opcion)) {
            request.getRequestDispatcher("/views/editarEmpleado.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opcion = request.getParameter("opcion");

        if ("buscarSueldo".equals(opcion)) {
            String dni = request.getParameter("dni");

            try {
                Double salario = empleadoDAO.obtenerSueldoPorDni(dni);
                request.setAttribute("salario", salario);
                request.setAttribute("dni", dni);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/resultadoSueldo.jsp");
                requestDispatcher.forward(request, response);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else if ("editar".equals(opcion)) {
            // Manejar la edición del empleado
            String dni = request.getParameter("dni");
            try {
                Empleado empleado = empleadoDAO.obtenerEmpleadoPorDni(dni); // Asegúrate de tener este método en tu DAO
                request.setAttribute("empleado", empleado);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/editarEmpleado.jsp"); // Asegúrate de que el JSP se llame correctamente
                requestDispatcher.forward(request, response);
            } catch (DatosNoCorrectosException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
    }
}
