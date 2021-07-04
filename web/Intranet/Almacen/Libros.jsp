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
                            <th scope="col">Precio</th>
                            <th scope="col">Stock</th>
                            <th scope="col">Estado</th>
                            <th scope="col">Precio</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <% List lista = libSer.listar();
                                for (int i = 1; i < lista.size(); i++) {
                                    Object[] fi = (Object[]) lista.get(i);
                                    String style;
                                    if (fi[5].equals(0)) {
                                        fi[5] = "Pendiente";
                                        style = "bg-primary";
                                    } else if (fi[5].equals(1)) {
                                        fi[5] = "Aceptado";
                                        style = "bg-success";
                                    } else {
                                        fi[5] = "Rechazado";
                                        style = "bg-danger";
                                    }%>
                    <div class="d-flex flex-column">
                        <tr>
                            <td style="width: 7%"><input type="text" value="<%= fi[0]%>" class="form-control text-center" readonly></td>
                            <td><input type="text" value="<%= fi[1]%>" class="form-control text-center" readonly></td>
                            <td><input type="text" value="<%= fi[2]%>" class="form-control text-center" readonly></td>
                            <td><input type="text" value="<%= fi[6]%>" class="form-control text-center" readonly></td>
                            <td style="width: 5%"><input type="text" value="<%= fi[4]%>" class="form-control text-center" readonly></td>
                            <td style="width: 11%"><input type="text" value="<%= fi[5]%>" class="form-control text-center <%= style%>" readonly></td>
                            <td style="width: 10%">
                                <div class="input-group">
                                    <span class="input-group-text">S/ </span>
                                    <input type="text" value="<%= fi[6]%>"  class="form-control text-center" readonly>
                                </div>
                            </td>
                            <td scope="row">
                                <input type="hidden" name="Codigo" value="<%= fi[0]%>" >
                                <button type="button" class=" btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal<%= fi[0]%>">
                                    <i class="fas fa-pen-square m-auto h3 text-light"></i>
                                </button>
                                <div class="modal fade" id="exampleModal<%= fi[0]%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-lg modal-dialog-centered">
                                        <form action="../../LibroControl" method="post" class="mx-3">

                                            <div class="modal-content">

                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Actualizar Libro</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>

                                                <div class="modal-body">
                                                    <div class="d-flex flex-column align-items-center justify-content-center w-100">
                                                        <div class="row">
                                                            <div>
                                                                <input type="hidden" name="Codigo" value="<%= fi[0]%>">
                                                                <input type="hidden" name="cargo" value="<%= inicio[2]%>">
                                                            </div>
                                                            <div class="col-6 my-2">
                                                                <span class="input-group-text" id="inputGroup-sizing-lg">Stock</span>
                                                                <input type="text" required class="form-control" name="Stock" value="<%= fi[4]%>" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" onkeyup="this.value = Numeros(this.value)">
                                                            </div>
                                                            <div class="col-6 my-2">
                                                                <span class="input-group-text" id="inputGroup-sizing-lg">Precio</span>
                                                                <div class="input-group">
                                                                    <span class="input-group-text">S/.</span>
                                                                    <input type="text" name="Precio" value="<%= fi[6]%>"  class="form-control">
                                                                </div>
                                                            </div>
                                                            <div class="col-12 my-2">
                                                                <span class="input-group-text" id="inputGroup-sizing-lg">Descripcion</span>
                                                                <textarea required class="form-control" name="Descripcion" id="floatingTextarea2" style="height: 125px" aria-label="Sizing example input" aria-describedby="inputGroup-sizing"><%= fi[3]%></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                                    <input type="submit" class="btn  btn-primary" name="acc" value="Actualizar">

                                                </div>

                                            </div>
                                        </form>

                                    </div>
                                </div>
                                <button type="button" class=" btn btn-danger" data-bs-toggle="modal" data-bs-target="#Eliminar<%= fi[0]%>">
                                    <i class="fas fa-minus-square m-auto h3 text-light"></i>
                                </button>
                                <div class="modal fade" id="Eliminar<%= fi[0]%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-lg modal-dialog-centered">

                                        <div class="modal-content">

                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">¿Estas seguro?</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>

                                            <div class="modal-body">
                                                <h5>Se eliminara el libro: <%= fi[1]%></h5>
                                            </div>
                                            <div class="modal-footer">
                                                <form action="../../LibroControl" method="post" class="">

                                                    <input type="hidden" name="Codigo" value="<%= fi[0]%>">
                                                    <input type="hidden" name="cargo" value="<%= inicio[2]%>">
                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                                    <input type="submit" class="btn  btn-danger" name="acc" value="Eliminar">
                                                </form>


                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </div>
                    <% }%>
                    </tr>
                    </tbody>
                </table>
                    <a href="index.jsp" class="btn btn-secondary w-25 my-4 py-3 mx-auto fw-bold">Regresar</a>
            </div>
        </div>
    </body>
</html>