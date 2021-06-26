<%@page import="servicio.*"%>
<%@page import="vista.PresentadorGeneral"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClienteServicio cliSer=new ClienteServicioImp();
    UbigeoServicio ubiSer = new UbigeoServicioImp();
    PresentadorGeneral pe = (PresentadorGeneral) session.getAttribute("pg");
    Object[] cliente = pe.getCliente();
    
    List lisDep=ubiSer.listarDep();
    List lisPro=ubiSer.listarPro(cliente[7].toString());
    List lisDis=ubiSer.listarDis(cliente[7].toString(), cliente[8].toString());
%>
<!DOCTYPE html>

<html lang="es">

    <head>
        <jsp:include page="./metas-head.jsp" />
        <title>INTRANET</title>
    </head>

    <body data-bs-spy="scroll" data-bs-target="#navbar" data-bs-offset="94">
        <main class="container-fluid p-0 ">
            <jsp:include page="navAdmin.jsp" />
            <jsp:include page="./navbarAdmin.jsp" />
            <div class="container_section_datos container_section_datos--intranet px-3 px-lg-5" id="sec2">
                <div class="d-flex flex-column flex-lg-row gap-lg-4">
                    <div class="col-lg-6 order-2 py-3">
                        <div class="row px-2">
                            <div class="d-flex justify-content-between">
                                <form action="../../ClienteControl" method="post" class="col-10">
                                    <div class="row col-12">
                                        <div class="col-9">
                                            <input type="text" class="form-control rounded-pill" required placeholder="Buscar Cliente por DNI" name="dni" maxlength="8" onkeyup="this.value=Numeros(this.value)" aria-label="Recipient's username" aria-describedby="button-addon2">
                                        </div>
                                        <div class="col-3 d-flex flex-column">
                                            <input class="btn btn-secondary" type="submit" id="button-addon2" name="acc" value="Buscar">
                                        </div>
                                    </div>
                                </form>
                                <form action="../../ClienteControl" method="post" class="col-2">
                                    <div class="d-flex flex-column">
                                        <input class="btn btn-secondary" type="submit" id="button-addon2" name="acc" value="Limpiar">
                                    </div>
                                </form>
                            </div>
                            <div class="col-12 mt-3" id="mostrar">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= cliente[0] %>">
                                    <label for="floatingInputGrid">Codigo</label>
                                </div>
                            </div>
                            <div class="col-6 mt-3" id="mostrar">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= cliente[1] %>">
                                    <label for="floatingInputGrid">Nombre</label>
                                </div>
                            </div>
                            <div class="col-6 mt-3" id="mostrar">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= cliente[2] %>">
                                    <label for="floatingInputGrid">Apellidos</label>
                                </div>
                            </div>
                            <div class="col-6 mt-3" id="mostrar">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= cliente[3] %>">
                                    <label for="floatingInputGrid">Dni</label>
                                </div>
                            </div>
                            <div class="col-6 mt-3" id="mostrar">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= cliente[4] %>">
                                    <label for="floatingInputGrid">Direccion</label>
                                </div>
                            </div>
                            <div class="col-6 mt-3" id="mostrar">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= cliente[5] %>">
                                    <label for="floatingInputGrid">Telefono</label>
                                </div>
                            </div>
                            <div class="col-6 mt-3" id="mostrar">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= cliente[6] %>">
                                    <label for="floatingInputGrid">Fecha de Nacimiento</label>
                                </div>
                            </div>
                            <div class="col-6 mt-3" id="mostrar">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= cliente[7] %>">
                                    <label for="floatingInputGrid">Departamento</label>
                                </div>
                            </div>
                            <div class="col-6 mt-3" id="mostrar">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= cliente[8] %>">
                                    <label for="floatingInputGrid">Provincia</label>
                                </div>
                            </div>
                            <div class="col-6 mt-3" id="mostrar">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= cliente[9] %>">
                                    <label for="floatingInputGrid">Distrito</label>
                                </div>
                            </div>
                            <div class="col-6 mt-3" id="mostrar">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="floatingInputGrid" readonly value="<%= cliente[10] %>">
                                    <label for="floatingInputGrid">Usuario</label>
                                </div>
                            </div>
                            <a href="#listar" class="btn btn-secondary my-5 py-3 fw-bold">Listar Clientes</a>
                        </div>
                    </div>
                    <div class="col-lg-6 d-flex flex-column pt-3 order-1 order-lg-2">
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
                                Agregar Cliente
                            </h3>
                            <div>
                                <form action="../../ClienteControl" method="post" class="d-flex flex-column align-items-center">
                                    <div class="row px-3 g-1">
                                        <div class="col-6 my-2 form-floating">
                                            <input id="floatingInput" placeholder="Nombre" type="text" required class="form-control" name="nom" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                            <label for="floatingInput">Nombre</label>
                                        </div>
                                        <div class="col-6 my-2 form-floating">
                                            <input id="floatingInput" placeholder="Apellidos" type="text" required class="form-control" name="ape" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                            <label for="floatingInput">Apellidos</label>
                                        </div>
                                        <div class="col-6 my-2 form-floating">
                                            <input placeholder="DNI" id="floatingInput" type="text" required class="form-control" name="dni" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" maxlength="8" onkeyup="this.value=Numeros(this.value)">
                                            <label for="floatingInput">DNI</label>
                                        </div>
                                        <div class="col-6 my-2 form-floating">
                                            <input placeholder="Telefono" id="floatingInput" type="text" required class="form-control" name="tel" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" maxlength="9" onkeyup="this.value=Numeros(this.value)">
                                            <label for="floatingInput">Telefono</label>
                                        </div>
                                        <div class="col-4 my-2 form-floating">
                                            <select id="floatingInput" class="form-select form-control" onchange="cambia()" aria-label="Default select example" name="selectDepartamento" required="">
                                                <option value="">Seleccione</option>
                                                <% for (int i = 1; i < lisDep.size(); i++) { %>
                                                <% Object[] dep=(Object[]) lisDep.get(i); %>
                                                <% String value=dep[0].toString().replace(" ", "_"); %>
                                                <option value="<%= value %>"><%= dep[0] %></option>
                                                <% } %>
                                            </select>
                                            <label for="floatingInput">Departamento</label>
                                        </div>
                                        <div class="col-4 my-2 form-floating">
                                            <select id="floatingInput" class="form-select form-control" aria-label="Default select example" name="selectProvincia" onchange="cambiaDistrito()" required="">
                                                <option>Seleccione la Provincia</option>
                                            </select>
                                            <label for="floatingInput">Provincia</label>
                                        </div>
                                        <div class="col-4 my-2 form-floating">
                                            <select id="floatingInput" class="form-select form-control" aria-label="Default select example" name="selectDistrito" required="">
                                                <option>Seleccione el Distrito</option>
                                            </select>
                                            <label for="floatingInput">Distrito</label>
                                        </div>
                                        <div class="col-12 my-2 form-floating">
                                            <input placeholder="Dirección" id="floatingInput" type="text" required class="form-control" name="dir" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                            <label for="floatingInput">Dirección</label>
                                        </div>
                                        <div class="col-6 my-2 form-floating">
                                            <input placeholder="Fecha de Nacimiento" id="floatingInput" type="date" required class="form-control" name="fec" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                            <label for="floatingInput">Fecha de Nacimiento</label>
                                        </div>
                                        <div class="col-6 my-2 form-floating">
                                            <input placeholder="Usuario" id="floatingInput" type="text" required class="form-control" name="user" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                            <label for="floatingInput">Usuario</label>
                                        </div>
                                        <div class="col-12 my-2 form-floating m-auto">
                                            <input placeholder="Contraseña" id="floatingInput" type="password" required class="form-control" name="pass" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                            <label for="floatingInput">Contraseña</label>
                                        </div>
                                    </div>
                                    <input type="submit" name="acc" value="Registrar" class="btn btn btn-primary w-75 btn-lg my-2">
                                </form>
                            </div>
                          </div>
                          <div class="d-none shadow rounded sec2 position-absolute w-100 bg-light pt-3 pb-2 mt-2">
                              <button type="button" class="btn-close d-lg-none position-absolute end-0 top-0 mt-2 me-2" aria-label="Close" onclick="quitarChecked()"></button>
                              <h3 class="text-center">
                                Actualizar Cliente
                            </h3>
                            <div>
                                <form action="../../ClienteControl" method="post" class="d-flex flex-column align-items-center">
                                    <div class="row px-3 g-1">
                                        <div>
                                            <input type="hidden" name="dni" value="<%= cliente[3] %>">
                                        </div>
                                        <div class="col-6 my-2 form-floating">
                                            <input placeholder="Dirección" id="floatingInput" type="text" required class="form-control" name="direccion" value="<%= cliente[4] %>" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                            <label for="floatingInput">Dirección</label>
                                        </div>
                                        <div class="col-6 my-2 form-floating">
                                            <input placeholder="Telefono" id="floatingInput" type="text" required class="form-control" name="telefono" value="<%= cliente[5] %>" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" maxlength="9" onkeyup="this.value=Numeros(this.value)">
                                            <label for="floatingInput">Telefono</label>
                                        </div>
                                        <div class="col-6 my-2 form-floating" id="mostrar">
                                            <select id="floatingInput" class="form-select form-control" onchange="cambia2()" aria-label="Default select example" name="selectDepartamento2" required>
                                                <option value="">Seleccione</option>
                                                <% for (int i = 1; i < lisDep.size(); i++) { %>
                                                <% Object[] dep=(Object[]) lisDep.get(i); %>
                                                <% String sltd="", value=""; %>
                                                <% if(cliente[7].equals(dep[0])) sltd="selected"; value=dep[0].toString().replace(" ", "_"); %>
                                                <option value="<%= value %>" <%= sltd %>><%= dep[0] %></option>
                                                <% } %>
                                            </select>
                                            <label for="floatingInput">Departamento</label>
                                        </div>
                                        <div class="col-6 my-2 form-floating" id="mostrar">
                                            <select id="floatingInput" class="form-select form-control" aria-label="Default select example" name="selectProvincia2" onchange="cambiaDistrito2()" required>
                                                <option>Seleccione la Provincia</option>
                                                <% for (int i = 1; i < lisPro.size(); i++) { %>
                                                <% Object[] pro=(Object[]) lisPro.get(i); %>
                                                <% String sltd="", value=""; %>
                                                <% if(cliente[8].equals(pro[0])) sltd="selected"; value=pro[0].toString().replace(" ", "_"); %>
                                                <option value="<%= value %>" <%= sltd %>><%= pro[0] %></option>
                                                <% } %>
                                            </select>
                                            <label for="floatingInput">Provincia</label>
                                        </div>
                                        <div class="col-6 my-2 form-floating" id="mostrar">
                                            <select id="floatingInput" class="form-select form-control" aria-label="Default select example" name="selectDistrito2" required>
                                                <option>Seleccione el Distrito</option>
                                                <% for (int i = 1; i < lisDis.size(); i++) { %>
                                                <% Object[] dis=(Object[]) lisDis.get(i); %>
                                                <% String sltd="", value=""; %>
                                                <% if(cliente[9].equals(dis[0])) sltd="selected"; value=dis[0].toString().replace(" ", "_"); %>
                                                <option value="<%= value %>" <%= sltd %>><%= dis[0] %></option>
                                                <% } %>
                                            </select>
                                            <label for="floatingInput">Distrito</label>
                                        </div>
                                        <div class="col-6 my-2 form-floating">
                                            <input placeholder="Usuario" id="floatingInput" type="text" class="form-control" name="usuario" value="<%= cliente[10] %>" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                            <label for="floatingInput">Usuario</label>
                                        </div>
                                        <div class="col-12 my-2 form-floating m-auto">
                                            <input id="floatingInput" type="password" placeholder="Ingrese nueva contraseña" class="form-control" name="password" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                            <label for="floatingInput">Nueva contraseña</label>
                                        </div>
                                    </div>
                                    <input type="submit" class="btn btn btn-secondary w-75 my-2 btn-lg" name="acc" value="Actualizar">
                                </form>
                            </div>
                          </div>
                          <div class="d-none shadow rounded sec3 position-absolute w-100 bg-light pt-3 pb-2 mt-2">
                            <button type="button" class="btn-close d-lg-none position-absolute end-0 top-0 mt-2 me-2" aria-label="Close" onclick="quitarChecked()"></button>
                            <h3 class="text-center">
                                Eliminar Cliente
                            </h3>
                            <div>
                                <form action="../../ClienteControl" method="post" class="d-flex flex-column align-items-center px-3">
                                    <div class="col-9 col-md-7 mt-2 form-floating">
                                        <input  placeholder="Nombre del cliente" id="floatingInput" required type="text" value="<%= cliente[1]+" "+cliente[2] %>" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                        <label for="floatingInput">Nombre del cliente</label>
                                        <input name="cod" type="hidden" value="<%= cliente[0] %>">
                                        <input name="usu" type="hidden" value="<%= cliente[10] %>">
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
                <div class=" d-flex justify-content-center align-items-center flex-column" style="height: 100vh" id="listar">
                    <h1 class="fw-bold text-center text-primary my-5">Lista de Clientes</h1>
                    <table class="table table-light table-striped shadow bg-body rounded border-1">
                        <thead>
                            <tr>
                                <th scope="col">Codigo</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Apellido</th>
                                <th scope="col">Telefono</th>
                                <th scope="col">Direccion</th>
                                <th scope="col">Dni</th>
                                <th scope="col">Detalle</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% List lista=cliSer.listarCliente();
                               for (int i = 1; i < lista.size(); i++) {
                                   Object[] f=(Object[])lista.get(i); %>
                            <tr class="">
                                <th scope="row">
                                    <input type="text" value="<%= f[0]%>" class="form-control text-center" readonly>
                                </th>
                                <th scope="row">
                                    <input type="text" value="<%= f[1]%>" class="form-control text-center" readonly>
                                </th>
                                <th scope="row">
                                    <input type="text" value="<%= f[2]%>" class="form-control text-center" readonly>
                                </th>
                                <th scope="row">
                                    <input type="text" value="<%= f[3]%>" class="form-control text-center" readonly>
                                </th>
                                <th scope="row">
                                    <input type="text" value="<%= f[4]%>" class="form-control text-center" readonly>
                                </th>
                                <th scope="row">
                                    <input type="text" value="<%= f[5]%>" class="form-control text-center" readonly>
                                </th>
                                <th scope="row">
                                    <form method="post" action="../../ClienteControl">
                                        <input type="hidden" name="dni" value="<%= f[5]%>" >
                                        <input type="submit" name="acc" value="Ver Detalles" class=" btn btn-success">
                                    </form>
                                </th>
                                <% } %>
                            </tr>
                        </tbody>
                    </table>
                    <a href="#" class="btn btn-secondary w-25 my-4 py-3 mx-auto fw-bold">Regresar</a>
                </div>
            </div>
        </main>
    </body>
</html>