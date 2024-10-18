package com.aprendec.dao;

import com.aprendec.conexion.Conexion;
import com.aprendec.exceptions.DatosNoCorrectosException;
import com.aprendec.model.Empleado;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmpleadoDAO {
    // Método para obtener todos los empleados
    public List<Empleado> obtenerEmpleados() {
        List<Empleado> empleados = new ArrayList<>();
        Connection connection = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            connection = Conexion.getConnection();
            String sql = "SELECT dni, nombre, sexo, categoria, anyos FROM empleados"; // Ajusta la consulta según tu tabla
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                try {
                    Empleado empleado = new Empleado(
                        rs.getString("dni"),
                        rs.getString("nombre"),
                        rs.getString("sexo").charAt(0),
                        rs.getInt("categoria"),
                        rs.getInt("anyos")
                    );
                    empleados.add(empleado);
                } catch (DatosNoCorrectosException e) {
                    e.printStackTrace(); 
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); 
        } finally {
            
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                Conexion.closeConnection(connection);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return empleados; 
    }

    // Método para obtener el sueldo por DNI
    public Double obtenerSueldoPorDni(String dni) throws SQLException {
    	Double salario = null;

        String sql = "SELECT sueldo_final FROM nominas WHERE dni = ?";

        Connection connection = obtenerConexion();



        try {

            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, dni);

            ResultSet rs = statement.executeQuery();

            if (rs.next()) {

                salario = rs.getDouble("sueldo_final");

            }

            statement.close();

            connection.close();

        } catch (SQLException e) {

            e.printStackTrace();

        }

        return salario; 
    }

    // Método para obtener un empleado por DNI
    public Empleado obtenerEmpleadoPorDni(String dni) throws DatosNoCorrectosException {
        Empleado empleado = null;
        Connection connection = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            connection = Conexion.getConnection();
            String sql = "SELECT dni, nombre, sexo, categoria, anyos FROM empleados WHERE dni = ?"; // Consulta para buscar por DNI
            ps = connection.prepareStatement(sql);
            ps.setString(1, dni);
            rs = ps.executeQuery();

            if (rs.next()) {
                empleado = new Empleado(
                    rs.getString("dni"),
                    rs.getString("nombre"),
                    rs.getString("sexo").charAt(0),
                    rs.getInt("categoria"),
                    rs.getInt("anyos")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace(); 
        } finally {
           
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                Conexion.closeConnection(connection);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return empleado;
    }
    
    private Connection obtenerConexion() throws SQLException{
    	return Conexion.getConnection();
    }
}
