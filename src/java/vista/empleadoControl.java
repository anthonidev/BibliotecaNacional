package vista;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servicio.*;

@WebServlet(name = "empleadoControl", urlPatterns = {"/empleadoControl"})
public class empleadoControl extends HttpServlet {

    private cuentaServicio cuSer;
    private tipoServicio tipSer;
    private empleadoServicio empSer;
    private personaServicio perSer;

    public empleadoControl() {
        cuSer = new cuentaServicioImp();
        tipSer = new tipoServicioImp();
        empSer = new empleadoServicioImp();
        perSer = new personaServicioImp();

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acc = request.getParameter("acc");
        if (acc.equals("Iniciar")) {
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
            Object[] fil = cuSer.validar(user, pass);
            if (fil != null) {
                //validar a que cargo pertenece
                Object[] emp = empSer.buscar((int) fil[0]);
                Object[] tip = tipSer.buscar((int) emp[2]);

                switch (tip[1].toString()) {
                    case "admin":
                        Object[] per = perSer.buscarId((int) emp[0]);
                        request.getSession().setAttribute("per", per);
                        request.getSession().setAttribute("tip", tip);
                        request.getSession().setAttribute("fil", fil);
                        response.sendRedirect("Intranet/Admin/index.jsp");
                        break;
                }

            } else {
                request.getSession().setAttribute("msg", "ACCESO NO PERMITIDO");
                response.sendRedirect("mensajes/ErrorLogin.jsp");
            }
        }
        if (acc.equals("Cerrar")) {
            request.getSession().invalidate();
             response.sendRedirect("Intranet.jsp");

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
