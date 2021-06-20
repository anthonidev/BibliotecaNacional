package vista;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servicio.*;

@WebServlet(name = "CarritoControl", urlPatterns = {"/CarritoControl"})
public class CarritoControl extends HttpServlet {
    private PresentadorGeneral pg;
    private CuentaServicio cuSer;
    private PedidoServicio pedSer;

    public CarritoControl() {
        cuSer = new CuentaServicioImp();
        pedSer = new PedidoServicioImp();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String acc = request.getParameter("acc");

        if (acc.equals("Iniciar")) {
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
            Object[] fila = cuSer.validarCliente(user, pass);
            if (fila != null) {
                pg = new PresentadorGeneral();
                pg.setUserCliente(fila);
                pg.setCtr("online");
                
                request.getSession().setAttribute("pg", pg);
                request.getSession().setAttribute("fila", fila);
                response.sendRedirect("Libros.jsp");
            } else {
                request.getSession().setAttribute("msg", "ACCESO NO PERMITIDO");
                response.sendRedirect("Intranet.jsp");
            }
        }
        
        if (acc.equals("carrito")) {
            response.sendRedirect("ver-carrito.jsp");
        }
        
        if (acc.equals("Agregar")) {
            int cod=Integer.parseInt(request.getParameter("codigo"));
            String nombre=request.getParameter("nombre");
            double precio=Double.parseDouble(request.getParameter("precio"));
            String foto=request.getParameter("foto");
            Object[] lis=new Object[5];
            
            if (pg.getCartList().size()==1) {
                lis[0]=cod;
                lis[1]=nombre;
                lis[2]=precio;
                lis[3]=foto;
                lis[4]=1;
                pg.addCartList(lis);
            } else {
                int can=1;
                double pre=precio;
                lis[0]=cod;
                lis[1]=nombre;
                lis[3]=foto;
                
                for (int i = 1; i < pg.getCartList().size(); i++) {
                    Object[] fi=(Object[]) pg.getCartList().get(i);
                    if (fi[0].equals(cod)) {
                        can=(int)fi[4];
                        pg.getCartList().remove(fi);
                        lis[0]=cod;
                        lis[1]=nombre;
                        pre+=(double)fi[2];
                        lis[3]=foto;
                        can++;
                    }
                }
                lis[2]=pre;
                lis[4]=can;
                pg.addCartList(lis);
            }
            response.sendRedirect("Libros.jsp");
        }
        
        if (acc.equals("eliminar")) {
            String cod=request.getParameter("codigo");
            for (int i = 1; i < pg.getCartList().size(); i++) {
                Object[] fi=(Object[]) pg.getCartList().get(i);
                if (fi[0].equals(cod))
                    pg.getCartList().remove(fi);
            }
            response.sendRedirect("ver-carrito.jsp");
        }
        
        if (acc.equals("Grabar Pedido")) {
            int cod=Integer.parseInt(request.getParameter("codigo"));
            double total=Double.parseDouble(request.getParameter("total"));
            String msg=pedSer.grabarPedido(cod, total);
            pg.setMsg(msg);
            
            for (int i = 1; i < pg.getCartList().size(); i++) {
                Object[] lis=(Object[]) pg.getCartList().get(i);
                pedSer.grabarDetalle((int)lis[0], (int)lis[4], (double)lis[2]);
            }
            
            List li=new ArrayList();
            Object[] libro={"","","",""};
            pg.setCartList(li);
            pg.addCartList(libro);
            response.sendRedirect("Libros.jsp");
        }
        
        if (acc.equals("Cerrar")) {
            request.getSession().invalidate();
            response.sendRedirect("index.jsp");
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
