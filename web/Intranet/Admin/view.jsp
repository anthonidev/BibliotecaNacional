<%-- 
    Document   : view
    Created on : Jul 1, 2021, 1:21:43 AM
    Author     : jesus
--%>

<%@page import="servicio.PedidoServicioImp"%>
<%@page import="servicio.BoletaServicioImp"%>
<%@page import="servicio.BoletaServicio"%>
<%@page import="servicio.PedidoServicio"%>
<%@page import="vista.PresentadorGeneral"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% PedidoServicio peSer = new PedidoServicioImp(); %>
<% BoletaServicio bolSer = new BoletaServicioImp(); %>
<% PresentadorGeneral pe = (PresentadorGeneral) session.getAttribute("pg");%>
<% Object[] inicio = (Object[]) session.getAttribute("filaInicio"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../css/style.css">
        <script src="https://kit.fontawesome.com/50872a9b90.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <title>Biblioteca</title>
    </head>
    <body>
        <jsp:include page="navAdmin.jsp"/>
        <jsp:include page="./navbarAdmin.jsp" />
        <div class="container_section_datos container_section_datos--intranet px-3 px-lg-5" id="sec5">
            <div class="d-flex">
                <div class="col-6">
                    <div class="row">
                        <div class="col-12 my-4">
                            <div class="input-group mb-3">

                                

                                <div class="row w-100 px-2">
                                    <% Object[] pedido = pe.getPedido();%>
                                    <div class="d-flex justify-content-between">
                                        <form action="../../BoletaControl" method="post" class="col-10">
                                            <div class="row col-12">
                                                <div class="col-9">
                                                    <input type="text" class="form-control rounded-pill" required placeholder="Buscar Pedido por código" name="cod" maxlength="8" onkeyup="this.value = Numeros(this.value)" aria-label="Recipient's username" aria-describedby="button-addon2">
                                                </div>
                                                <div class="col-3 d-flex flex-column">
                                                    <input class="btn btn-secondary" type="submit" id="button-addon2" name="acc" value="Buscar">
                                                </div>
                                            </div>
                                        </form>
                                        <form action="../../BoletaControl" method="post" class="col-2">
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
                                        <div class="form-floating">
                                            <% String total = "S/ " + pedido[7];%>
                                            <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= total%>">
                                            <label for="floatingInputGrid">Total</label>
                                        </div>
                                    </div>
                                    <div class="col-5 m-auto my-3 p-2">
                                        <form action="../../BoletaControl" method="post" class="d-flex  justify-content-center">
                                            <input type="hidden" name="codPedido" value="<%= pedido[0]%>">
                                            <input type="hidden" name="codEmpleado" value="<%= inicio[0]%>">
                                            <input type="hidden" name="fechPedido" value="<%= pedido[5]%>">
                                            <input type="hidden" name="total" value="<%= pedido[7]%>">
                                            <input type="submit" name="acc" class="btn btn-success btn-lg px-5 mx-5 fw-bold " value="Generar Boleta">
                                        </form>
                                    </div>
                                    <a href="#pedidos" class="btn btn-secondary my-2 py-3 fw-bold">Listar Pedidos</a>
                                    <a href="#boletas" class="btn btn-secondary my-2 py-3 fw-bold">Listar Boletas</a>
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
        <div class="container_section_datos container_section_datos--intranet px-3 px-lg-5">
            <div class="col-5 m-auto d-flex w-50 justify-content-center align-items-center flex-column" style="height: 100vh" id="pedidos">
                <h1 class="fw-bold text-center text-primary my-5">Lista de Pedidos Aceptados</h1>
                <% List Aceptados = peSer.listarPedido(1); %>
                <table class="table table-light table-striped  shadow  bg-body rounded border-1">
                    <thead>
                        <tr>
                            <th scope="col">Codigo</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Dni</th>
                            <th scope="col">Total</th>
                            <th scope="col">Ver</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="">
                            <% for (int i = 1; i < Aceptados.size(); i++) { %>
                            <% Object[] a = (Object[]) Aceptados.get(i);%>
                            <form action="../../BoletaControl" method="post">
                                <th scope="row">
                                    <input type="text" name="cod" value="<%= a[0]%>" class="form-control text-center"  readonly>
                                </th>
                                <td>
                                    <input type="text" value="<%= a[1]%>" class="form-control text-center "  readonly>
                                </td>
                                <td>
                                    <input type="text" value="<%= a[2]%>" class="form-control text-center "  readonly>
                                </td>
                                <td>
                                    <div class="input-group mb-3 " style="width: 120px">
                                        <span class="input-group-text">S/.</span>
                                        <input type="text" value="<%= a[4]%>"  class="form-control " readonly>
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
                <a href="#" class="btn btn-secondary w-25 my-4 py-3 mx-auto fw-bold">Regresar</a>
            </div>
        </div>
        <div class="container_section_datos container_section_datos--intranet px-3 px-lg-5">
            <div class="col-5 m-auto d-flex w-50 justify-content-center align-items-center flex-column" style="height: 100vh" id="boletas">
                <h1 class="fw-bold text-center text-primary my-5">Lista de Boletas</h1>
                <% List boletas = bolSer.listar(); %>
                <table class="table table-light table-striped  shadow  bg-body rounded border-1">
                    <thead>
                        <tr>
                            <th scope="col">ID Boleta</th>
                            <th scope="col">ID Pedido</th>
                            <th scope="col">Dni de Empleado</th>
                            <th scope="col">Fecha de Entrega</th>
                            <th scope="col">Fecha de Devolución</th>
                            <th scope="col">Ver</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (int i = 1; i < boletas.size(); i++) { %>
                        <% Object[] boleta = (Object[]) boletas.get(i);%>
                        <tr class="">
                            <form action="../../ExportarControl" method="post" target="_blank">
                                <th scope="row">
                                    <input type="text" name="idBoleta" value="<%= boleta[0]%>" class="form-control text-center"  readonly>
                                </th>
                                <td>
                                    <input type="text" value="<%= boleta[1]%>" class="form-control text-center "  readonly>
                                </td>
                                <td>
                                    <input type="text" value="<%= boleta[2]%>" class="form-control text-center"  readonly>
                                </td>
                                <td>
                                    <input type="text" value="<%= boleta[3]%>" class="form-control text-center" readonly>
                                </td>
                                <td>
                                    <input type="text" value="<%= boleta[4]%>" class="form-control text-center" readonly>
                                </td>
                                <td>
                                    <input type="submit" name="acc" value="Exportar PDF" class=" btn btn-success">
                                </td>
                            </form>
                    <form action="../../ExportarControl" method="post" target="_blank">
                                    <th scope="row">
                                        <input type="text" name="idBoleta" value="10000" class="form-control text-center"  readonly>
                                    </th>
                                    <td>
                                        <input type="submit" name="acc" value="Exportar PDF" class=" btn btn-success">
                                    </td>
                                </form>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
                <a href="#" class="btn btn-secondary w-25 my-4 py-3 mx-auto fw-bold">Regresar</a>
            </div>
        </div>
    </body>
</html>
