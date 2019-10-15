package Controlador;

import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador extends HttpServlet {

    Empleado em;
    EmpleadoDAO edao;

    public Controlador() {
        this.edao = new EmpleadoDAO();
        this.em = new Empleado();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /*Variable que recibe la accion determinada
        por el usuario ejecutando la opción correspondiente↓*/
        String menu = request.getParameter("menu");
        String ejecutar = request.getParameter("ejecutar");
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
        }
        if (menu.equals("Productos")) {
            request.getRequestDispatcher("Producto.jsp").forward(request, response);
        }
        if (menu.equals("Empleado")) {
            switch (ejecutar) {
                case "List":
                    List list = edao.list();
                    request.setAttribute("empl", list);
                    break;
                case "Add":

                    break;
                case "Edit":

                    break;
                case "Delete":

                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Empleado.jsp").forward(request, response);

        }
        if (menu.equals("Cliente")) {
            request.getRequestDispatcher("Clientes.jsp").forward(request, response);
        }
        if (menu.equals("NuevaVenta")) {
            request.getRequestDispatcher("RegistroVenta.jsp").forward(request, response);
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
        processRequest(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
