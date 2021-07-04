package vista;

import servicio.PedidoServicioImp;
import servicio.PedidoServicio;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PedidoControl", urlPatterns = {"/PedidoControl"})
public class PedidoControl extends HttpServlet {

    private PedidoServicio peSer;
    private PresentadorGeneral pg;

    public PedidoControl() {
        peSer = new PedidoServicioImp();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String acc = request.getParameter("acc");

        if (acc.equals("Pedidos")) {
            pg = new PresentadorGeneral();

            //listar pedidos(pendiente,aprovado, rechazado)
            List Pendiente = peSer.listarPedido(0);
            List Aceptados = peSer.listarPedido(1);
            List Rechazados = peSer.listarPedido(2);

            request.getSession().setAttribute("Pendiente", Pendiente);
            request.getSession().setAttribute("Aceptados", Aceptados);
            request.getSession().setAttribute("Rechazados", Rechazados);

            request.getSession().setAttribute("pg", pg);
            response.sendRedirect("Intranet/Admin/pedidos.jsp");
        }

        if (acc.equals("Buscar")) {
            int cod = Integer.parseInt(request.getParameter("cod"));
            Object[] fill = peSer.buscar(cod);
            List lisP = peSer.listarDetalle(cod);
            pg.setListaDetalle(lisP);
            if (fill != null) {
                pg.setPedido(fill);
                request.getSession().setAttribute("fill", fill);

                List Pendiente = peSer.listarPedido(0);
                List Aceptados = peSer.listarPedido(1);
                List Rechazados = peSer.listarPedido(2);

                request.getSession().setAttribute("Pendiente", Pendiente);
                request.getSession().setAttribute("Aceptados", Aceptados);
                request.getSession().setAttribute("Rechazados", Rechazados);

                response.sendRedirect("Intranet/Admin/pedidos.jsp");
            } else {
                Object[] vacio = {"", "", "", "", "", "", "", ""};
                pg.setPedido(vacio);
                pg.setMsg("No exite el pedido!!");
                response.sendRedirect("Intranet/Admin/pedidos.jsp");
            }
        }

        if (acc.equals("Limpiar")) {
            Object[] vacio = {"", "", "", "", "", "", "", "", "", "", "", "", "", ""};
            List vacio2 = new ArrayList();
            pg.setPedido(vacio);
            pg.setListaDetalle(vacio2);
            response.sendRedirect("Intranet/Admin/pedidos.jsp");
        }

        if (acc.equals("Aceptar Pedido")) {
            int cod = Integer.parseInt(request.getParameter("cod"));
            String cargo = request.getParameter("cargo");
            String msg = peSer.aprobarPedido(cod);
            if (msg == null) {
                //actualizar tabla
                Object[] fill = peSer.buscar(cod);
                pg.setPedido(fill);
                request.getSession().setAttribute("fill", fill);

                List Pendiente = peSer.listarPedido(0);
                List Aceptados = peSer.listarPedido(1);
                List Rechazados = peSer.listarPedido(2);

                request.getSession().setAttribute("Pendiente", Pendiente);
                request.getSession().setAttribute("Aceptados", Aceptados);
                request.getSession().setAttribute("Rechazados", Rechazados);
            }
            if (cargo.equals("jefecontrol")) {
                response.sendRedirect("Intranet/JefeControl/pedidos.jsp");

            } else {
                response.sendRedirect("Intranet/Admin/pedidos.jsp");

            }
        }

        if (acc.equals("Rechazar Pedido")) {
            String cargo = request.getParameter("cargo");

            int cod = Integer.parseInt(request.getParameter("cod"));
            String msg = peSer.negarPedido(cod);
            if (msg == null) {
                Object[] fill = peSer.buscar(cod);
                pg.setPedido(fill);
                request.getSession().setAttribute("fill", fill);

                List Pendiente = peSer.listarPedido(0);
                List Aceptados = peSer.listarPedido(1);
                List Rechazados = peSer.listarPedido(2);

                request.getSession().setAttribute("Pendiente", Pendiente);
                request.getSession().setAttribute("Aceptados", Aceptados);
                request.getSession().setAttribute("Rechazados", Rechazados);
            }
            if (cargo.equals("jefecontrol")) {
                response.sendRedirect("Intranet/JefeControl/pedidos.jsp");

            } else {
                response.sendRedirect("Intranet/Admin/pedidos.jsp");

            }
        }

        if (acc.equals("Ver Detalles")) {
            pg = new PresentadorGeneral();

            String cargo = request.getParameter("cargo");
            int cod = Integer.parseInt(request.getParameter("cod"));
            Object[] fill = peSer.buscar(cod);
            List lisP = peSer.listarDetalle(cod);
            pg.setListaDetalle(lisP);
            if (fill != null) {
                pg.setPedido(fill);
                request.getSession().setAttribute("fill", fill);
                request.getSession().setAttribute("pg", pg);

                if ("Jefe de Control".equals(cargo)) {
                    response.sendRedirect("Intranet/JefeControl/pedidos.jsp");
                } else {
                    response.sendRedirect("Intranet/Admin/pedidos.jsp");

                }

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
