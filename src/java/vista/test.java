package vista;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servicio.UbigeoServicio;
import servicio.UbigeoServicioImp;

@WebServlet(name = "test", urlPatterns = {"/test"})
public class test extends HttpServlet {

    private UbigeoServicio ubiSer;

    public test() {
        ubiSer = new UbigeoServicioImp();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String acc = request.getParameter("acc");

            if (acc.equals("Registrarse")) {
                
                //ubigeo ---->
                String dep = request.getParameter("selectDepartamento");
                String pro = request.getParameter("selectProvincia");
                String dis = request.getParameter("selectDistrito");

                List lisDep = ubiSer.listarDep(dep);
                Object[] f = (Object[]) lisDep.get(1);
                String codDep= (String) f[0];
                
                List lisPro = ubiSer.listarPro(codDep, pro);
                Object[] x = (Object[]) lisPro.get(1);
                String codPro= (String) x[0];
                
                List lisDis = ubiSer.listarDis(codDep, dis, codPro);
                Object[] e =(Object[]) lisDis.get(1);
                String codDis=(String) e[0];
                //<----ubigeo
                
                System.out.println(codDep);
                System.out.println(codPro);
                System.out.println(codDis);
                
                response.sendRedirect("Login.jsp");

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
