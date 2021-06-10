package vista;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servicio.*;

@WebServlet(name = "pedidoControl", urlPatterns = {"/pedidoControl"})
public class pedidoControl extends HttpServlet {

    private pedidoServicio peSer;

    public pedidoControl() {
        peSer = new pedidoServicioImp();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String acc = request.getParameter("acc");

        if (acc.equals("Pedidos")) {

            response.sendRedirect("Intranet/Admin/pedidos.jsp");

        }
        if (acc.equals("Buscar")) {
            int cod = Integer.parseInt(request.getParameter("cod"));
            Object[] fill = peSer.buscar(cod);
            if (fill != null) {
                request.getSession().setAttribute("fill", fill);
                response.sendRedirect("Intranet/Admin/pedidos.jsp");
            }else{
                System.out.println("no se encuentra en la db");
            }

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
