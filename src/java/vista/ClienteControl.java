package vista;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servicio.*;

@WebServlet(name = "ClienteControl", urlPatterns = {"/ClienteControl"})
public class ClienteControl extends HttpServlet {

    private ClienteServicio cliSer;
    private PresentadorGeneral pg;

    public ClienteControl() {
        cliSer = new ClienteServicioImp();
        pg = new PresentadorGeneral();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String acc = request.getParameter("acc");
        request.getSession().setAttribute("pg", pg);
        
        if (acc.equals("Clientes")) {
            response.sendRedirect("Intranet/Admin/cliente.jsp");
        }

        if (acc.equals("Buscar") || acc.equals("Ver Detalles")) {
            String dni = request.getParameter("dni");
            Object[] fill = cliSer.buscarCliente(dni);

            if (fill != null) {
                pg.setCliente(fill);
                response.sendRedirect("Intranet/Admin/cliente.jsp");
            } else {
                pg.setMsg("No exite el cliente!!");
                response.sendRedirect("Intranet/Admin/cliente.jsp");
            }
        }

        if (acc.equals("Limpiar")) {
            Object[] vacio = {"", "", "", "", "", "", "", "", "", "", "", ""};
            pg.setCliente(vacio);
            response.sendRedirect("Intranet/Admin/cliente.jsp");
        }

        if (acc.equals("Registrar")) {
            String nombre = request.getParameter("nom");
            String apellido = request.getParameter("ape");
            String dni = request.getParameter("dni");
            String direccion = request.getParameter("dir");
            String telefono = request.getParameter("tel");
            String fecha = request.getParameter("fec");
            String dep = new String(request.getParameter("selectDepartamento").getBytes("ISO-8859-1"), "UTF-8").replace("_", " ");
            String pro = new String(request.getParameter("selectProvincia").getBytes("ISO-8859-1"), "UTF-8").replace("_", " ");
            String dis = new String(request.getParameter("selectDistrito").getBytes("ISO-8859-1"), "UTF-8").replace("_", " ");
            String usuario = request.getParameter("user");
            String password = request.getParameter("pass");

            String msg = cliSer.grabarCliente(nombre, apellido, dni, direccion, telefono, fecha, dep, pro, dis, usuario, password);
            pg.setMsg(msg);

            response.sendRedirect("Intranet/Admin/cliente.jsp");
        }
        
        if (acc.equals("Actualizar")) {
            String dni = request.getParameter("dni");
            String direccion = request.getParameter("direccion");
            String telefono = request.getParameter("telefono");
            String dep = new String(request.getParameter("selectDepartamento2").getBytes("ISO-8859-1"), "UTF-8").replace("_", " ");
            String pro = new String(request.getParameter("selectProvincia2").getBytes("ISO-8859-1"), "UTF-8").replace("_", " ");
            String dis = new String(request.getParameter("selectDistrito2").getBytes("ISO-8859-1"), "UTF-8").replace("_", " ");
            String usuario = request.getParameter("usuario");

            String msg = cliSer.actualizarCliente(dni, direccion, telefono, dep, pro, dis, usuario);
            Object[] fill = cliSer.buscarCliente(dni);
            pg.setCliente(fill);
            pg.setMsg(msg);

            response.sendRedirect("Intranet/Admin/cliente.jsp");
        }

        if (acc.equals("Eliminar")) {
            int cod = Integer.parseInt(request.getParameter("cod"));
            String usu = request.getParameter("usu");
            String msg = cliSer.eliminarCliente(cod, usu);
            Object[] vacio = {"", "", "", "", "", "", "", "", "", "", "", ""};
            pg.setCliente(vacio);
            pg.setMsg(msg);

            response.sendRedirect("Intranet/Admin/cliente.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
