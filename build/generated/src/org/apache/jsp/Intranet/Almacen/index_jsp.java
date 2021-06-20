package org.apache.jsp.Intranet.Almacen;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import vista.PresentadorGeneral;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../../css/style.css\">\n");
      out.write("        <script src=\"https://kit.fontawesome.com/50872a9b90.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <title>Biblioteca</title>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"p-0 \">\n");
      out.write("        <main class=\"container-fluid p-0  \">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navAdmin.jsp", out, false);
      out.write("\n");
      out.write("            \n");
      out.write("            <div class=\"d-flex flex-column\">\n");
      out.write("                <div class=\"col-5 m-auto d-flex justify-content-center align-items-center flex-column\" style=\"height: 100vh\" id=\"pendientes\">\n");
      out.write("                    <h1 class=\"fw-bold text-center text-primary my-5\">Lista de Pedidos Pendientes</h1>\n");
      out.write("                    ");
 List Pendiente = (List) session.getAttribute("Pendiente");
      out.write("\n");
      out.write("                    <table class=\"table table-light table-striped shadow bg-body rounded border-1\">\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th scope=\"col\">Codigo</th>\n");
      out.write("                                <th scope=\"col\">Nombre</th>\n");
      out.write("                                <th scope=\"col\">Dni</th>\n");
      out.write("                                <th scope=\"col\">Total</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("                            <tr class=\"\">\n");
      out.write("                                ");
 for (int i = 1; i < Pendiente.size(); i++) { 
      out.write("\n");
      out.write("                                ");
 Object[] p = (Object[]) Pendiente.get(i);
      out.write("\n");
      out.write("                                <form action=\"../../PedidoControl\" method=\"post\">\n");
      out.write("                                    <th scope=\"row\">\n");
      out.write("                                        <input type=\"text\" name=\"cod\" value=\"");
      out.print( p[0]);
      out.write("\" class=\"form-control text-center\"  readonly>\n");
      out.write("                                    </th>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"text\" value=\"");
      out.print( p[1]);
      out.write("\" class=\"form-control text-center \"  readonly>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"text\" value=\"");
      out.print( p[2]);
      out.write("\" class=\"form-control text-center \"  readonly>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <div class=\"input-group mb-3 \" style=\"width: 120px\">\n");
      out.write("                                            <span class=\"input-group-text\">S/.</span>\n");
      out.write("                                            <input type=\"text\" value=\"");
      out.print( p[4]);
      out.write("\"  class=\"form-control \" readonly>\n");
      out.write("                                        </div>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"submit\" name=\"acc\" value=\"Ver Detalles\" class=\" btn btn-success\">\n");
      out.write("                                    </td>\n");
      out.write("                                </form>\n");
      out.write("                            </tr>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                    <a href=\"#\" class=\"btn btn-secondary w-25 my-4 py-3 mx-auto fw-bold\">Regresar</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-5 m-auto d-flex justify-content-center align-items-center flex-column\" style=\"height: 100vh\" id=\"aceptados\">\n");
      out.write("                    <h1 class=\"fw-bold text-center text-primary my-5\">Lista de Pedidos Aceptados</h1>\n");
      out.write("                    ");
 List Aceptados = (List) session.getAttribute("Aceptados");
      out.write("\n");
      out.write("                    <table class=\"table table-light table-striped  shadow  bg-body rounded border-1\">\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th scope=\"col\">Codigo</th>\n");
      out.write("                                <th scope=\"col\">Nombre</th>\n");
      out.write("                                <th scope=\"col\">Dni</th>\n");
      out.write("                                <th scope=\"col\">Total</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("                            <tr class=\"\">\n");
      out.write("                                ");
 for (int i = 1; i < Aceptados.size(); i++) { 
      out.write("\n");
      out.write("                                ");
 Object[] a = (Object[]) Aceptados.get(i);
      out.write("\n");
      out.write("                                <form action=\"../../PedidoControl\" method=\"post\">\n");
      out.write("                                    <th scope=\"row\">\n");
      out.write("                                        <input type=\"text\" name=\"cod\" value=\"");
      out.print( a[0]);
      out.write("\" class=\"form-control text-center\"  readonly>\n");
      out.write("                                    </th>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"text\" value=\"");
      out.print( a[1]);
      out.write("\" class=\"form-control text-center \"  readonly>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"text\" value=\"");
      out.print( a[2]);
      out.write("\" class=\"form-control text-center \"  readonly>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <div class=\"input-group mb-3 \" style=\"width: 120px\">\n");
      out.write("                                            <span class=\"input-group-text\">S/.</span>\n");
      out.write("                                            <input type=\"text\" value=\"");
      out.print( a[4]);
      out.write("\"  class=\"form-control \" readonly>\n");
      out.write("                                        </div>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"submit\" name=\"acc\" value=\"Ver Detalles\" class=\" btn btn-success\">\n");
      out.write("                                    </td>\n");
      out.write("                                </form>\n");
      out.write("                            </tr>\n");
      out.write("                            ");
 } 
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                    <a href=\"#\" class=\"btn btn-secondary w-25 my-4 py-3 mx-auto fw-bold\">Regresar</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-5 m-auto d-flex justify-content-center align-items-center flex-column\" style=\"height: 100vh\" id=\"rechazados\">\n");
      out.write("                    <h1 class=\"fw-bold text-center text-primary my-5\">Lista de Pedidos Rechazados</h1>\n");
      out.write("                    ");
 List Rechazados = (List) session.getAttribute("Rechazados");
      out.write("\n");
      out.write("                    <table class=\"table table-light table-striped  shadow  bg-body rounded border-1\">\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th scope=\"col\">Codigo</th>\n");
      out.write("                                <th scope=\"col\">Nombre</th>\n");
      out.write("                                <th scope=\"col\">Dni</th>\n");
      out.write("                                <th scope=\"col\">Total</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("                            <tr class=\"\">\n");
      out.write("                                ");
 for (int i = 1; i < Rechazados.size(); i++) { 
      out.write("\n");
      out.write("                                ");
 Object[] r = (Object[]) Rechazados.get(i);
      out.write("\n");
      out.write("                                <form action=\"../../PedidoControl\" method=\"post\">\n");
      out.write("                                    <th scope=\"row\">\n");
      out.write("                                        <input type=\"text\" name=\"cod\" value=\"");
      out.print( r[0]);
      out.write("\" class=\"form-control text-center\"  readonly>\n");
      out.write("                                    </th>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"text\" value=\"");
      out.print( r[1]);
      out.write("\" class=\"form-control text-center \"  readonly>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"text\" value=\"");
      out.print( r[2]);
      out.write("\" class=\"form-control text-center \"  readonly>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <div class=\"input-group mb-3 \" style=\"width: 120px\">\n");
      out.write("                                            <span class=\"input-group-text\">S/.</span>\n");
      out.write("                                            <input type=\"text\" value=\"");
      out.print( r[4]);
      out.write("\"  class=\"form-control \" readonly>\n");
      out.write("                                        </div>\n");
      out.write("                                    </td>\n");
      out.write("                                    <td>\n");
      out.write("                                        <input type=\"submit\" name=\"acc\" value=\"Ver Detalles\" class=\" btn btn-success\">\n");
      out.write("                                    </td>\n");
      out.write("                                </form>\n");
      out.write("                            </tr>\n");
      out.write("                            ");
 } 
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                    <a href=\"#\" class=\"btn btn-secondary w-25 my-4 py-3 mx-auto fw-bold\">Regresar</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </main>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
