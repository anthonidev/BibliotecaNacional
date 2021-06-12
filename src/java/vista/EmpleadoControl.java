package vista;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servicio.*;

@WebServlet(name = "empleadoControl", urlPatterns = {"/empleadoControl"})
public class EmpleadoControl extends HttpServlet {

    private CuentaServicio cuSer;
    private EmpleadoServicio empSer;
    private UbigeoServicio ubiSer;

    public EmpleadoControl() {
        cuSer = new CuentaServicioImp();
        empSer = new EmpleadoServicioImp();
        ubiSer = new UbigeoServicioImp();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String acc = request.getParameter("acc");
        
        if (acc.equals("Iniciar")) {
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
            Object[] fil = cuSer.validar(user, pass);
            
            if (fil != null) {
                switch (fil[2].toString()) {
                    case "admin":
                        request.getSession().setAttribute("fil", fil);
                        response.sendRedirect("Intranet/Admin/index.jsp");
                        break;
                }
            } else {
                request.getSession().setAttribute("msg", "ACCESO NO PERMITIDO");
                response.sendRedirect("Intranet.jsp");
            }
        }
        
        if (acc.equals("Buscar")) {
            String Dni=request.getParameter("Dni");
            Object[] fila=empSer.buscar(Dni);
            
            if (fila!=null) {
                request.getSession().setAttribute("filaBus", fila);
                request.getSession().setAttribute("msg", null);
                response.sendRedirect("Intranet/Admin/empleados.jsp");
            } else {
                Object[] fil={"","","","","","","","","","","",""};
                request.getSession().setAttribute("filaBus", fil);
                request.getSession().setAttribute("msg", "Empleado no existe");
                response.sendRedirect("Intranet/Admin/empleados.jsp");
            }
        }
        
        if (acc.equals("Limpiar")) {
            Object[] fila={"","","","","","","","","","","",""};
            request.getSession().setAttribute("filaBus", fila);
            request.getSession().setAttribute("msg", null);
            response.sendRedirect("Intranet/Admin/empleados.jsp");
        }
        
        if (acc.equals("Registrar")) {
            String Nombre = request.getParameter("Nombre");
            String Apellidos = request.getParameter("Apellidos");
            String Dni = request.getParameter("Dni");
            String Telefono = request.getParameter("Telefono");
            String FechaNa = request.getParameter("FechaNa");
            String Direccion = request.getParameter("Direccion");
            String tipo = request.getParameter("tipo");
            String usu = request.getParameter("usuario");
            String pass = request.getParameter("password");
            String dep = new String(request.getParameter("selectDepartamento").getBytes("ISO-8859-1"),"UTF-8").replace("_", " ");
            String pro = new String(request.getParameter("selectProvincia").getBytes("ISO-8859-1"),"UTF-8").replace("_", " ");
            String dis = new String(request.getParameter("selectDistrito").getBytes("ISO-8859-1"),"UTF-8").replace("_", " ");

            List lisId = ubiSer.listarId(dep, pro, dis);
            Object[] id = (Object[]) lisId.get(1);
            
            String msg=empSer.grabar(Nombre, Apellidos, Dni, Direccion, Telefono, FechaNa, id[0].toString(), id[1].toString(), id[2].toString(), usu, pass, tipo);

            Object[] fila={"","","","","","","","","","","",""};
            request.getSession().setAttribute("filaBus", fila);
            request.getSession().setAttribute("msg", msg);
            response.sendRedirect("Intranet/Admin/empleados.jsp");
        }
        
        if (acc.equals("Actualizar")) {
            String Dni = request.getParameter("Dni");
            String Telefono = request.getParameter("Telefono");
            String Direccion = request.getParameter("Direccion");
            String tipo = request.getParameter("tipo");
            String pass = request.getParameter("password");
            String dep = new String(request.getParameter("selectDepartamento2").getBytes("ISO-8859-1"),"UTF-8").replace("_", " ");
            String pro = new String(request.getParameter("selectProvincia2").getBytes("ISO-8859-1"),"UTF-8").replace("_", " ");
            String dis = new String(request.getParameter("selectDistrito2").getBytes("ISO-8859-1"),"UTF-8").replace("_", " ");
            
            List lisId = ubiSer.listarId(dep, pro, dis);
            Object[] id = (Object[]) lisId.get(1);
            
            String msg = empSer.actualizar(Direccion, Telefono, id[0].toString(), id[1].toString(), id[2].toString(), Dni, tipo);
            
            if (pass!="")
                cuSer.actualizar(pass, Dni);
            
            Object[] fila=empSer.buscar(Dni);
            
            request.getSession().setAttribute("msg", msg);
            request.getSession().setAttribute("filaBus", fila);
            response.sendRedirect("Intranet/Admin/empleados.jsp");
        }
        
        if (acc.equals("Eliminar")) {
            String dni=request.getParameter("Dni");
            String msg = empSer.eliminar(dni);
            Object[] fila={"","","","","","","","","","","",""};
            
            request.getSession().setAttribute("msg", msg);
            request.getSession().setAttribute("filaBus", fila);
            response.sendRedirect("Intranet/Admin/empleados.jsp");
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
