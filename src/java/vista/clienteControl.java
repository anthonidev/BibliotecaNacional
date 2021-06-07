package vista;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servicio.*;

@WebServlet(name = "clienteControl", urlPatterns = {"/clienteControl"})
public class clienteControl extends HttpServlet {

    private UbigeoServicio ubiSer;
    private clienteServicio cliSer;
    private cuentaServicio cuSer;
    private personaServicio perSer;
    private clientePresentador pre;
    private personaServicio serPer;

    public clienteControl() {
        ubiSer = new UbigeoServicioImp();
        cliSer = new clienteServicioImp();
        cuSer = new cuentaServicioImp();
        perSer = new personaServicioImp();

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String acc = request.getParameter("acc");

        if (acc.equals("Registrarse")) {

            String Nombre = request.getParameter("Nombre");
            String Apellidos = request.getParameter("Apellidos");
            String Dni = request.getParameter("Dni");
            String Telefono = request.getParameter("Telefono");
            String FechaNa = request.getParameter("FechaNa");
            String usu = request.getParameter("usu");
            String pass = request.getParameter("pass");
            String dep = request.getParameter("selectDepartamento");
            String pro = request.getParameter("selectProvincia");
            String dis = request.getParameter("selectDistrito");

            //persona------>
            //ubigeo ---->
            List lisDep = ubiSer.listarDep(dep);
            Object[] f = (Object[]) lisDep.get(1);
            String codDep = (String) f[0];

            List lisPro = ubiSer.listarPro(codDep, pro);
            Object[] x = (Object[]) lisPro.get(1);
            String codPro = (String) x[0];

            List lisDis = ubiSer.listarDis(codDep, dis, codPro);
            Object[] e = (Object[]) lisDis.get(1);
            String codDis = (String) e[0];
            //<----ubigeo

            perSer.grabar(Nombre, Apellidos, Dni, dis, Telefono, FechaNa, codDis, codPro, codDep);

            //<------persona
            //cuenta------>
            cuSer.grabar(usu, pass);

            //<------cuenta
            //cliente------>
            Object[] busP = perSer.buscar(Dni);
            int IdPerCli = (int) busP[0];

            Object[] busC = cuSer.buscar(usu);
            int IdCuenta = (int) busC[0];

            System.out.println(IdPerCli);
            cliSer.grabar(IdPerCli, IdCuenta);

            //<------cliente
            response.sendRedirect("Login.jsp");

        }

        if (acc.equals("Buscar")) {
            String dni = request.getParameter("dni");
            Object[] busDni = perSer.buscar(dni);
            Object[] busCli = cliSer.buscar((int) busDni[0]);
            Object[] busCu = cuSer.buscarid((int) busCli[1]);
            System.out.println(busCli[1]);
            if (busDni != null) {
                pre.setFil(busDni);
                System.out.println(busCu[1]);
                pre.setUsuario(busCu[1].toString());
            } else {
                pre.setMsg("El usuario no existe");
            }
        }

        if (acc.equals("Clientes")) {
            pre = new clientePresentador();
            serPer = new personaServicioImp();
            request.getSession().setAttribute("pre", pre);
        }
        response.sendRedirect("Intranet/Admin/cliente.jsp");

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
