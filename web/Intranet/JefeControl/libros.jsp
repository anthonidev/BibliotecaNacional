<%-- 
    Document   : libros
    Created on : 21/06/2021, 03:27:07 PM
    Author     : Anthoni
--%>

<%@page import="javax.xml.bind.DatatypeConverter"%>
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
    LibroServicio libSer = new LibroServicioImp();
    PresentadorGeneral pe = (PresentadorGeneral) session.getAttribute("pg");
    Object[] obj = (Object[]) session.getAttribute("libus");
    Object[] fila = {"", "", "", "", "", "", "", ""};
    List lisCat = libSer.listarCategoria();
    if (obj != null) {
        fila = obj;
    }

    LibroServicio serLib = new LibroServicioImp();
    List lis = serLib.listar();
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
                            <th scope="col">Código</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Categoría</th>
                            <th scope="col">Descripción</th>
                            <th scope="col">Stock</th>
                            <th scope="col">Estado</th>
                            <th scope="col">Precio</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <% for (int i = 1; i < lis.size(); i++) {
                                    Object[] libro = (Object[]) lis.get(i);
                                    String data = DatatypeConverter.printBase64Binary((byte[]) libro[7]);
                                    String src = "data:image/png;base64," + data;
                                    if (libro[5].equals(1)) {%>
                    <div class="d-flex flex-column ">
                        <tr >
                            <td style="width: 7%"> <input type="text" value="<%= libro[0]%>" class="form-control text-center  " readonly>
                            </td>
                            <td  ><input type="text" value="<%= libro[1]%>" class="form-control text-center  " readonly></td>
                            <td><input type="text" value="<%= libro[2]%>" class="form-control text-center" readonly></td>
                            <td><input type="text" value="<%= libro[3]%>" class="form-control text-center" readonly></td>
                            <td style="width: 5%"><input type="text" value="<%= libro[4]%>" class="form-control text-center" readonly></td>
                            <td style="width: 11%"><input type="text" value="<%= libro[5]%>" class="form-control text-center " readonly></td>
                            <td style="width: 10%">
                                <div class="input-group">
                                    <span class="input-group-text">S/ </span>
                                    <input type="text" value="<%= libro[6]%>"  class="form-control text-center" readonly>
                                </div>
                            </td>
                            <td scope="row">
                                <button type="button" class=" btn btn-primary" data-bs-toggle="modal" data-bs-target="#Eliminar<%=libro[0]%>">
                                    <i class="fas fa-exclamation-circle m-auto h3 text-secondary text-light"></i>
                                </button>
                                <div class="modal fade" id="Eliminar<%=libro[0]%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog  modal-dialog-centered">

                                        <div class="modal-content">

                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel"><%= libro[1]%></h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>

                                            <div class="modal-body d-flex justify-content-center align-items-center">
                                                <h5 style="width: 30%">                                   <img src="<%= src%>" class="card-img-top rounded-3" />
                                                </h5>
                                                <form action="../../LibroControl" method="post" class=" mx-5">
                                                            <input type="hidden" name="Codigo"  value="<%= libro[0]%>">
                                                            <input type="submit" name="acc" class="shadow bg-gradient btn btn-success btn-lg fw-bold w-100 my-4  " value="Aceptar Libro">
                                                            <input type="submit" name="acc" class="shadow bg-gradient btn btn-danger btn-lg fw-bold w-100 my-4" value="Rechazar Libro">
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <form action="../../LibroControl" method="post" class="">
                                                    <input type="hidden" name="Codigo" value="<%= libro[1]%>">
                                                    <input type="hidden" name="cargo" value="<%= inicio[2]%>">
                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <% }%>
                        <% }%>
                    
                    </tr>
                    </tbody>
                </table>
                <a href="index.jsp" class="btn btn-secondary w-25 my-4 py-3 mx-auto fw-bold">Regresar</a>
            </div>
        </div>
    </body>
</html>
