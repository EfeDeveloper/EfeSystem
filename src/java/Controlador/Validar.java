package Controlador;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Validar extends HttpServlet {

    EmpleadoDAO edao;
    Empleado em;

    public Validar() {
        this.em = new Empleado();
        this.edao = new EmpleadoDAO();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //captura de petición del usuario ↓
        String ejecutar = request.getParameter("enviar");
        /*si la variable accion es igual al boton ingresar 
        capturara los datos ingresados ↓ */
        if (ejecutar.equalsIgnoreCase("Login")) {
            String usuario = request.getParameter("TUsu");
            String contraseña = request.getParameter("TPass");
            /*em.setUsuario(usuario);
            em.setContraseña(contraseña);*/
            em = edao.validar(usuario, contraseña);
            if (em.getNombres() != null) {
                //nos permite obtener el usuario registrado en la sesion ↓
                request.setAttribute("usuario" , em);
                request.getRequestDispatcher("Controlador?menu=Principal").forward(request, response);
            } else {
                //si el usuario esta vacio o no es valido nos manda al index ↓
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } else {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
