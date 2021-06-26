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
    <body data-bs-spy="scroll" data-bs-target="#navbar" data-bs-offset="94">
        <jsp:include page="navAdmin.jsp" />
        <jsp:include page="./navbarAdmin.jsp" />
        <%! String estado, estilo; %>
        <% estado=fila[5].toString();
           if (fila[5].equals(0)) { estado="Pendiente"; estilo="bg-primary"; }
           else if (fila[5].equals(1)) { estado="Aceptado"; estilo="bg-success"; }
           else if (fila[5].equals(2)) { estado="Rechazado"; estilo="bg-danger"; } 
           else estilo=""; %>
        <div class="container_section_datos container_section_datos--intranet px-3 px-lg-5" id="sec4">
            <div class="d-flex d-flex flex-column flex-lg-row gap-lg-4">
                <div class="col-lg-6 order-2 py-3">
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
                <div class="col-lg-6 d-flex flex-column py-3 order-1 order-lg-2">
                    <!-- alerta -->
                    <% if (pe.getMsg().toString() != "") { %>
                        <div class="alert alert-warning alert-dismissible fade show mt-4" role="alert">
                            <h4 class="fw-bold text-center text-dark my-2"><%= pe.getMsg() %></h4>
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    <% pe.setMsg(""); %>
                    <% } %>
                    <!-- /alerta -->
                    <!-- CRUD -->
                    <div class="d-flex justify-content-between position-relative w-100" role="group" aria-label="Basic radio toggle button group">
                      <!-- radio botones -->
                      <input type="radio" class="btn-check" name="crud" id="btnradio1" autocomplete="off">
                      <label class="btn fw-bolder shadow-sm text-dark w-100 btn-outline-primary" for="btnradio1">Agregar</label>
                      <input type="radio" class="btn-check" name="crud" id="btnradio2" autocomplete="off">
                      <label class="btn fw-bolder shadow-sm w-100 btn-outline-secondary mx-2" for="btnradio2">Actualizar</label>
                      <input type="radio" class="btn-check" name="crud" id="btnradio3" autocomplete="off">
                      <label class="btn fw-bolder shadow-sm w-100 btn-outline-danger" for="btnradio3">Eliminar</label>
                    <!-- /radio botones -->
                    <!-- Formularios -->
                    <div class="d-none shadow rounded sec1 position-absolute w-100 bg-light pt-3 pb-2 mt-2">
                        <button type="button" class="btn-close d-lg-none position-absolute end-0 top-0 mt-2 me-2" aria-label="Close" onclick="quitarChecked()"></button>
                        <h3 class="text-center">
                            Agregar Libro
                        </h3>
                        <div>
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
                                        <label for="floatingInput" class="ps-5 ms-2 z-index">Precio</label>
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
                    <div class="d-none shadow rounded sec2 position-absolute w-100 bg-light pt-3 pb-2 mt-2">
                        <button type="button" class="btn-close d-lg-none position-absolute end-0 top-0 mt-2 me-2" aria-label="Close" onclick="quitarChecked()"></button>
                        <h3 class="text-center">
                            Actualizar Libro
                        </h3>
                        <div>
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
                                            <label for="floatingInput" class="ps-5 ms-3 z-index">Precio</label>
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
                      <div class="d-none shadow rounded sec3 position-absolute w-100 bg-light pt-3 pb-2 mt-2">
                        <button type="button" class="btn-close d-lg-none position-absolute end-0 top-0 mt-2 me-2" aria-label="Close" onclick="quitarChecked()"></button>
                        <h3 class="text-center">
                            Eliminar Libro
                        </h3>
                        <div>
                            <form action="../../LibroControl" method="post" class="d-flex flex-column align-items-center px-3">
                                <div class="col-9 col-md-7 mt-2 form-floating">
                                    <input placeholder="Código:" name="Codigo" required type="text" class="form-control" value="<%= fila[0] %>" maxlength="5" onkeyup="this.value=Numeros(this.value)">
                                    <label for="floatingInput">Código:</label>
                                </div>
                                <input type="submit" class="btn btn btn-danger w-75 m-3 btn-lg" name="acc" value="Eliminar">
                            </form>
                        </div>
                      </div>
                      <!-- /Formularios -->
                    </div>
                    <!-- /CRUD -->
                </div>
            </div>
        </div>
        <div class="container_section_datos container_section_datos--intranet px-3 px-lg-5">
            <div class="d-flex justify-content-center align-items-center flex-column" style="height: 100vh" id="listar">
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