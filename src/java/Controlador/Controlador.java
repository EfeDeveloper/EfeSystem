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
    int idempl;

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
                    String doc = request.getParameter("TDoc");
                    String nom = request.getParameter("TNom");
                    String ape = request.getParameter("TApe");
                    String con = request.getParameter("TCon");
                    String tel = request.getParameter("TTel");
                    String usu = request.getParameter("TUsua");
                    String est = request.getParameter("TEst");
                    em.setDocumento(doc);
                    em.setNombres(nom);
                    em.setApellido(ape);
                    em.setContraseña(con);
                    em.setTelefono(tel);
                    em.setUsuario(usu);
                    em.setEstado(est);
                    edao.Add(em);
                    request.getRequestDispatcher("Controlador?Empleado=Controlador&ejecutar=List").forward(request, response);
                    break;
                case "Edit":
                    idempl = Integer.parseInt(request.getParameter("id"));
                    Empleado e = edao.listarId(idempl);
                    request.setAttribute("empleado", e);
                    request.getRequestDispatcher("Controlador?menu=Empleado&ejecutar=List").forward(request, response);
                    break;
                case "Update":
                    String docum = request.getParameter("TDoc");
                    String nomb = request.getParameter("TNom");
                    String apell = request.getParameter("TApe");
                    String contr = request.getParameter("TCon");
                    String tele = request.getParameter("TTel");
                    String usua = request.getParameter("TUsua");
                    String esta = request.getParameter("TEst");
                    em.setDocumento(docum);
                    em.setNombres(nomb);
                    em.setApellido(apell);
                    em.setContraseña(contr);
                    em.setTelefono(tele);
                    em.setUsuario(usua);
                    em.setEstado(esta);
                    em.setId(idempl);
                    edao.Edit(em);
                    request.getRequestDispatcher("Controlador?menu=Empleado&ejecutar=List").forward(request, response);
                    break;

                case "Delete":
                    idempl = Integer.parseInt(request.getParameter("id"));
                    edao.Delete(idempl);
                    request.getRequestDispatcher("Controlador?menu=Empleado&ejecutar=List").forward(request, response);
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
