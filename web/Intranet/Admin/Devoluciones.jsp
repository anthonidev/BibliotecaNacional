<%@page import="servicio.BoletaServicioImp"%>
<%@page import="servicio.BoletaServicio"%>
<%@page import="servicio.PedidoServicioImp"%>
<%@page import="servicio.PedidoServicio"%>
<%@page import="java.util.List"%>
<%@page import="vista.PresentadorGeneral"%>
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
    <body data-bs-spy="scroll" data-bs-target="#navbar" data-bs-offset="94">
        <jsp:include page="navAdmin.jsp"/>
        <jsp:include page="./navbarAdmin.jsp" />
        <div class="container_section_datos container_section_datos--intranet px-3 px-lg-5" id="sec6">
            <div class="d-flex">
                <div class="col-6">
                    <div class="row">
                        <div class="col-12 my-4">
                            <div class="input-group mb-3">
                                <div class="row w-100 px-2">
                                    <% Object[] boleta = pe.getBoletaObj();%>
                                    <div class="d-flex justify-content-between">
                                        <form action="../../DevolcucionControl" method="post" class="col-10">
                                            <div class="row col-12">
                                                <div class="col-9">
                                                    <input type="text" class="form-control rounded-pill" required placeholder="Buscar boleta por código" name="cod" maxlength="8" onkeyup="this.value = Numeros(this.value)" aria-label="Recipient's username" aria-describedby="button-addon2">
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
                                            <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= boleta[0]%>">
                                            <label for="floatingInputGrid">Codigo</label>
                                        </div>
                                    </div>
                                    <div class="col-6 mt-3" id="mostrar">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= boleta[1]%>">
                                            <label for="floatingInputGrid">Nombre</label>
                                        </div>
                                    </div>
                                    <div class="col-6 mt-3" id="mostrar">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= boleta[2]%>">
                                            <label for="floatingInputGrid">Apellidos</label>
                                        </div>
                                    </div>
                                    <div class="col-6 mt-3" id="mostrar">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= boleta[3]%>">
                                            <label for="floatingInputGrid">Dni</label>
                                        </div>
                                    </div>
                                    <div class="col-6 mt-3" id="mostrar">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= boleta[4]%>">
                                            <label for="floatingInputGrid">Direccion</label>
                                        </div>
                                    </div>
                                    <div class="col-6 mt-3" id="mostrar">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= boleta[5]%>">
                                            <label for="floatingInputGrid">Fecha de boleta</label>
                                        </div>
                                    </div>
                                    <div class="col-6 mt-3" id="mostrar">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= boleta[6]%>">
                                            <label for="floatingInputGrid">Fecha de devolucion</label>
                                        </div>
                                    </div>

                                    <h4 class="fw-bold text-secondary text-center my-4">Detalle del pedido</h4>
                                    <table class="table table-light table-striped shadow bg-body rounded border-1">
                                        <thead>
                                            <tr>
                                                <th scope="col">Nombre del libro</th>
                                                <th scope="col">Cantidad</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <% List Lista = pe.getListaDetalle(); %>
                                            <% for (int i = 1; i < Lista.size(); i++) { %>
                                            <% Object[] f = (Object[]) Lista.get(i);%>
                                            <tr class="">

                                                <th scope="row">
                                                    <input type="text"  value="<%= f[1]%>" class="form-control text-center" readonly>
                                                </th>
                                                <th scope="row">
                                                    <input type="text"  value="<%= f[2]%>" class="form-control text-center" readonly>
                                                </th>

                                            </tr>
                                            <% }%>
                                        </tbody>

                                    </table>

                                    <a href="#boletas" class="btn btn-secondary my-2 py-3 fw-bold">Listar Boletas</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-6 d-flex flex-column">


                    <h4 class="fw-bold text-secondary text-center my-4">Evaluacion</h4>
                    <form action="../../DevolcucionControl" method="post" class="">

                        <table class="table table-light table-striped shadow bg-body rounded border-1 ">
                            <thead>
                                <tr>
                                    <th scope="col">Nombre del libro</th>
                                    <th scope="col">Cantidad</th>
                                </tr>
                            </thead>
                            <tbody>

                                <tr class="">

                                    <th scope="row">
                                        <input type="text"  value="Libros Dañados" class="form-control text-center" readonly>
                                    </th>
                                    <th scope="row">
                                        <input type="number"  name="libros" value="" class="form-control text-center"  >
                                    </th>

                                </tr>
                                <tr class="">

                                    <th scope="row">
                                        <input type="text"  value="Dias Pasados" class="form-control text-center" readonly>
                                    </th>
                                    <th scope="row">
                                        <input type="number"  name="dias" value="<%= pe.getDias()%>" max="15" class="form-control text-center" readonly="" >
                                    </th>

                                </tr>
                                <tr >

                                    <td colspan="2" class="table-activ  ">
                                        <input type="submit" name="acc" class="btn btn-info   fw-bold" value="Realizar Evaluacion" >
                                    </td>

                                </tr>
                            </tbody>

                        </table>
                    </form>
                    <div class="justify-content-end  align-self-end ">
                        <div class="card shadow  bg-body rounded border-1">

                            <div class="card-body   ">
                                <div class="input-group input-group ">
                                    <span class="input-group-text" id="inputGroup-sizing-lg " style="width: 80px;">Total</span>
                                    <span class="input-group-text">S/.</span>
                                    <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" value="<%= pe.getPrecioTotal()%>">
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-5 m-auto my-3 p-2">
                        <form action="../../DevolcucionControl" method="post" class="d-flex  justify-content-center">
                            <input type="hidden" name="cod"  value="<%= boleta[0]%>">
                            <input type="hidden" name="total"  value="<%= pe.getPrecioTotal()%>">
                            <input type="submit" name="acc" class="btn btn-success btn-lg px-5 mx-5 fw-bold " value="Devolucion Concretada">
                        </form>
                    </div>
                    <% if (pe.getMsg().toString() != "") {%>
                    <div class="alert alert-warning alert-dismissible fade show mt-4" role="alert">
                        <h4 class="fw-bold text-center text-dark my-2"><%= pe.getMsg()%></h4>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                    <% pe.setMsg(""); %>
                    <% }%>
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
                            <% for (int e = 1; e < Aceptados.size(); e++) { %>
                            <% Object[] a = (Object[]) Aceptados.get(e);%>
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
                        <% for (int x = 1; x < boletas.size(); x++) { %>
                        <% Object[] bole = (Object[]) boletas.get(x);%>
                        <tr class="">
                    <form action="../../BoletaControl" method="post" target="_blank">
                        <th scope="row">
                            <input type="text" name="idBoleta" value="<%= bole[0]%>" class="form-control text-center"  readonly>
                        </th>
                        <td>
                            <input type="text" name="idPedido" value="<%= bole[1]%>" class="form-control text-center "  readonly>
                        </td>
                        <td>
                            <input type="text" value="<%= bole[2]%>" class="form-control text-center"  readonly>
                        </td>
                        <td>
                            <input type="text" name="fecha" value="<%= bole[3]%>" class="form-control text-center" readonly>
                        </td>
                        <td>
                            <input type="text" value="<%= bole[4]%>" class="form-control text-center" readonly>
                        </td>
                        <td>
                            <input type="submit" name="acc" value="Exportar PDF" class=" btn btn-success">
                        </td>
                    </form>
                    </tr>
                    <% }%>
                    </tbody>
                </table>
                <a href="#" class="btn btn-secondary w-25 my-4 py-3 mx-auto fw-bold">Regresar</a>
            </div>
        </div>
    </body>
</html>
