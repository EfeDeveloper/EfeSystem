package Modelo;

import configuraciones.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmpleadoDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;

    //Validación login
    public Empleado validar(String usu, String contra) {

        Empleado em = new Empleado();

        String sql = "select * from empleado where usuario=? and contraseña=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, usu);
            ps.setString(2, contra);
            rs = ps.executeQuery();
            while (rs.next()) {
                em.setNombres(rs.getString("nombres"));
                em.setUsuario(rs.getString("usuario"));
                em.setContraseña(rs.getString("contraseña"));
            }

        } catch (SQLException e) {
        }
        return em;
    }

    //CRUD
    public List list() {
        String sql = "select * from empleado";
        List<Empleado> list = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Empleado em = new Empleado();
                em.setId(rs.getInt(1));
                em.setDocumento(rs.getString(2));
                em.setNombres(rs.getString(3));
                em.setApellido(rs.getString(4));
                em.setContraseña(rs.getString(5));
                em.setTelefono(rs.getString(6));
                em.setUsuario(rs.getString(7));
                em.setEstado(rs.getString(8));
                list.add(em);

            }
        } catch (SQLException e) {

        }
        return list;
    }

    public int Add(Empleado em) {
        String sql = "insert into empleado (documentId, nombres, apellido, contraseña, telefono, usuario, estado) values (?,?,?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, em.getDocumento());
            ps.setString(2, em.getNombres());
            ps.setString(3, em.getApellido());
            ps.setString(4, em.getContraseña());
            ps.setString(5, em.getTelefono());
            ps.setString(6, em.getUsuario());
            ps.setString(7, em.getEstado());
            ps.executeUpdate();

        } catch (SQLException e) {
        }
        return r;
    }

    public Empleado listarId(int id) {
        Empleado emp = new Empleado();
        String sql = "select *from empleado where idEmpleado=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                emp.setDocumento(rs.getString(2));
                emp.setNombres(rs.getString(3));
                emp.setApellido(rs.getString(4));
                emp.setContraseña(rs.getString(5));
                emp.setTelefono(rs.getString(6));
                emp.setUsuario(rs.getString(7));
                emp.setEstado(rs.getString(8));

            }
        } catch (SQLException e) {
        }
        return emp;
    }

    public int Edit(Empleado em) {
        String sql = "update empleado set documentId=?, nombres=?, apellido=?, contraseña=?, telefono=?, usuario=?, estado=? where idEmpleado=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, em.getDocumento());
            ps.setString(2, em.getNombres());
            ps.setString(3, em.getApellido());
            ps.setString(4, em.getContraseña());
            ps.setString(5, em.getTelefono());
            ps.setString(6, em.getUsuario());
            ps.setString(7, em.getEstado());
            ps.setInt(8, em.getId());
            ps.executeUpdate();

        } catch (SQLException e) {
        }
        return r;

    }

    public void Delete(int id) {
        String sql = "delete from empleado where idEmpleado=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

}
