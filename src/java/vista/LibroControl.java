package vista;

import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import servicio.LibroServicioImp;
import servicio.LibroServicio;

@WebServlet(name = "LibroControl", urlPatterns = {"/LibroControl"})
@MultipartConfig // anotacion
public class LibroControl extends HttpServlet {

    private LibroServicio libSer;
    private PresentadorGeneral pg;

    public LibroControl() {
        libSer = new LibroServicioImp();
        pg = new PresentadorGeneral();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String acc = request.getParameter("acc");
        request.getSession().setAttribute("pg", pg);
        
        if (acc.equals("Buscar") || acc.equals("Ver Detalles")) {
            int cod=Integer.parseInt(request.getParameter("Codigo"));
            Object[] fila=libSer.buscar(cod);
            
            if (fila!=null) {

                request.getSession().setAttribute("libus", fila);
                response.sendRedirect("Intranet/Admin/libros.jsp");
            } else {
                Object[] fil = {"", "", "", "", "", "", "", ""};
                request.getSession().setAttribute("libus", fil);
                pg.setMsg("Libro no existe");
                response.sendRedirect("Intranet/Admin/libros.jsp");
            }
        }

        if (acc.equals("Limpiar")) {
            Object[] fila = {"", "", "", "", "", "", "", ""};
            request.getSession().setAttribute("libus", fila);
            response.sendRedirect("Intranet/Admin/libros.jsp");
        }

        if (acc.equals("Registrar")) {
            String cargo = request.getParameter("cargo");
            String Nombre = request.getParameter("Nombre");
            int idCategoria = Integer.parseInt(request.getParameter("Categoria"));
            int Stock = Integer.parseInt(request.getParameter("Stock"));
            double Precio = Double.parseDouble(request.getParameter("Precio"));
            String Descripcion = request.getParameter("Descripcion");
            Part filePart =request.getPart("Portada");
            InputStream portada = filePart.getInputStream();

            String msg=libSer.grabar(Nombre, idCategoria, Descripcion, Stock, Precio, portada);
            pg.setMsg(msg);

            response.sendRedirect("Intranet/Admin/libros.jsp");
        }

        if (acc.equals("Actualizar")) {
            String cargo = request.getParameter("cargo");
            int Codigo = Integer.parseInt(request.getParameter("Codigo"));
            int Stock = Integer.parseInt(request.getParameter("Stock"));
            double Precio = Double.parseDouble(request.getParameter("Precio"));
            String Descripcion = request.getParameter("Descripcion");
            String msg=libSer.actualizar(Codigo, Stock, Precio, Descripcion);
            pg.setMsg(msg);
            Object[] fila=libSer.buscar(Codigo);
            
            request.getSession().setAttribute("libus", fila);
            response.sendRedirect("Intranet/Admin/libros.jsp");
        }

        if (acc.equals("Aceptar Libro")) {
            int Codigo = Integer.parseInt(request.getParameter("Codigo"));
            String msg = libSer.actualizarEstado(Codigo, 1);
            pg.setMsg(msg);
            Object[] fila=libSer.buscar(Codigo);
            
            request.getSession().setAttribute("libus", fila);
            response.sendRedirect("Intranet/Admin/libros.jsp");
        }
        
        if (acc.equals("Rechazar Libro")) {
            int Codigo = Integer.parseInt(request.getParameter("Codigo"));
            String msg = libSer.actualizarEstado(Codigo, 2);
            pg.setMsg(msg);
            Object[] fila=libSer.buscar(Codigo);

            request.getSession().setAttribute("libus", fila);
            response.sendRedirect("Intranet/Admin/libros.jsp");
        }
        
        if (acc.equals("Rechazar Libro")) {
            int Codigo = Integer.parseInt(request.getParameter("Codigo"));
            String msg=libSer.eliminar(Codigo);
            pg.setMsg(msg);
            Object[] fila={"","","","","","","","","","","","",""};
     
            request.getSession().setAttribute("libus", fila);
            response.sendRedirect("Intranet/Admin/libros.jsp");
        }

        if (acc.equals("Eliminar")) {
            String cargo = request.getParameter("cargo");

            int Codigo = Integer.parseInt(request.getParameter("Codigo"));
            String msg = libSer.eliminar(Codigo);
            pg.setMsg(msg);
            Object[] fila = {"", "", "", "", "", "", "", "", "", "", "", "", ""};

            request.getSession().setAttribute("libus", fila);
            if ("Almacen".equals(cargo)) {
                response.sendRedirect("Intranet/Almacen/Libros.jsp");
            } else {
                response.sendRedirect("Intranet/Admin/libros.jsp");
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
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
