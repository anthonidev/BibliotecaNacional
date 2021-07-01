package vista;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servicio.BoletaServicioImp;
import servicio.ClienteServicioImp;
import servicio.PedidoServicio;
import servicio.PedidoServicioImp;

@WebServlet(name = "BoletaControl", urlPatterns = {"/BoletaControl"})
public class BoletaControl extends HttpServlet {
    
    private PedidoServicio peSer;
    private PresentadorGeneral pg;

    public BoletaControl() {
        peSer = new PedidoServicioImp();
        
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String acc = request.getParameter("acc");

        if (acc.equals("Boletas")) {
            pg = new PresentadorGeneral();

            request.getSession().setAttribute("pg", pg);
            response.sendRedirect("Intranet/Admin/boletas.jsp");
        }
        
        if (acc.equals("Buscar") || acc.equals("Ver Detalles")) {
            int cod = Integer.parseInt(request.getParameter("cod"));
            Object[] fill = peSer.buscar(cod);
            List lisP = peSer.listarDetalle(cod);
            pg.setListaDetalle(lisP);
            if (fill != null) {
                pg.setPedido(fill);
                
                request.getSession().setAttribute("fill", fill);
                response.sendRedirect("Intranet/Admin/boletas.jsp");
            } else {
                pg.setMsg("No exite el pedido");
                response.sendRedirect("Intranet/Admin/boletas.jsp");
            }
        }
        
        if (acc.equals("Limpiar")) {
            Object[] vacio = {"", "", "", "", "", "", "", ""};
            List vacio2=new ArrayList();
            pg.setPedido(vacio);
            pg.setListaDetalle(vacio2);
            response.sendRedirect("Intranet/Admin/boletas.jsp");
        }
        
        if (acc.equals("Generar Boleta")) {
            int codPedido = Integer.parseInt(request.getParameter("codPedido"));
            int codEmpleado = Integer.parseInt(request.getParameter("codEmpleado"));
            double total = Double.parseDouble(request.getParameter("total"));
            
            String msg=new BoletaServicioImp().grabar(codPedido, codEmpleado, LocalDate.now().toString(), LocalDate.now().plusDays(30).toString(), total);
            pg.setMsg(msg);
            
            response.sendRedirect("Intranet/Admin/boletas.jsp");
        }
        
        if (acc.equals("Exportar PDF")) {
            String idBoleta = request.getParameter("idBoleta");
            int idPedido = Integer.parseInt(request.getParameter("idPedido"));
            String fecha = request.getParameter("fecha");
            
            Object[] ped = peSer.buscar(idPedido);
            Object[] cli = new ClienteServicioImp().buscarCliente(ped[3].toString());
            List lisP = peSer.listarDetalle(idPedido);
            response.setContentType("application/pdf");
            
            BoletaPDF PDF=new BoletaPDF(idBoleta, String.valueOf(idPedido), fecha, cli, lisP);
            PDF.crearPDF(response);
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
