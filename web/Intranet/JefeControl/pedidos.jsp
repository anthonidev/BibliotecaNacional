<%-- 
    Document   : libros
    Created on : 21/06/2021, 03:27:07 PM
    Author     : Anthoni
--%>

<%@page import="servicio.PedidoServicioImp"%>
<%@page import="servicio.PedidoServicio"%>
<%@page import="servicio.PedidoServicio"%>
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
    Object[] obj = (Object[]) session.getAttribute("libus");
    Object[] fila = {"", "", "", "", "", "", "", ""};
    List lisCat = libSer.listarCategoria();
    if (obj != null) {
        fila = obj;
    }
%>
<%! int cantidad; %>
<% cantidad = Pendiente.size() - 1; %>
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


        <% Object[] inicio = (Object[]) session.getAttribute("filaInicio");
            PresentadorGeneral pre = new PresentadorGeneral();

        %>

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


        <div class="row">
            <div class="col-10 m-auto" id="#">
                <div class="d-flex px-5">
                    <div class="col-6">
                        <div class="row">
                            <div class="col-12 my-4">
                                <div class="input-group mb-3">
                                    <div class="row w-100 px-2">
                                        <% PresentadorGeneral pe = (PresentadorGeneral) session.getAttribute("pg");%>
                                        <% Object[] pedido = pe.getPedido();%>
                                        <div class="d-flex justify-content-between">
                                            <form action="../../PedidoControl" method="post" class="col-10">
                                                <div class="row col-12">
                                                    <div class="col-9">
                                                        <input type="text" class="form-control rounded-pill" required placeholder="Buscar Pedido por código" name="cod" maxlength="8" onkeyup="this.value = Numeros(this.value)" aria-label="Recipient's username" aria-describedby="button-addon2">
                                                    </div>
                                                    <div class="col-3 d-flex flex-column">
                                                        <input class="btn btn-secondary" type="submit" id="button-addon2" name="acc" value="Buscar">
                                                    </div>
                                                </div>
                                            </form>
                                            <form action="../../PedidoControl" method="post" class="col-2">
                                                <div class="d-flex flex-column">
                                                    <input class="btn btn-secondary" type="submit" id="button-addon2" name="acc" value="Limpiar">
                                                </div>
                                            </form>
                                        </div>
                                        <div class="col-12 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= pedido[0]%>">
                                                <label for="floatingInputGrid">Codigo</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= pedido[1]%>">
                                                <label for="floatingInputGrid">Nombre</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= pedido[2]%>">
                                                <label for="floatingInputGrid">Apellidos</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= pedido[3]%>">
                                                <label for="floatingInputGrid">Dni</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= pedido[4]%>">
                                                <label for="floatingInputGrid">Direccion</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= pedido[5]%>">
                                                <label for="floatingInputGrid">Fecha de pedido</label>

                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <% estado = pedido[6].toString(); %>
                                            <% if (estado.equals("1")) {
                                                    estado = "Aceptado";
                                                    estilo = "bg-success";
                                                } else if (estado.equals("2")) {
                                                    estado = "Rechazado";
                                                    estilo = "bg-danger";
                                                } else if (estado.equals("0")) {
                                                    estado = "Pendiente";
                                                    estilo = "bg-primary";
                                                } else {
                                                    estilo = "";
                                                }%>

                                            <div class="form-floating">
                                                <input type="text" class="form-control <%= estilo%>" id="floatingInputGrid" readonly value="<%= estado%>">
                                                <label for="floatingInputGrid">Estado</label>
                                            </div>
                                        </div>
                                        <div class="col-12 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <% String total = "S/  " + pedido[7];%>
                                                <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= total%>">
                                                <label for="floatingInputGrid">Total</label>
                                            </div>
                                        </div>
                                        <div class="col-5 m-auto mt-3 p-2">
                                            <div class="card shadow bg-body rounded border-1 ">
                                                <div class="card-body  d-flex  justify-content-center">
                                                    <form action="../../PedidoControl" method="post" class="d-flex  justify-content-center ">
                                                        <input type="hidden" name="cod" value="<%= pedido[0]%>"> 
                                                        <input type="submit" name="acc" class="btn btn-success btn-lg  mx-5 fw-bold " value="Aceptar Pedido">
                                                        <input type="submit" name="acc" class="btn btn-danger mx-5 btn-lg fw-bold " value="Rechazar Pedido">
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 m-auto my-4">
                                            <div class="card shadow bg-body rounded border-1">
                                                <div class="card-body d-flex">
                                                    <a href="#pendientes" class="btn btn-secondary m-auto fw-bold">Pedidos Pendientes
                                                        <span class="position-absolute text-dark top-0 start-100 translate-middle badge rounded-pill bg-primary">
                                                            <%=cantidad%> 
                                                            <span class="visually-hidden">unread messages</span>
                                                        </span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 d-flex flex-column">
                        <% if (pe.getMsg().toString() != "") {%>
                        <div class="alert alert-warning alert-dismissible fade show mt-4" role="alert">
                            <h4 class="fw-bold text-center text-dark my-2"><%= pe.getMsg()%></h4>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        <% pe.setMsg(""); %>
                        <% } %>
                        <h4 class="fw-bold text-secondary text-center my-4">Detalle del pedido</h4>
                        <table class="table table-light table-striped shadow bg-body rounded border-1">
                            <thead>
                                <tr>
                                    <th scope="col">Id Detalle</th>
                                    <th scope="col">Nombre del libro</th>
                                    <th scope="col">Cantidad</th>
                                    <th scope="col">Precio</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% List Lista = pe.getListaDetalle(); %>
                                <% for (int i = 1; i < Lista.size(); i++) { %>
                                <% Object[] f = (Object[]) Lista.get(i);%>
                                <tr class="">
                                    <th scope="row">
                                        <input type="text"  value="<%= f[0]%>" class="form-control text-center" readonly>
                                    </th>
                                    <th scope="row">
                                        <input type="text"  value="<%= f[1]%>" class="form-control text-center" readonly>
                                    </th>
                                    <th scope="row">
                                        <input type="text"  value="<%= f[2]%>" class="form-control text-center" readonly>
                                    </th>
                                    <th scope="row">
                                        <div class="input-group">
                                            <span class="input-group-text">S/ </span>
                                            <input type="text" value="<%= f[3]%>"  class="form-control " readonly>
                                        </div>
                                    </th>
                                </tr>
                                <% }%>
                            </tbody>
                            <tbody>
                                <tr class="">
                                    <th scope="row" colspan="3" class="text-center align-middle">
                                        Total
                                    </th>
                                    <th scope="row">
                                        <div class="input-group">
                                            <span class="input-group-text bg-white fw-bold">S/ </span>
                                            <span class="form-control fw-bold"><%= pedido[7]%>
                                        </div>
                                    </th>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="col-8 m-auto d-flex justify-content-center align-items-center flex-column"  style="height: 100vh" id="pendientes">
                <h1 class="fw-bold text-success my-5">Pedidos Pendientes</h1>
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
                            <input type="hidden" name="cargo" value="<%=inicio[2]%>">

                            <input type="submit" name="acc" value="Ver Detalles" class=" btn btn-success">
                        </td>
                    </form>
                    </tr>
                    <% }%>
                    </tbody>
                </table>
                <a href="index.jsp" class="btn btn-secondary w-25 my-4 py-3 mx-auto fw-bold">Regresar</a>
            </div>


        </div>

    </body>
</html>
