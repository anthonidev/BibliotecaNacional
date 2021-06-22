<%-- 
    Document   : libros
    Created on : 21/06/2021, 03:27:07 PM
    Author     : Anthoni
--%>

<%@page import="servicio.PedidoServicioImp"%>
<%@page import="servicio.PedidoServicio"%>
<%@page import="servicio.PedidoServicio"%>
<%-- 
    Document   : Libros
    Created on : 19/06/2021, 11:56:55 PM
    Author     : Anthoni
--%>

<%@page import="java.util.List"%>
<%@page import="servicio.LibroServicio"%>
<%@page import="servicio.LibroServicioImp"%>
<%@page import="vista.PresentadorGeneral"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    PedidoServicio peSer = new PedidoServicioImp();

    List Pendiente = peSer.listarPedido(0);
    List Aceptados = peSer.listarPedido(1);
    List Rechazados = peSer.listarPedido(2);

    LibroServicio libSer = new LibroServicioImp();
    PresentadorGeneral pe = (PresentadorGeneral) session.getAttribute("pg");
    Object[] obj = (Object[]) session.getAttribute("libus");
    Object[] fila = {"", "", "", "", "", "", "", ""};
    List lisCat = libSer.listarCategoria();
    if (obj != null) {
        fila = obj;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../css/style.css">
        <script src="https://kit.fontawesome.com/50872a9b90.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <script src="../../js/validar.js"></script>
        <title>INTRANET</title>
    </head>
    <body>
        <jsp:include page="../Admin/navAdmin.jsp" />
        <%! String estado, estilo;%>
              

        <% Object[] inicio = (Object[]) session.getAttribute("filaInicio");%>

        <% estado = fila[5].toString();
            if (fila[5].equals(0)) {
                estado = "Pendiente";
                estilo = "bg-primary";
            } else if (fila[5].equals(1)) {
                estado = "Aceptado";
                estilo = "bg-success";
            } else if (fila[5].equals(2)) {
                estado = "Rechazado";
                estilo = "bg-danger";
            } else {
                estilo = "";
            } %>


        <div class="d-flex">
            <div class="col-10 m-auto d-flex justify-content-center align-items-center flex-column" style="height: 100vh" id="listar">
                <h1 class="fw-bold text-success my-5">Lista de Libros</h1>
                <table class="table table-light table-striped shadow bg-body rounded border-1">
                        <thead>
                            <tr>
                                <th scope="col">Codigo</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Dni</th>
                                <th scope="col">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="">
                                <% for (int i = 1; i < Pendiente.size(); i++) { %>
                                <% Object[] p = (Object[]) Pendiente.get(i);%>
                                <form action="../../PedidoControl" method="post">
                                    <th scope="row">
                                        <input type="text" name="cod" value="<%= p[0]%>" class="form-control text-center"  readonly>
                                    </th>
                                    <td>
                                        <input type="text" value="<%= p[1]%>" class="form-control text-center "  readonly>
                                    </td>
                                    <td>
                                        <input type="text" value="<%= p[2]%>" class="form-control text-center "  readonly>
                                    </td>
                                    <td>
                                        <div class="input-group mb-3 " style="width: 120px">
                                            <span class="input-group-text">S/.</span>
                                            <input type="text" value="<%= p[4]%>"  class="form-control " readonly>
                                        </div>
                                    </td>
                                    <td>
                                        <input type="submit" name="acc" value="Ver Detalles" class=" btn btn-success">
                                    </td>
                                </form>
                            </tr>
                        <% } %>
                        </tbody>
                    </table>
                <a href="index.jsp" class="btn btn-secondary w-25 my-4 py-3 mx-auto fw-bold">Regresar</a>
            </div>
        </div>
    </body>
</html>
