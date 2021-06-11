<%-- 
    Document   : pedidos
    Created on : 05/06/2021, 02:23:46 PM
    Author     : Anthoni
--%>

<%@page import="java.util.List"%>
<%@page import="vista.PresentadorGeneral"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../css/style.css">
        <script src="https://kit.fontawesome.com/50872a9b90.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <title>Biblioteca</title>
    </head>

    <body class="p-0 ">
        <main class="container-fluid p-0  ">
            <jsp:include page="navAdmin.jsp" />

            <div class="row  m-0">
                <div class="col-1 d-flex align-items-center py-5 shadow-sm p-3 mb-5 bg-primary rounded ">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                        <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded">
                            <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i class="fas fa-users-cog w-100 text-center"></i> Empleados</a>
                        </li>
                        <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded ">
                            <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i class="fas fa-user-tag w-100 text-center"></i> Clientes</a>
                        </li>
                        <li class="nav-item my-4 shadow-sm p-3 my-3 bg-danger rounded ">
                            <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i class="fas fa-truck-loading w-100 text-center"></i> Pedidos</a>
                        </li>
                        <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded ">
                            <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i class="fas fa-book-open w-100 text-center"></i> Libros</a>
                        </li>
                        <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded ">
                            <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i class="fas fa-clipboard-list w-100 text-center"></i> Boletas</a>
                        </li>
                    </ul>
                </div>
                <div class="col-5 ">
                    <div class="row">
                        <div class="col-12">
                            <div class="input-group my-3">
                                <div class="row w-100">

                                    <% PresentadorGeneral pe = (PresentadorGeneral) session.getAttribute("pg");%>
                                    <% Object[] pedido = pe.getPedido();%>


                                    <div class="col-12 d-flex ">
                                        <form action="../../pedidoControl" method="post" class=" d-flex w-100">

                                            <input type="text" class="form-control" required placeholder="Buscar pedido por codigo" name="cod" aria-label="Recipient's username" aria-describedby="button-addon2">
                                            <input class="btn btn-secondary " type="submit" id="button-addon2" name="acc" value="Buscar">
                                        </form>

                                    </div>
                                    <div class="col-12 mt-3" id="mostrar">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="<%=pedido[0]%>">
                                            <label for="floatingInputGrid">Codigo</label>
                                        </div>
                                    </div>
                                    <div class="col-6 mt-3" id="mostrar">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="<%=pedido[1]%>">
                                            <label for="floatingInputGrid">Nombre</label>
                                        </div>
                                    </div>
                                    <div class="col-6 mt-3" id="mostrar">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="<%=pedido[2]%>">
                                            <label for="floatingInputGrid">Apellidos</label>
                                        </div>
                                    </div>
                                    <div class="col-6 mt-3" id="mostrar">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="<%=pedido[3]%>">
                                            <label for="floatingInputGrid">Dni</label>
                                        </div>
                                    </div>
                                    <div class="col-6 mt-3" id="mostrar">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="<%=pedido[4]%>">
                                            <label for="floatingInputGrid">Direccion</label>
                                        </div>
                                    </div>
                                    <div class="col-6 mt-3" id="mostrar">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="<%=pedido[5]%>">
                                            <label for="floatingInputGrid">Fecha de pedido</label>
                                        </div>
                                    </div>
                                    <div class="col-6 mt-3" id="mostrar">
                                        <%! String estado = "";%>
                                        <%! String estilo = "";%>
                                        <%estado = pedido[6].toString();%>
                                        <% if (estado.equals("1")) {
                                                estado = "Aceptado";
                                                estilo = "bg-success";
                                            } else if (estado.equals("2")) {
                                                estado = "Rechazado";
                                                estilo = "bg-danger";
                                            } else if (estado.equals("0")) {
                                                estado = "Pendiente";
                                                estilo = "";
                                            }%>  

                                        <div class="form-floating">
                                            <input type="text" class="form-control <%= estilo%>" id="floatingInputGrid" placeholder="" value="<%= estado%>">
                                            <label for="floatingInputGrid">Estado</label>
                                        </div>
                                    </div>

                                    <div class="col-12 mt-3" id="mostrar">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="<%=pedido[7]%>">
                                            <label for="floatingInputGrid">Total</label>
                                        </div>
                                    </div>
                                    <div class="col-5 m-auto my-5 ">
                                        <h5 class="text-center my-3">Acciones</h5>
                                        <div class="card shadow bg-body rounded border-1 ">
                                            <div class="card-body  d-flex  justify-content-center ">
                                                <form action="../../pedidoControl" method="post" class="d-flex  justify-content-center ">
                                                    <input type="hidden" name="cod" value="<%=pedido[0]%>"> 
                                                    <input type="submit" name="acc" class="btn btn-secondary btn-lg  mx-5 fw-bold " value="Acepar Pedido">
                                                    <input type="submit" name="acc" class="btn btn-danger mx-5 btn-lg fw-bold " value="Rechazar Pedido">
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 m-auto mt-5 ">
                                        <h5 class="text-center my-3">Listar Pedidos</h5>
                                        <div class="card shadow  bg-body rounded border-1">
                                            <div class="card-body  d-flex">
                                                <a href="#listar" class="btn btn-success mx-5 fw-bold ">Pedidos Pendientes</a>
                                                <a href="#listar" class="btn btn-success mx-5 fw-bold ">Pedidos Aceptados</a>
                                                <a href="#listar" class="btn btn-success mx-5 fw-bold ">Pedidos Rechazados</a>
                                            </div>
                                        </div>
                                    </div>



                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-5  ">
                    <div class="col-8 m-auto m-2">
                        <% if (pe.getMsg().toString() != "") {%>
                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                            <h4 class="fw-bold text-center text-dark my-5"><%=pe.getMsg()%></h4>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        <% pe.setMsg(""); %>

                        <%}%>

                    </div>
                    <h5 class="text-center my-4">Detalle del pedido</h5>

                    <table class="table table-light table-striped  shadow  bg-body rounded border-1 ">
                        <thead>
                            <tr>
                                <th scope="col">Id Detalle</th>
                                <th scope="col">Id Libro</th>
                                <th scope="col">Precio</th>
                                <th scope="col">Cantidad</th>

                            </tr>
                        </thead>
                        <tbody>
                            <% List Lista = pe.getListaDetalle(); %>
                             <% for (int i = 1; i < Lista.size(); i++) { %>
                            <% Object[] f = (Object[]) Lista.get(i);%>
                            <tr class="">

                                <th scope="row">

                                    <input type="text"  value="<%= f[0] %>" class="form-control text-center" readonly>
                                </th>
                                <th scope="row">

                                    <input type="text"  value="<%= f[1] %>" class="form-control text-center" readonly>
                                </th>
                                <th scope="row">

                                    <input type="text"  value="<%= f[2] %>" class="form-control text-center" readonly>
                                </th>
                                <th scope="row">

                                    <input type="text" value="<%= f[3] %>" class="form-control text-center" readonly>
                                </th>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-5 m-auto d-flex justify-content-center align-items-center  flex-column" style="height: 100vh" id="listar">
                    <h1 class="fw-bold text-center text-primary my-5">Lista de articulos</h1>
                    <form action="../CompraControl" method="post">
                        <table class="table table-light table-striped  shadow  bg-body rounded border-1 ">
                            <thead>
                                <tr>
                                    <th scope="col">Codigo</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Precio</th>
                                    <th scope="col">Cantidad</th>
                                    <th scope="col">Accion</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="">
                            <form action="../CompraControl" method="post">
                                <th scope="row">

                                    <input type="text"  value="" class="form-control text-center" style="width: 100px" readonly>
                                </th>
                                <td>
                                    <input type="text" v class="form-control text-center " style="width: 250px" readonly>
                                </td>
                                <td>
                                    <div class="input-group mb-3 " style="width: 120px">
                                        <span class="input-group-text">S/.</span>
                                        <input type="text"   class="form-control " readonly>

                                    </div>

                                </td>
                                <td>
                                    <input type="number" name="" required value="" class="form-control " style="width: 120px">
                                </td>
                                <td>
                                    <input type="submit" name="acc" value="Agregar" class=" btn btn-success">
                                </td>
                            </form>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    <input type="hidden" name="acc" value="Agregar multiples articulos" class="btn btn-success">
                                </td>
                            </tr>



                            </tbody>
                        </table>
                    </form>
                </div>
                <div class="col-5 m-auto d-flex justify-content-center align-items-center  flex-column" style="height: 100vh" id="listar">
                    <h1 class="fw-bold text-center text-primary my-5">Lista de articulos</h1>
                    <form action="../CompraControl" method="post">
                        <table class="table table-light table-striped  shadow  bg-body rounded border-1 ">
                            <thead>
                                <tr>
                                    <th scope="col">Codigo</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Precio</th>
                                    <th scope="col">Cantidad</th>
                                    <th scope="col">Accion</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="">
                            <form action="../CompraControl" method="post">
                                <th scope="row">

                                    <input type="text"  value="" class="form-control text-center" style="width: 100px" readonly>
                                </th>
                                <td>
                                    <input type="text" value="" class="form-control text-center " style="width: 250px" readonly>
                                </td>
                                <td>
                                    <div class="input-group mb-3 " style="width: 120px">
                                        <span class="input-group-text">S/.</span>
                                        <input type="text"  value="" class="form-control " readonly>

                                    </div>

                                </td>
                                <td>
                                    <input type="number" name="can" required value="" class="form-control " style="width: 120px">
                                </td>
                                <td>
                                    <input type="submit" name="acc" value="Agregar" class=" btn btn-success">
                                </td>
                            </form>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    <input type="hidden" name="acc" value="Agregar multiples articulos" class="btn btn-success">
                                </td>
                            </tr>



                            </tbody>
                        </table>
                    </form>
                </div>
                <div class="col-5 m-auto d-flex justify-content-center align-items-center  flex-column" style="height: 100vh" id="listar">
                    <h1 class="fw-bold text-center text-primary my-5">Lista de articulos</h1>
                    <form action="../CompraControl" method="post">
                        <table class="table table-light table-striped  shadow  bg-body rounded border-1 ">
                            <thead>
                                <tr>
                                    <th scope="col">Codigo</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Precio</th>
                                    <th scope="col">Cantidad</th>
                                    <th scope="col">Accion</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="">
                            <form action="../CompraControl" method="post">
                                <th scope="row">

                                    <input type="text"  value="" class="form-control text-center" style="width: 100px" readonly>
                                </th>
                                <td>
                                    <input type="text" value="" class="form-control text-center " style="width: 250px" readonly>
                                </td>
                                <td>
                                    <div class="input-group mb-3 " style="width: 120px">
                                        <span class="input-group-text">S/.</span>
                                        <input type="text"  value="" class="form-control " readonly>

                                    </div>

                                </td>
                                <td>
                                    <input type="number" name="can" required value="" class="form-control " style="width: 120px">
                                </td>
                                <td>
                                    <input type="submit" name="acc" value="Agregar" class=" btn btn-success">
                                </td>
                            </form>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    <input type="hidden" name="acc" value="Agregar multiples articulos" class="btn btn-success">
                                </td>
                            </tr>



                            </tbody>
                        </table>
                    </form>
                </div>
            </div>

        </main>
    </body>

</html>
