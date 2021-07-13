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
        pg = (PresentadorGeneral)request.getSession().getAttribute("pg");
        request.getSession().setAttribute("pg", pg);

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
            String foto=request.getParameter("foto");
            String nombre=request.getParameter("nombre");
            double precio=Double.parseDouble(request.getParameter("precio"));
            
            boolean bool=true;
            Object[] lis=new Object[6];
            int cantidad=1, index=0;
            double importe=precio;

            if (bool) {
                lis[0]=cod;
                lis[1]=foto;
                lis[2]=nombre;
                lis[3]=precio;
                lis[4]=cantidad;
                lis[5]=importe;
                for (int i = 1; i < pg.getCartList().size(); i++) {
                    Object[] fi=(Object[]) pg.getCartList().get(i);
                    if (fi[0].equals(cod)) {
                        bool=false;
                        index=i;
                        cantidad=(int)fi[4]+1;
                        importe+=(double)fi[5];
                    }
                }
                pg.addCartList(lis);
            } if (!bool) {
                lis[0]=cod;
                lis[1]=foto;
                lis[2]=nombre;
                lis[3]=precio;
                lis[4]=cantidad;
                lis[5]=importe;
                pg.getCartList().set(index, lis);
                pg.getCartList().remove(pg.getCartList().size()-1);
                bool=true;
            }
            response.sendRedirect("Libros.jsp");
        }
        
        if (acc.equals("actualizar")) {
            int cod=Integer.parseInt(request.getParameter("codigo"));
            int cantidad=Integer.parseInt(request.getParameter("cantidad"));
            Object[] lis=new Object[6];
            
            for (int i = 1; i < pg.getCartList().size(); i++) {
                Object[] fi=(Object[]) pg.getCartList().get(i);
                if (fi[0].equals(cod)) {
                    lis[0]=cod;
                    lis[1]=fi[1];
                    lis[2]=fi[2];
                    lis[3]=fi[3];
                    lis[4]=cantidad;
                    lis[5]=(double)fi[3]*cantidad;
                    pg.getCartList().set(i, lis);
                }
            }
            response.sendRedirect("ver-carrito.jsp");
        }
        
        if (acc.equals("eliminar")) {
            int cod=Integer.parseInt(request.getParameter("codigo"));
            for (int i = 1; i < pg.getCartList().size(); i++) {
                Object[] fi=(Object[]) pg.getCartList().get(i);
                if (fi[0].equals(cod))
                    pg.getCartList().remove(fi);
            }
            response.sendRedirect("ver-carrito.jsp");
        }
        
        if (acc.equals("Grabar Pedido")) {
            String cod=request.getParameter("codigo");
            double total=Double.parseDouble(request.getParameter("total"));
            if (!request.getParameter("codigo").equals("")) {
                pg.setMsg(pedSer.grabarPedido(Integer.parseInt(cod), total));
                
                for (int i = 1; i < pg.getCartList().size(); i++) {
                    Object[] lis=(Object[]) pg.getCartList().get(i);
                    pedSer.grabarDetalle((int)lis[0], (int)lis[4], (double)lis[3]);
                }
                
                List li=new ArrayList();
                Object[] vacio={"","","","","",""};
                pg.setCartList(li);
                pg.addCartList(vacio);
                response.sendRedirect("Libros.jsp");
            } else {
                pg.setMsg("Para continuar debe iniciar sesión");
                response.sendRedirect("ver-carrito.jsp");
            }
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
