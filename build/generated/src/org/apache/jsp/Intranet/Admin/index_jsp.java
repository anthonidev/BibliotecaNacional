package org.apache.jsp.Intranet.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../../css/style.css\">\n");
      out.write("    <script src=\"https://kit.fontawesome.com/50872a9b90.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <title>Biblioteca</title>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body class=\"\">\n");
      out.write("    <main class=\"container-fluid p-0 \">\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\"><img src=\"../../img/LogoMakr-1JUGB7.png\" width=\"80\" alt=\"\"></a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("              </button>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("                    <ul class=\"navbar-nav me-auto mb-2 mb-lg-0 d-flex align-items-center justify-content-end w-100\">\n");
      out.write("                        <li class=\"nav-item mx-3\">\n");
      out.write("                            <a class=\"nav-link active h5\" aria-current=\"page\" href=\"index.html\"><i class=\"fas fa-home d-flex align-items-start justify-content-center w-100\"></i> Inicio</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item mx-3\">\n");
      out.write("                            <a class=\"nav-link active h5\" aria-current=\"page\" href=\"#\"><i class=\"fas fa-book d-flex align-items-start justify-content-center w-100\"></i> Productos</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item mx-3\">\n");
      out.write("                            <a class=\"nav-link active h5\" aria-current=\"page\" href=\"#\"><i class=\"fas fa-info-circle d-flex align-items-start justify-content-center w-100\"></i> Informacion</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item mx-3\">\n");
      out.write("                            <a class=\"nav-link active h5\" aria-current=\"page\" href=\"#\"><i class=\"fas fa-id-card-alt d-flex align-items-start justify-content-center w-100\"></i> Contacto</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                    <ul class=\"navbar-nav me-auto mb-2 mb-lg-0 d-flex align-items-center justify-content-md-end justify-content-center  w-50\">\n");
      out.write("                        <li class=\"nav-item mx-3\">\n");
      out.write("                            <a class=\"nav-link active h5\" aria-current=\"page\" href=\"index.html\"><i class=\"fas fa-sign-in-alt d-flex align-items-start justify-content-center w-100\"></i> Login</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item mx-3\">\n");
      out.write("                            <a class=\"nav-link active h5\" aria-current=\"page\" href=\"#\"><i class=\"fas fa-ethernet d-flex align-items-start justify-content-center w-100\"></i> intranet</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <div class=\"row \">\n");
      out.write("            <div class=\"col-1 d-flex align-items-center py-5 shadow-sm p-3 mb-5 bg-primary rounded\">\n");
      out.write("                <ul class=\"navbar-nav me-auto mb-2 mb-lg-0 \">\n");
      out.write("                    <li class=\"nav-item my-4 shadow-sm p-3 my-3 bg-body rounded\">\n");
      out.write("                        <a class=\"nav-link active text-dark h5 text-center\" aria-current=\"page\" href=\"#\"><i class=\"fas fa-users-cog w-100 text-center\"></i> Empleados</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item my-4 shadow-sm p-3 my-3 bg-body rounded \">\n");
      out.write("                        <a class=\"nav-link active text-dark h5 text-center\" aria-current=\"page\" href=\"#\"><i class=\"fas fa-user-tag w-100 text-center\"></i> Clientes</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item my-4 shadow-sm p-3 my-3 bg-body rounded \">\n");
      out.write("                        <a class=\"nav-link active text-dark h5 text-center\" aria-current=\"page\" href=\"#\"><i class=\"fas fa-truck-loading w-100 text-center\"></i> Pedidos</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item my-4 shadow-sm p-3 my-3 bg-body rounded \">\n");
      out.write("                        <a class=\"nav-link active text-dark h5 text-center\" aria-current=\"page\" href=\"#\"><i class=\"fas fa-book-open w-100 text-center\"></i> Libros</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item my-4 shadow-sm p-3 my-3 bg-body rounded \">\n");
      out.write("                        <a class=\"nav-link active text-dark h5 text-center\" aria-current=\"page\" href=\"#\"><i class=\"fas fa-clipboard-list w-100 text-center\"></i> Boletas</a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-10\">\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </main>\n");
      out.write("</body>\n");
      out.write("\n");
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
