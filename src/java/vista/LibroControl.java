package vista;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servicio.LibroServicioImp;
import servicio.LibroServicio;

@WebServlet(name = "libroControl", urlPatterns = {"/libroControl"})
public class LibroControl extends HttpServlet {

    private LibroServicio libSer;

    public LibroControl() {
        libSer = new LibroServicioImp();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String acc = request.getParameter("acc");
        
        if (acc.equals("Buscar")) {
            int cod=Integer.parseInt(request.getParameter("Codigo"));
            Object[] fila=libSer.buscarId(cod);
            
            if (fila!=null) {
                request.getSession().setAttribute("libus", fila);
                request.getSession().setAttribute("msgL", null);
                response.sendRedirect("Intranet/Admin/libros.jsp");
            } else {
                Object[] fil={"","","","","","","",""};
                request.getSession().setAttribute("libus", fil);
                request.getSession().setAttribute("msgL", "Libro no existe");
                response.sendRedirect("Intranet/Admin/libros.jsp");
            }
        }
        
        if (acc.equals("Limpiar")) {
            Object[] fila={"","","","","","","",""};
            request.getSession().setAttribute("libus", fila);
            request.getSession().setAttribute("msgL", null);
            response.sendRedirect("Intranet/Admin/libros.jsp");
        }
        
        if (acc.equals("Registrar")) {
            String Nombre = request.getParameter("Nombre");
            String Categoria = request.getParameter("Categoria");
            int Stock = Integer.parseInt(request.getParameter("Stock"));
            double Precio = Double.parseDouble(request.getParameter("Precio"));
            String Descripcion = request.getParameter("Descripcion");
            String Portada = request.getParameter("Portada");

            String msg=libSer.grabar(Nombre, 10000, Descripcion, Stock, Precio, Portada);

            request.getSession().setAttribute("msgL", msg);
            response.sendRedirect("Intranet/Admin/libros.jsp");
        }
        
        if (acc.equals("Actualizar")) {
            int Codigo = Integer.parseInt(request.getParameter("Codigo"));
            String Nombre = request.getParameter("Nombre");
            String Categoria = request.getParameter("Categoria");
            int Stock = Integer.parseInt(request.getParameter("Stock"));
            double Precio = Double.parseDouble(request.getParameter("Precio"));
            String Descripcion = request.getParameter("Descripcion");
            String Portada = request.getParameter("Portada");
            
            String msg=libSer.actualizar(Codigo, Nombre, 10000, Descripcion, Stock, Precio);

            if (Portada!="")
                libSer.actualizarFoto(Portada);
            
            Object[] fila=libSer.buscarId(Codigo);
            
            request.getSession().setAttribute("msgL", msg);
            request.getSession().setAttribute("libus", fila);
            response.sendRedirect("Intranet/Admin/libros.jsp");
        }
        
        if (acc.equals("Eliminar")) {
            int Codigo = Integer.parseInt(request.getParameter("Codigo"));
            String msg=libSer.eliminar(Codigo);
            Object[] fila={"","","","","","","","","","","","",""};
            
            request.getSession().setAttribute("msgL", msg);
            request.getSession().setAttribute("libus", fila);
            response.sendRedirect("Intranet/Admin/libros.jsp");
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
