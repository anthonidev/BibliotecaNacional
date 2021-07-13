package vista;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servicio.BoletaServicio;
import servicio.BoletaServicioImp;
import servicio.DevolucionServicioImp;
import servicio.PedidoServicio;
import servicio.PedidoServicioImp;
import servicio.DevolucionServicio;

@WebServlet(name = "DevolcucionControl", urlPatterns = {"/DevolcucionControl"})
public class DevolcucionControl extends HttpServlet {

    private BoletaServicio boSer;
    private PresentadorGeneral pg;
    private PedidoServicio peSer;
    private DevolucionServicio deSer;

    public DevolcucionControl() {
        boSer = new BoletaServicioImp();
        pg = new PresentadorGeneral();
        peSer = new PedidoServicioImp();
        deSer = new DevolucionServicioImp();

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acc = request.getParameter("acc");
        if (acc.equals("Devolucion")) {
            pg = new PresentadorGeneral();
            request.getSession().setAttribute("pg", pg);

            response.sendRedirect("Intranet/Admin/Devoluciones.jsp");

        }

        if (acc.equals("Buscar") || acc.equals("Ver Detalles")) {
            int cod = Integer.parseInt(request.getParameter("cod"));
            Object[] fill = boSer.buscarBoleta(cod);
            int pedido = (int) fill[7];
            List lisP = peSer.listarDetalle(pedido);

            //Resta de fechas 
            LocalDate mora = LocalDate.parse(fill[6].toString());
            long dias = ChronoUnit.DAYS.between(mora, LocalDateTime.now());
            if (dias > 0) {
                pg.setDias(dias);
            }

            pg.setListaDetalle(lisP);
            if (fill != null) {
                pg.setBoletaObj(fill);
                request.getSession().setAttribute("fill", fill);
                response.sendRedirect("Intranet/Admin/Devoluciones.jsp");

            } else {
                pg.setMsg("No exite el pedido");
                response.sendRedirect("Intranet/Admin/boletas.jsp");
            }
        }
        if (acc.equals("Realizar Evaluacion")) {
            String libros = request.getParameter("libros");
            String dias = request.getParameter("dias");
            pg.setPrecioTotal(deSer.CalcularDevolucion(libros, dias));
            System.out.println(deSer.CalcularDevolucion(libros, dias));
            response.sendRedirect("Intranet/Admin/Devoluciones.jsp");

        }
        if (acc.equals("Devolucion Concretada")) {
            String cod = request.getParameter("cod");
            String total = request.getParameter("total");
            LocalDateTime fecha = LocalDateTime.now();
            
            String msg =deSer.RegistrarDevolucion(cod, fecha.format(DateTimeFormatter.ofPattern("yyyy-MM-dd")), total);
            pg.setMsg(msg);
            response.sendRedirect("Intranet/Admin/Devoluciones.jsp");

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
