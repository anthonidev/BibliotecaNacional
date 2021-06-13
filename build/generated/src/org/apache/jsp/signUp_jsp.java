package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;

public final class signUp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"es\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=”Content-Type” content=”text/html; charset=ISO-8859-1″ />\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("        <script src=\"https://kit.fontawesome.com/50872a9b90.js\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"js/ubigeo.js\"></script>\r\n");
      out.write("        <script src=\"js/validar.js\"></script>\r\n");
      out.write("        <title>Crear Cuenta</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body class=\"\">\r\n");
      out.write("        <main class=\"container-fluid p-0 \">\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navInicio.jsp", out, false);
      out.write("\r\n");
      out.write("            <div class=\"d-flex\">\r\n");
      out.write("                <div class=\"col-12 col-md-9 m-auto mt-4\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-12 col-md-9 m-auto mt-5\">\r\n");
      out.write("                    <div class=\"card mb-md-3 shadow p-3 mb-5 bg-body rounded  \">\r\n");
      out.write("                        <div class=\"row g-0\">\r\n");
      out.write("                            <div class=\"col-md-5 m-auto\">\r\n");
      out.write("                                <img class=\"img-fluid\" src=\"https://image.freepik.com/vector-gratis/dibujado-mano-ilustracion-dia-mundial-libro-pila-libros_23-2148868267.jpg\" alt=\"...\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-md-7 bg-light d-flex align-items-center\">\r\n");
      out.write("                                <div class=\"card-body\">\r\n");
      out.write("                                    <div class=\"d-flex align-items-center justify-content-center flex-column\">\r\n");
      out.write("                                        <img src=\"./img/logo.png\" class=\"img-fluid \" alt=\"\">\r\n");
      out.write("                                        <h1 class=\"text-dark text-center fw-bolder\">Crear cuenta</h1>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div>\r\n");
      out.write("                                        <form action=\"clienteControl\" method=\"post\">\r\n");
      out.write("                                            <div class=\"row\">\r\n");
      out.write("                                                <div class=\"col-6\">\r\n");
      out.write("                                                    <span class=\"input-group-text\" id=\"inputGroup-sizing-lg\">Nombre</span>\r\n");
      out.write("                                                    <input type=\"text\" required class=\"form-control\" name=\"Nombre\" aria-label=\"Sizing example input\" aria-describedby=\"inputGroup-sizing\">\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-6\">\r\n");
      out.write("                                                    <span class=\"input-group-text\" id=\"inputGroup-sizing-lg\">Apellidos</span>\r\n");
      out.write("                                                    <input type=\"text\" required class=\"form-control\" name=\"Apellidos\" aria-label=\"Sizing example input\" aria-describedby=\"inputGroup-sizing\">\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-6 my-2\">\r\n");
      out.write("                                                    <span class=\"input-group-text\" id=\"inputGroup-sizing-lg\">Dni</span>\r\n");
      out.write("                                                    <input type=\"text\" required class=\"form-control\" name=\"Dni\" aria-label=\"Sizing example input\" aria-describedby=\"inputGroup-sizing\" maxlength=\"8\" onkeyup=\"this.value=Numeros(this.value)\">\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-6 my-2\">\r\n");
      out.write("                                                    <span class=\"input-group-text\" id=\"inputGroup-sizing-lg\">Telefono</span>\r\n");
      out.write("                                                    <input type=\"text\" required class=\"form-control\" name=\"Telefono\" aria-label=\"Sizing example input\" aria-describedby=\"inputGroup-sizing\" maxlength=\"9\" onkeyup=\"this.value=Numeros(this.value)\">\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-4 my-2\">\r\n");
      out.write("                                                    <span class=\"input-group-text\" id=\"inputGroup-sizing-lg\">Departamento</span>\r\n");
      out.write("                                                    <select class=\"form-select form-control\" onchange=\"cambia()\" aria-label=\"Default select example\" name=\"selectDepartamento\" required=\"\">\r\n");
      out.write("                                                        <option value=\"\">Seleccione</option>\r\n");
      out.write("                                                        <option value=\"Amazonas\">Amazonas</option>\r\n");
      out.write("                                                        <option value=\"Ancash\">Ancash</option>\r\n");
      out.write("                                                        <option value=\"Apurímac\">Apurímac</option>\r\n");
      out.write("                                                        <option value=\"Arequipa\">Arequipa</option>\r\n");
      out.write("                                                        <option value=\"Ayacucho\">Ayacucho</option>\r\n");
      out.write("                                                        <option value=\"Cajamarca\">Cajamarca</option>\r\n");
      out.write("                                                        <option value=\"Callao\">Callao</option>\r\n");
      out.write("                                                        <option value=\"Cuzco\">Cuzco </option>\r\n");
      out.write("                                                        <option value=\"Huancavelica\">Huancavelica</option>\r\n");
      out.write("                                                        <option value=\"Huánuco\">Huánuco</option>\r\n");
      out.write("                                                        <option value=\"Ica\">Ica</option>\r\n");
      out.write("                                                        <option value=\"Junín\">Junín</option>\r\n");
      out.write("                                                        <option value=\"La_Libertad\">La Libertad</option>\r\n");
      out.write("                                                        <option value=\"Lambayeque\">Lambayeque</option>\r\n");
      out.write("                                                        <option value=\"Lima\">Lima</option>\r\n");
      out.write("                                                        <option value=\"Loreto\">Loreto</option>\r\n");
      out.write("                                                        <option value=\"Madre_de_Dios\">Madre de Dios</option>\r\n");
      out.write("                                                        <option value=\"Moquegua\">Moquegua</option>\r\n");
      out.write("                                                        <option value=\"Pasco\">Pasco</option>\r\n");
      out.write("                                                        <option value=\"Piura\">Piura</option>\r\n");
      out.write("                                                        <option value=\"Puno\">Puno</option>\r\n");
      out.write("                                                        <option value=\"San_Martín\">San Martín</option>\r\n");
      out.write("                                                        <option value=\"Tacna\">Tacna</option>\r\n");
      out.write("                                                        <option value=\"Tumbes\">Tumbes</option>\r\n");
      out.write("                                                        <option value=\"Ucayali\">Ucayali</option>\r\n");
      out.write("                                                    </select>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-4 my-2\">\r\n");
      out.write("                                                    <span class=\"input-group-text\" id=\"inputGroup-sizing-lg\">Provincia</span>\r\n");
      out.write("                                                    <select class=\"form-select form-control\" aria-label=\"Default select example\" name=\"selectProvincia\" onchange=\"cambiaDistrito()\" required=\"\">\r\n");
      out.write("                                                        <option>Seleccione la Provincia</option>\r\n");
      out.write("                                                    </select>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-4 my-2\">\r\n");
      out.write("                                                    <span class=\"input-group-text\" id=\"inputGroup-sizing-lg\">Distrito</span>\r\n");
      out.write("                                                    <select class=\"form-select form-control\" aria-label=\"Default select example\" name=\"selectDistrito\" required=\"\">\r\n");
      out.write("                                                        <option>Seleccione el Distrito</option>\r\n");
      out.write("                                                    </select>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-12 my-2\">\r\n");
      out.write("                                                    <span class=\"input-group-text\" id=\"inputGroup-sizing-lg\">Direccion</span>\r\n");
      out.write("                                                    <input type=\"text\" required class=\"form-control\" name=\"Direccion\" aria-label=\"Sizing example input\" aria-describedby=\"inputGroup-sizing\">\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-6 my-2\">\r\n");
      out.write("                                                    <span class=\"input-group-text\" id=\"inputGroup-sizing-lg\">Fecha de Nacimiento</span>\r\n");
      out.write("                                                    <input type=\"date\" required class=\"form-control\" name=\"FechaNa\" aria-label=\"Sizing example input\" aria-describedby=\"inputGroup-sizing\" pattern=\"[0-9]{4}-[0-9]{2}-[0-9]{2}\">\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-6 my-2\">\r\n");
      out.write("                                                    <span class=\"input-group-text \" id=\"inputGroup-sizing-lg\">Usuario</span>\r\n");
      out.write("                                                    <input type=\"text\" required class=\"form-control\" name=\"usu\" aria-label=\"Sizing example input\" aria-describedby=\"inputGroup-sizing\">\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-6 my-2 m-auto\">\r\n");
      out.write("                                                    <span class=\"input-group-text\" id=\"inputGroup-sizing-lg\">Constraseña</span>\r\n");
      out.write("                                                    <input type=\"password\" required class=\"form-control\" name=\"pass\" aria-label=\"Sizing example input\" aria-describedby=\"inputGroup-sizing\">\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"input-group input-group-lg my-5 \">\r\n");
      out.write("                                                    <input type=\"submit\" name=\"acc\" value=\"Registrarse\" class=\"btn w-100 btn-primary fw-bold\">\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </form>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </main>\r\n");
      out.write("    </body>\r\n");
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
