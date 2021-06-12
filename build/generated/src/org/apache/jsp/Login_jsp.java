package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write(" \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta charset=\"UTF-8\" />\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\" />\r\n");
      out.write("    <script\r\n");
      out.write("      src=\"https://kit.fontawesome.com/50872a9b90.js\"\r\n");
      out.write("      crossorigin=\"anonymous\"\r\n");
      out.write("    ></script>\r\n");
      out.write("    <script\r\n");
      out.write("      src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js\"\r\n");
      out.write("      integrity=\"sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4\"\r\n");
      out.write("      crossorigin=\"anonymous\"\r\n");
      out.write("    ></script>\r\n");
      out.write("    <title>Biblioteca</title>\r\n");
      out.write("  </head>\r\n");
      out.write("\r\n");
      out.write("  <body class=\"\">\r\n");
      out.write("    <main class=\"container-fluid p-0\">\r\n");
      out.write("      <div class=\"row\">\r\n");
      out.write("        <div class=\"col-12 col-md-9 m-auto mt-5\">\r\n");
      out.write("          <div class=\"card mb-md-3 shadow p-3 mb-5 bg-body rounded\">\r\n");
      out.write("            <div class=\"row g-0\">\r\n");
      out.write("              <div class=\"col-md-6\">\r\n");
      out.write("                <img\r\n");
      out.write("                  class=\"img-fluid\"\r\n");
      out.write("                  src=\"https://image.freepik.com/vector-gratis/ilustracion-plana-dia-mundial-libro_23-2148890538.jpg\"\r\n");
      out.write("                  alt=\"...\"\r\n");
      out.write("                />\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"col-md-6 bg-light d-flex align-items-center\">\r\n");
      out.write("                <div class=\"card-body\">\r\n");
      out.write("                  <div\r\n");
      out.write("                    class=\"\r\n");
      out.write("                      d-flex\r\n");
      out.write("                      align-items-center\r\n");
      out.write("                      justify-content-center\r\n");
      out.write("                      flex-column\r\n");
      out.write("                    \"\r\n");
      out.write("                  >\r\n");
      out.write("                    <img src=\"./img/logo.png\" class=\"img-fluid\" alt=\"\" />\r\n");
      out.write("                    <h1 class=\"text-dark text-center fw-bolder\">\r\n");
      out.write("                      Iniciar Sesión\r\n");
      out.write("                    </h1>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div>\r\n");
      out.write("                    <form action=\"\" method=\"post\">\r\n");
      out.write("                      <div class=\"input-group input-group-lg my-5\">\r\n");
      out.write("                        <span\r\n");
      out.write("                          class=\"input-group-text\"\r\n");
      out.write("                          id=\"inputGroup-sizing-lg\"\r\n");
      out.write("                          style=\"width: 140px\"\r\n");
      out.write("                          >Usuario</span\r\n");
      out.write("                        >\r\n");
      out.write("                        <input\r\n");
      out.write("                          type=\"text\"\r\n");
      out.write("                          required\r\n");
      out.write("                          class=\"form-control\"\r\n");
      out.write("                          name=\"user\"\r\n");
      out.write("                          aria-label=\"Sizing example input\"\r\n");
      out.write("                          aria-describedby=\"inputGroup-sizing-lg\"\r\n");
      out.write("                        />\r\n");
      out.write("                      </div>\r\n");
      out.write("                      <div class=\"input-group input-group-lg my-5\">\r\n");
      out.write("                        <span\r\n");
      out.write("                          class=\"input-group-text\"\r\n");
      out.write("                          id=\"inputGroup-sizing-lg \"\r\n");
      out.write("                          style=\"width: 140px\"\r\n");
      out.write("                          >Constraseña</span\r\n");
      out.write("                        >\r\n");
      out.write("                        <input\r\n");
      out.write("                          type=\"password\"\r\n");
      out.write("                          required\r\n");
      out.write("                          class=\"form-control\"\r\n");
      out.write("                          name=\"pass\"\r\n");
      out.write("                          aria-label=\"Sizing example input\"\r\n");
      out.write("                          aria-describedby=\"inputGroup-sizing-lg\"\r\n");
      out.write("                        />\r\n");
      out.write("                      </div>\r\n");
      out.write("                      <div class=\"input-group input-group-lg my-5\">\r\n");
      out.write("                        <input\r\n");
      out.write("                          type=\"submit\"\r\n");
      out.write("                          name=\"acc\"\r\n");
      out.write("                          value=\"Iniciar\"\r\n");
      out.write("                          class=\"btn w-100 btn-primary fw-bold\"\r\n");
      out.write("                        />\r\n");
      out.write("                      </div>\r\n");
      out.write("                    </form>\r\n");
      out.write("                  </div>\r\n");
      out.write("\r\n");
      out.write("                  <div class=\"d-flex flex-column\">\r\n");
      out.write("                    <h1 class=\"text-dark h5 text-center\">No tienes cuenta?</h1>\r\n");
      out.write("                    <a href=\"signUp.jsp\" class=\"btn btn-success m-auto\"\r\n");
      out.write("                      >Registrarse\r\n");
      out.write("                    </a>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </main>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
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
