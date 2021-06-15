package org.apache.jsp.Intranet.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

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
      response.setContentType("text/html; charset=UTF-8");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

    Gson gsonObj = new Gson();
    Map<Object, Object> map = null;
    List<Map<Object, Object>> list = new ArrayList<Map<Object, Object>>();
    map = new HashMap<Object, Object>();
    map.put("label", "Work");
    map.put("y", 44);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "Gym");
    map.put("y", 9);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "Leisure");
    map.put("y", 8);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "Routines");
    map.put("y", 8);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "Nap");
    map.put("y", 2);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "Sleep");
    map.put("y", 29);
    list.add(map);
    String dataPoints = gsonObj.toJson(list);

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"es\">\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../../css/style.css\">\r\n");
      out.write("        <script src=\"https://kit.fontawesome.com/50872a9b90.js\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <title>Biblioteca</title>\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body class=\"\">\r\n");
      out.write("\r\n");
      out.write("        <main class=\"container-fluid p-0 \">\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navAdmin.jsp", out, false);
      out.write("\r\n");
      out.write("            <div class=\"row \">\r\n");
      out.write("                <div class=\"col-1 d-flex align-items-center py-5 shadow-sm p-3 mb-5 bg-primary rounded\">\r\n");
      out.write("                    <ul class=\"navbar-nav me-auto mb-2 mb-lg-0 \">\r\n");
      out.write("                        <li class=\"nav-item my-4 shadow-sm p-3 my-3 bg-body rounded\">\r\n");
      out.write("                            <a class=\"nav-link active text-dark h5 text-center\" aria-current=\"page\" href=\"empleados.jsp\"><i class=\"fas fa-users-cog w-100 text-center\"></i>Empleados</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item my-4 shadow-sm p-3 my-3 bg-body rounded \">\r\n");
      out.write("                            <form action=\"../../clienteControl\" method=\"post\">\r\n");
      out.write("                                <i class=\"fas fa-user-tag h5 w-100 text-center\"></i>\r\n");
      out.write("                                <input class=\"nav-link active text-dark h5 text-center border-0 bg-body m-auto\" type=\"submit\" name=\"acc\" value=\"Clientes\" >\r\n");
      out.write("                            </form>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item my-4 shadow-sm p-3 my-3 bg-body rounded \">\r\n");
      out.write("                            <form action=\"../../pedidoControl\" method=\"post\">\r\n");
      out.write("                                <i class=\"fas fa-truck-loading w-100 text-center h5\"></i>\r\n");
      out.write("                                <input class=\"nav-link active text-dark h5 text-center border-0 bg-body m-auto\" type=\"submit\" name=\"acc\" value=\"Pedidos\" >\r\n");
      out.write("                            </form>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item my-4 shadow-sm p-3 my-3 bg-body rounded \">\r\n");
      out.write("                            <a class=\"nav-link active text-dark h5 text-center\" aria-current=\"page\" href=\"libros.jsp\"><i class=\"fas fa-users-cog w-100 text-center\"></i>Libros</a>\r\n");
      out.write("\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item my-4 shadow-sm p-3 my-3 bg-body rounded \">\r\n");
      out.write("                            <form action=\"\">\r\n");
      out.write("                                <i class=\"fas fa-clipboard-list w-100 text-center h5\"></i>\r\n");
      out.write("                                <input class=\"nav-link active text-dark h5 text-center border-0 bg-body m-auto\" type=\"submit\" name=\"acc\" value=\"Boletas\" >\r\n");
      out.write("                            </form>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"col-8 m-auto \">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"row \">\r\n");
      out.write("                        <div class=\"col-12 \">\r\n");
      out.write("                            <ul class=\"navbar-nav  mb-2 mb-lg-0 d-flex align-items-start  justify-content-start    \">\r\n");
      out.write("                                <li class=\"nav-item mx-3 \">\r\n");
      out.write("                                    <ul class=\"navbar-nav mb-2 mb-lg-0 d-flex flex-column align-items-start  justify-content-start \">   \r\n");
      out.write("                                        <li class=\"nav-item mx-3 \">\r\n");
      out.write("                                            <h1 class=\"text-dark h4 text-uppercase \"><i class=\"fas fa-user-tie\"></i> Cargo: %> </h1>\r\n");
      out.write("                                        </li>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </li>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-12 shadow p-3 bg-body rounded \">\r\n");
      out.write("                            <script type=\"text/javascript\">\r\n");
      out.write("                                window.onload = function () {\r\n");
      out.write("                                    var chart = new CanvasJS.Chart(\"chartContainer\", {\r\n");
      out.write("                                        theme: \"light2\", // \"light1\", \"dark1\", \"dark2\"\r\n");
      out.write("                                        exportEnabled: true,\r\n");
      out.write("                                        animationEnabled: true,\r\n");
      out.write("                                        title: {\r\n");
      out.write("                                            text: \"Typical Day\"\r\n");
      out.write("                                        },\r\n");
      out.write("                                        data: [{\r\n");
      out.write("                                                type: \"pie\",\r\n");
      out.write("                                                toolTipContent: \"<b>{label}</b>: {y}%\",\r\n");
      out.write("                                                indexLabelFontSize: 16,\r\n");
      out.write("                                                indexLabel: \"{label} - {y}%\",\r\n");
      out.write("                                                dataPoints: ");
out.print(dataPoints);
      out.write("\r\n");
      out.write("                                            }]\r\n");
      out.write("                                    });\r\n");
      out.write("                                    chart.render();\r\n");
      out.write("                                }\r\n");
      out.write("                            </script>\r\n");
      out.write("                            <div id=\"chartContainer\" style=\"height: 370px; width: 100%;\"></div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-12 shadow p-3 bg-body rounded my-5\">\r\n");
      out.write("                            <div class=\"card\" style=\"width: 18rem;\">\r\n");
      out.write("                                <img src=\"...\" class=\"card-img-top\" alt=\"...\">\r\n");
      out.write("                                <div class=\"card-body\">\r\n");
      out.write("                                    <h5 class=\"card-title\">Card title</h5>\r\n");
      out.write("                                    <p class=\"card-text\">Some quick example text to build on the card title and make up the bulk of the card's content.</p>\r\n");
      out.write("                                    <a href=\"#\" class=\"btn btn-primary\">Go somewhere</a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    </body>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <script src=\"https://canvasjs.com/assets/script/canvasjs.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        </main>\r\n");
      out.write("    </body>\r\n");
      out.write("\r\n");
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
