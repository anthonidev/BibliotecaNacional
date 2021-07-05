package vista;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servicio.*;

@WebServlet(name = "EmpleadoControl", urlPatterns = {"/EmpleadoControl"})
public class EmpleadoControl extends HttpServlet {

    private CuentaServicio cuSer;
    private EmpleadoServicio empSer;
    private PresentadorGeneral pg;

    public EmpleadoControl() {
        cuSer = new CuentaServicioImp();
        empSer = new EmpleadoServicioImp();
        pg = new PresentadorGeneral();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String acc = request.getParameter("acc");
        request.getSession().setAttribute("pg", pg);

        if (acc.equals("Iniciar")) {
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
            Object[] fila = cuSer.validar(user, pass);

            if (fila != null) {
                request.getSession().setAttribute("filaInicio", fila);

                switch (fila[2].toString()) {
                    case "admin":
                        response.sendRedirect("Intranet/Admin/index.jsp");
                        break;
                    case "Recursos Humanos":
                        response.sendRedirect("Intranet/RRHH/index.jsp");
                        break;
                    case "Almacen":
                        response.sendRedirect("Intranet/Almacen/index.jsp");
                        break;
                    case "Jefe de Control":
                        response.sendRedirect("Intranet/JefeControl/index.jsp");
                        break;
                    case "Recepcion":
                        response.sendRedirect("Intranet/Recepcionista/index.jsp");
                        break;
                        case "Administracion":
                        response.sendRedirect("Intranet/Recepcionista/index.jsp");
                        break;

                }
            } else {
                request.getSession().setAttribute("msg", "ACCESO NO PERMITIDO");
                response.sendRedirect("Intranet.jsp");
            }
        }

        if (acc.equals("Buscar") || acc.equals("Ver Detalles")) {
            String Dni = request.getParameter("Dni");
            Object[] fila = empSer.buscar(Dni);

            if (fila != null) {
                request.getSession().setAttribute("filaBus", fila);
                response.sendRedirect("Intranet/Admin/empleados.jsp");
            } else {
                pg.setMsg("Empleado no existe");
                response.sendRedirect("Intranet/Admin/empleados.jsp");
            }
        }

        if (acc.equals("Limpiar")) {
            Object[] fila = {"", "", "", "", "", "", "", "", "", "", "", ""};
            request.getSession().setAttribute("filaBus", fila);
            response.sendRedirect("Intranet/Admin/empleados.jsp");
        }

        if (acc.equals("Registrar")) {
            String cargo = request.getParameter("cargo");

            String Nombre = request.getParameter("Nombre");
            String Apellidos = request.getParameter("Apellidos");
            String Dni = request.getParameter("Dni");
            String Telefono = request.getParameter("Telefono");
            String FechaNa = request.getParameter("FechaNa");
            String Direccion = request.getParameter("Direccion");
            String tipo = request.getParameter("tipo");
            String usu = request.getParameter("usuario");
            String pass = request.getParameter("password");
            String dep = new String(request.getParameter("selectDepartamento").getBytes("ISO-8859-1"), "UTF-8").replace("_", " ");
            String pro = new String(request.getParameter("selectProvincia").getBytes("ISO-8859-1"), "UTF-8").replace("_", " ");
            String dis = new String(request.getParameter("selectDistrito").getBytes("ISO-8859-1"), "UTF-8").replace("_", " ");
            System.out.println(tipo);
            String msg = empSer.grabar(Nombre, Apellidos, Dni, Direccion, Telefono, FechaNa, dis, pro, dep, usu, pass, tipo);
            pg.setMsg(msg);
            System.out.println(cargo);
            if ("Recursos Humanos".equals(cargo)) {

                response.sendRedirect("Intranet/RRHH/index.jsp");
            } else {
                response.sendRedirect("Intranet/Admin/empleados.jsp");
            }
        }

        if (acc.equals("Actualizar")) {
            String cargo = request.getParameter("cargo");
            String Dni = request.getParameter("Dni");
            String Telefono = request.getParameter("Telefono");
            String Direccion = request.getParameter("Direccion");
            String tipo = request.getParameter("tipo");
            String pass = request.getParameter("password");
            String dep = new String(request.getParameter("selectDepartamento2").getBytes("ISO-8859-1"), "UTF-8").replace("_", " ");
            String pro = new String(request.getParameter("selectProvincia2").getBytes("ISO-8859-1"), "UTF-8").replace("_", " ");
            String dis = new String(request.getParameter("selectDistrito2").getBytes("ISO-8859-1"), "UTF-8").replace("_", " ");

            String msg = empSer.actualizar(Direccion, Telefono, dis, pro, dep, Dni, tipo);

            if (pass != "") {
                cuSer.actualizar(pass, Dni);
            }

            pg.setMsg(msg);
            Object[] fila = empSer.buscar(Dni);
            request.getSession().setAttribute("filaBus", fila);
            if ("Recursos Humanos".equals(cargo)) {
                pg.setMsg("");
                response.sendRedirect("Intranet/RRHH/Empleados.jsp");
            } else {
                response.sendRedirect("Intranet/Admin/empleados.jsp");
            }
        }

        if (acc.equals("Eliminar")) {
            String cargo = request.getParameter("cargo");

            String dni = request.getParameter("Dni");
            String msg = empSer.eliminar(dni);
            pg.setMsg(msg);
            Object[] fila = {"", "", "", "", "", "", "", "", "", "", "", ""};

            request.getSession().setAttribute("filaBus", fila);
            if ("Recursos Humanos".equals(cargo)) {
                pg.setMsg("");
                response.sendRedirect("Intranet/RRHH/Empleados.jsp");
            } else {
                response.sendRedirect("Intranet/Admin/empleados.jsp");
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
