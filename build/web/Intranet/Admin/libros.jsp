<%@page import="java.util.List"%>
<%@page import="servicio.LibroServicio"%>
<%@page import="servicio.LibroServicioImp"%>
<%@page import="vista.PresentadorGeneral"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    LibroServicio libSer=new LibroServicioImp();
    PresentadorGeneral pe = (PresentadorGeneral) session.getAttribute("pg");
    Object[] obj=(Object[])session.getAttribute("libus");
    Object[] fila={"","","","","","","",""};
    List lisCat=libSer.listarCategoria();
    if (obj!=null) fila=obj;
%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="./metas-head.jsp" />
        <title>INTRANET</title>
    </head>
    <body>
        <jsp:include page="navAdmin.jsp" />
        <%! String estado, estilo; %>
        <% estado=fila[5].toString();
           if (fila[5].equals(0)) { estado="Pendiente"; estilo="bg-primary"; }
           else if (fila[5].equals(1)) { estado="Aceptado"; estilo="bg-success"; }
           else if (fila[5].equals(2)) { estado="Rechazado"; estilo="bg-danger"; } 
           else estilo=""; %>
        
        <div class="d-flex" style="height: 94vh">
            <div class="col-1 py-4 d-flex shadow-sm p-3 mb-5 bg-primary rounded">
                    <ul class="navbar-nav d-flex justify-content-between me-auto mb-2 mb-lg-0">
                        <li class="nav-item shadow-sm p-3 bg-body rounded">
                            <a class="nav-link active text-dark text-center" aria-current="page" href="empleados.jsp"><i
                                    class="fas fa-users-cog w-100 h3 text-center"></i>Empleados</a>
                        </li>
                        <li class="nav-item shadow-sm p-3 bg-body rounded">
                            <form action="../../ClienteControl" method="post">
                                <i class="fas fa-user-tag w-100 h3 text-center"></i>
                                <input class="nav-link active text-dark text-center border-0 bg-body m-auto p-2" type="submit" name="acc" value="Clientes" >
                            </form>
                        </li>
                        <li class="nav-item shadow-sm p-3 bg-body rounded">
                            <form action="../../PedidoControl" method="post">
                                <i class="fas fa-truck-loading w-100 h3 text-center"></i>
                                <input class="nav-link active text-dark text-center border-0 bg-body m-auto p-2" type="submit" name="acc" value="Pedidos" >
                            </form>
                        </li>
                        <li class="nav-item shadow-sm p-3 bg-danger rounded">
                            <a class="nav-link active text-dark text-center" aria-current="page" href="libros.jsp"><i
                                    class="fas fa-book-open w-100 h3 text-center"></i>Libros</a>
                        </li>
                        <li class="nav-item shadow-sm p-3 bg-body rounded">
                            <form action="../../PedidoControl" method="post">
                                <i class="fas fa-clipboard-list w-100 h3 text-center"></i>
                                <input class="nav-link active text-dark text-center border-0 bg-body m-auto p-2" type="submit" name="acc" value="Boletas" >
                            </form>
                        </li>
                    </ul>
                </div>
            <div class="col-11" id="#">
                <div class="d-flex px-5">
                    <div class="col-6">
                        <div class="row">
                            <div class="col-12 my-4">
                                <div class="input-group mb-3">
                                    <div class="row w-100 px-2">
                                        <div class="d-flex justify-content-between">
                                            <form action="../../LibroControl" method="post" class="col-10">
                                                <div class="row col-12">
                                                    <div class="col-9">
                                                        <input type="text" class="form-control rounded-pill" required placeholder="Buscar Libro por código" name="Codigo" maxlength="5" onkeyup="this.value=Numeros(this.value)" aria-label="Recipient's username" aria-describedby="button-addon2">
                                                    </div>
                                                    <div class="col-3 d-flex flex-column">
                                                        <input class="btn btn-secondary" type="submit" id="button-addon2" name="acc" value="Buscar">
                                                    </div>
                                                </div>
                                            </form>
                                            <form action="../../LibroControl" method="post" class="col-2">
                                                <div class="d-flex flex-column">
                                                    <input class="btn btn-secondary" type="submit" id="button-addon2" name="acc" value="Limpiar">
                                                </div>
                                            </form>
                                        </div>
                                        <div class="col-8 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[0] %>" readonly>
                                                <label for="floatingInputGrid">Código</label>
                                            </div>
                                            <div class="col-12 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[1] %>" readonly>
                                                    <label for="floatingInputGrid">Nombre</label>
                                                </div>
                                            </div>
                                            <div class="col-12 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <textarea class="form-control" id="floatingTextarea2" style="height: 120px" readonly><%= fila[3] %></textarea>
                                                    <label for="floatingTextarea2">Descripción</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="image" class="form-control" src="<%= fila[7] %>" value="" style="height: 35vh;" readonly>
                                                <label for="floatingInputGrid">Portada</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[2] %>" readonly>
                                                <label for="floatingInputGrid">Categoría</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control <%= estilo %>" id="floatingInputGrid" value="<%= estado %>" readonly>
                                                <label for="floatingInputGrid">Estado</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[4] %>" readonly>
                                                <label for="floatingInputGrid">Stock</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <% String precio="S/  "+fila[6]; %>
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= precio %>" readonly>
                                                <label for="floatingInputGrid">Precio</label>
                                            </div>
                                        </div>
                                        <a href="#listar" class="btn btn-secondary my-5 py-3 fw-bold">Listar Libros</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 d-flex flex-column">
                        <% if (pe.getMsg().toString() != "") { %>
                        <div class="alert alert-warning alert-dismissible fade show mt-4" role="alert">
                            <h4 class="fw-bold text-center text-dark my-2"><%= pe.getMsg() %></h4>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        <% pe.setMsg(""); %>
                        <% } %>
                        <div class="accordion accordion-flush shadow bg-body rounded border-1 mt-4 mx-3" id="accordionFlushExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header " id="flush-headingOne">
                                    <button class="accordion-button collapsed  " type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">Registrar Libro</button>
                                </h2>
                                <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body bg-light">
                                        <form action="../../LibroControl" method="post" class="d-flex flex-column align-items-center">
                                            <div class="row px-3 g-1">
                                                <div class="col-6 form-floating">
                                                    <input placeholder="Nombre" type="text" required class="form-control" name="Nombre" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                                    <label for="floatingInput">Nombre</label>
                                                </div>
                                                <div class="col-6 form-floating">
                                                    <select class="form-select form-control" aria-label="Default select example" name="Categoria" required>
                                                        <option selected>Seleccione</option>
                                                        <% for (int i = 1; i < lisCat.size(); i++) { %>
                                                        <% Object[] cat=(Object[]) lisCat.get(i); %>
                                                        <option value="<%= cat[0] %>"><%= cat[1] %></option>
                                                        <% } %>
                                                    </select>
                                                    <label for="floatingInput">Categoría</label>
                                                </div>
                                                <div class="col-6 my-2 form-floating">
                                                    <input placeholder="Stock" type="text" required class="form-control" name="Stock" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" maxlength="3" onkeyup="this.value=Numeros(this.value)">
                                                    <label for="floatingInput">Stock</label>
                                                </div>
                                                <div class="col-6 my-2">
                                                    <div class="input-group form-floating">
                                                        <span class="input-group-text">S/ </span>
                                                        <input placeholder="Precio" type="text" required class="form-control" name="Precio" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" maxlength="6" onkeyup="this.value=Precios(this.value)">
                                                        <label for="floatingInput" class="ps-5 ms-1">Precio</label>
                                                    </div>
                                                </div>
                                                <div class="col-12 my-2 form-floating">
                                                    <textarea placeholder="Descripcion" required class="form-control" name="Descripcion" id="floatingTextarea2" style="height: 125px" aria-label="Sizing example input" aria-describedby="inputGroup-sizing"></textarea>
                                                    <label for="floatingInput">Descripción</label>
                                                </div>
                                                <div class="col-12 my-2">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Portada</span>
                                                    <input type="file" required class="form-control" name="Portada" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                                </div>
                                            </div>
                                            <input type="submit" name="acc" value="Registrar" class="btn btn btn-primary w-75 btn-lg my-2">
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="flush-headingTwo">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">Actualizar Libro</button>
                                </h2>
                                <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body bg-light">
                                        <form action="../../LibroControl" method="post" class="mx-3 mb-2">
                                            <div class="d-flex flex-column">
                                                <div class="col-12 d-flex justify-content-evenly my-2 px-5">
                                                    <input type="hidden" name="Codigo" value="<%= fila[0] %>">
                                                    <input type="submit" name="acc" class="shadow bg-gradient btn btn-success btn-lg fw-bold w-35" value="Aceptar Libro">
                                                    <input type="submit" name="acc" class="shadow bg-gradient btn btn-danger btn-lg fw-bold" value="Rechazar Libro">
                                                </div>
                                            </div>
                                        </form>
                                        <form action="../../LibroControl" method="post" class="d-flex flex-column align-items-center">
                                            <div class="row px-3 g-1">
                                                <div>
                                                    <input type="hidden" name="Codigo" value="<%= fila[0] %>">
                                                </div>
                                                <div class="col-6 my-2 form-floating">
                                                    <input type="text" placeholder="Stock" required class="form-control" name="Stock" value="<%= fila[4] %>" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" onkeyup="this.value=Numeros(this.value)">
                                                    <label for="floatingInput">Stock</label>
                                                </div>
                                                <div class="col-6 my-2 ">
                                                    <div class="input-group form-floating">
                                                        <span class="input-group-text">S/.</span>
                                                        <input placeholder="Precio" type="text" name="Precio" value="<%= fila[6]%>"  class="form-control">
                                                        <label for="floatingInput" class="ps-5 ms-1">Precio</label>
                                                    </div>
                                                </div>
                                                <div class="col-12 my-2 form-floating">
                                                    <textarea placeholder="Descripción" required class="form-control" name="Descripcion" id="floatingTextarea2" style="height: 125px" aria-label="Sizing example input" aria-describedby="inputGroup-sizing"><%= fila[3] %></textarea>
                                                    <label for="floatingInput">Descripción</label>
                                                </div>
                                            </div>
                                            <input type="submit" class="btn btn btn-secondary w-75 my-2 btn-lg" name="acc" value="Actualizar">
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="flush-headingThree">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">Eliminar Libro</button>
                                </h2>
                                <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body bg-light">
                                        <form action="../../LibroControl" method="post" class="d-flex flex-column align-items-center">
                                            <div class="col-12 col-md-7 mt-2 form-floating">
                                                <input placeholder="Código:" name="Codigo" required type="text" class="form-control" value="<%= fila[0] %>" maxlength="5" onkeyup="this.value=Numeros(this.value)">
                                                <label for="floatingInput">Código:</label>
                                            </div>
                                            <input type="submit" class="btn btn btn-danger w-75 m-3 btn-lg" name="acc" value="Eliminar">
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <% List lista=libSer.listar();
                               for (int i = 1; i < lista.size(); i++) {
                                   Object[] fi=(Object[])lista.get(i);
                                   String style;
                                   if (fi[5].equals(0)) { fi[5]="Pendiente"; style="bg-primary"; }
                                   else if (fi[5].equals(1)) { fi[5]="Aceptado"; style="bg-success"; }
                                   else { fi[5]="Rechazado"; style="bg-danger"; } %>
                            <div class="d-flex flex-column">
                                <tr>
                                    <td style="width: 7%"><input type="text" value="<%= fi[0] %>" class="form-control text-center" readonly></td>
                                    <td><input type="text" value="<%= fi[1] %>" class="form-control text-center" readonly></td>
                                    <td><input type="text" value="<%= fi[2] %>" class="form-control text-center" readonly></td>
                                    <td><input type="text" value="<%= fi[3] %>" class="form-control text-center" readonly></td>
                                    <td style="width: 5%"><input type="text" value="<%= fi[4] %>" class="form-control text-center" readonly></td>
                                    <td style="width: 11%"><input type="text" value="<%= fi[5] %>" class="form-control text-center <%= style %>" readonly></td>
                                    <td style="width: 10%">
                                        <div class="input-group">
                                            <span class="input-group-text">S/ </span>
                                            <input type="text" value="<%= fi[6]%>"  class="form-control text-center" readonly>
                                        </div>
                                    </td>
                                    <td scope="row">
                                        <form method="post" action="../../LibroControl">
                                            <input type="hidden" name="Codigo" value="<%= fi[0]%>" >
                                            <input type="submit" name="acc" value="Ver Detalles" class=" btn btn-success">
                                        </form>
                                    </td>
                                </tr>
                            </div>
                            <% } %>
                        </tr>
                    </tbody>
                </table>
                <a href="#" class="btn btn-secondary w-25 my-4 py-3 mx-auto fw-bold">Regresar</a>
            </div>
        </div>
    </body>
</html>