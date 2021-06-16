<%-- 
    Document   : empleados
    Created on : 05/06/2021, 02:23:39 PM
    Author     : Anthoni
--%>

<%@page import="vista.PresentadorGeneral"%>
<%@page import="servicio.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    EmpleadoServicio empSer=new EmpleadoServicioImp();
    TipoServicio tipSer=new TipoServicioImp();
    UbigeoServicio ubiSer = new UbigeoServicioImp();
    PresentadorGeneral pe = (PresentadorGeneral) session.getAttribute("pg");
    Object[] obj=(Object[]) session.getAttribute("filaBus");
    Object[] fila={"","","","","","","","","","","",""};
    List lisDep=ubiSer.listarDep();
    if (obj!=null) fila=obj;
%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="./metas-head.jsp" />
        <title>INTRANET</title>
    </head>
    <body>
        <jsp:include page="navAdmin.jsp"/>
        
        <div class="d-flex" style="height: 94vh">
            <div class="col-1 py-4 d-flex shadow-sm p-3 mb-5 bg-primary rounded">
                <ul class="navbar-nav d-flex justify-content-between me-auto mb-2 mb-lg-0">
                    <li class="nav-item shadow-sm p-3 bg-danger rounded">
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
                    <li class="nav-item shadow-sm p-3 bg-body rounded">
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
                                            <form action="../../EmpleadoControl" method="post" class="col-10">
                                                <div class="row col-12">
                                                    <div class="col-9">
                                                        <input type="text" class="form-control rounded-pill" required placeholder="Buscar empleado por DNI" name="Dni" maxlength="8" onkeyup="this.value=Numeros(this.value)" aria-label="Recipient's username" aria-describedby="button-addon2">
                                                    </div>
                                                    <div class="col-3 d-flex flex-column">
                                                        <input class="btn btn-secondary" type="submit" id="button-addon2" name="acc" value="Buscar">
                                                    </div>
                                                </div>
                                            </form>
                                            <form action="../../EmpleadoControl" method="post" class="col-2">
                                                <div class="d-flex flex-column">
                                                    <input class="btn btn-secondary" type="submit" id="button-addon2" name="acc" value="Limpiar">
                                                </div>
                                            </form>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[0] %>" readonly>
                                                <label for="floatingInputGrid">Nombre</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[1] %>" readonly>
                                                <label for="floatingInputGrid">Apellidos</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[2] %>" readonly>
                                                <label for="floatingInputGrid">Dni</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[5] %>" readonly>
                                                <label for="floatingInputGrid">Fecha de Nacimiento</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[4] %>" readonly>
                                                <label for="floatingInputGrid">Telefono</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[6] %>" readonly>
                                                <label for="floatingInputGrid">Departamento</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[7] %>" readonly>
                                                <label for="floatingInputGrid">Provincia</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[8] %>" readonly>
                                                <label for="floatingInputGrid">Distrito</label>
                                            </div>
                                        </div>
                                        <div class="col-12 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[3] %>" readonly>
                                                <label for="floatingInputGrid">Direccion</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[9] %>" readonly>
                                                <label for="floatingInputGrid">Usuario</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[11] %>" readonly>
                                                <label for="floatingInputGrid">Tipo de Empleado</label>
                                            </div>
                                        </div>
                                        <a href="#listar" class="btn btn-secondary my-5 py-3 fw-bold">Listar Empleado</a>
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
                                    <button class="accordion-button collapsed  " type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">Registrar Empleado</button>
                                </h2>
                                <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body bg-light">
                                        <form action="../../EmpleadoControl" method="post">
                                            <div class="row">
                                                <div class="col-6">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Nombre</span>
                                                    <input type="text" required class="form-control" name="Nombre" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                                </div>
                                                <div class="col-6">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Apellidos</span>
                                                    <input type="text" required class="form-control" name="Apellidos" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                                </div>
                                                <div class="col-6 my-2">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Dni</span>
                                                    <input type="text" required class="form-control" name="Dni" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" maxlength="8" onkeyup="this.value=Numeros(this.value)">
                                                </div>
                                                <div class="col-6 my-2">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Telefono</span>
                                                    <input type="text" required class="form-control" name="Telefono" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" maxlength="9" onkeyup="this.value=Numeros(this.value)">
                                                </div>
                                                <div class="col-4 my-2">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Departamento</span>
                                                    <select class="form-select form-control" onchange="cambia()" aria-label="Default select example" name="selectDepartamento" required>
                                                        <option value="">Seleccione</option>
                                                        <% for (int i = 1; i < lisDep.size(); i++) { %>
                                                        <% Object[] dep=(Object[]) lisDep.get(i); %>
                                                        <% String value=dep[0].toString().replace(" ", "_"); %>
                                                        <option value="<%= value %>"><%= dep[0] %></option>
                                                        <% } %>
                                                    </select>
                                                </div>
                                                <div class="col-4 my-2">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Provincia</span>
                                                    <select class="form-select form-control" aria-label="Default select example" name="selectProvincia" onchange="cambiaDistrito()" required>
                                                        <option>Seleccione la Provincia</option>
                                                    </select>
                                                </div>
                                                <div class="col-4 my-2">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Distrito</span>
                                                    <select class="form-select form-control" aria-label="Default select example" name="selectDistrito" required>
                                                        <option>Seleccione el Distrito</option>
                                                    </select>
                                                </div>
                                                <div class="col-12 my-2">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Direccion</span>
                                                    <input type="text" required class="form-control" name="Direccion" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                                </div>
                                                <div class="col-6 my-2">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Fecha de Nacimiento</span>
                                                    <input type="date" required class="form-control" name="FechaNa" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}">
                                                </div>
                                                <div class="col-6 my-2">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Tipo de usuario</span>
                                                    <select class="form-select form-control" aria-label="Default select example" name="tipo" required>
                                                        <option selected>Seleccione</option>
                                                        <option value="admin">admin</option>
                                                    </select>
                                                </div>
                                                <div class="col-6 my-2">
                                                    <span class="input-group-text " id="inputGroup-sizing-lg">Usuario</span>
                                                    <input type="text" required class="form-control" name="usuario" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                                </div>
                                                <div class="col-6 my-2">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Constraseña</span>
                                                    <input type="password" required class="form-control" name="password" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                                </div>
                                                <div class="input-group input-group-lg my-2">
                                                    <input type="submit" name="acc" value="Registrar" class="btn w-100 btn-primary fw-bold">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="flush-headingTwo">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">Actualizar Empleado</button>
                                </h2>
                                <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body bg-light">
                                        <form action="../../EmpleadoControl" method="post">
                                            <div class="row d-flex align-items-center justify-content-center w-100 ">
                                                <div class="row">
                                                    <div>
                                                        <input type="hidden" name="Dni" value="<%= fila[2] %>">
                                                    </div>
                                                    <div class="col-6 my-2">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Telefono</span>
                                                        <input type="text" required class="form-control" name="Telefono" value="<%= fila[4] %>" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" maxlength="9" onkeyup="this.value=Numeros(this.value)">
                                                    </div>
                                                    <div class="col-6 my-2">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Departamento</span>
                                                        <select class="form-select form-control" onchange="cambia2()" aria-label="Default select example" name="selectDepartamento2" required>
                                                            <option value="">Seleccione</option>
                                                            <% for (int i = 1; i < lisDep.size(); i++) { %>
                                                            <% Object[] dep=(Object[]) lisDep.get(i); %>
                                                            <% String sltd="", value=""; %>
                                                            <% if(fila[6].equals(dep[0])) sltd="selected"; value=dep[0].toString().replace(" ", "_"); %>
                                                            <option value="<%= value %>" <%= sltd %>><%= dep[0] %></option>
                                                            <% } %>
                                                        </select>
                                                    </div>
                                                    <div class="col-6 my-2">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Provincia</span>
                                                        <select class="form-select form-control" aria-label="Default select example" name="selectProvincia2" onchange="cambiaDistrito2()" required>
                                                            <option>Seleccione la Provincia</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-6 my-2">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Distrito</span>
                                                        <select class="form-select form-control" aria-label="Default select example" name="selectDistrito2" required>
                                                            <option>Seleccione el Distrito</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-12 my-2">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Direccion</span>
                                                        <input type="text" class="form-control" name="Direccion" value="<%= fila[3] %>" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" required>
                                                    </div>
                                                    <% List lis2=tipSer.listar(); %>
                                                    <div class="col-6 my-2">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Tipo de empleado</span>
                                                        <select class="form-select form-control" aria-label="Default select example" name="tipo" required>
                                                            <option>Seleccione</option>
                                                            <% for (int i = 1; i < lis2.size(); i++) { %>
                                                            <% Object[] tip=(Object[]) lis2.get(i); %>
                                                            <% String sltd=""; %>
                                                            <% if(fila[11].equals(tip[1])) sltd="selected"; %>
                                                            <option value="<%= tip[1] %>" <%= sltd %>><%= tip[1] %></option>
                                                            <% } %>
                                                        </select>
                                                    </div>
                                                    <div class="col-6 my-2">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Constraseña</span>
                                                        <input type="password" placeholder="Ingrese nueva contraseña" class="form-control" name="password" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                                    </div>
                                                </div>
                                                <input type="submit" class="btn btn btn-secondary w-75 my-3 btn-lg" name="acc" value="Actualizar">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="flush-headingThree">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">Eliminar Empleado</button>
                                </h2>
                                <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body bg-light">
                                        <form action="../../EmpleadoControl" method="post">
                                            <div class="row d-flex align-items-center justify-content-center w-100 ">
                                                <div class="col-12 col-md-7">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">DNI:</span>
                                                    <input name="Dni" required type="text" class="form-control" value="<%= fila[2] %>" maxlength="8" onkeyup="this.value=Numeros(this.value)">
                                                </div>
                                                <input type="submit" class="btn btn btn-danger w-75 m-3 btn-lg" name="acc" value="Eliminar">
                                            </div>
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
                <h1 class="fw-bold text-primary my-5">Lista de Empleados</h1>
                <table class="table table-light table-striped shadow bg-body rounded border-1">
                    <thead>
                        <tr>
                            <th scope="col">DNI</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Telefono</th>
                            <th scope="col">Direccion</th>
                            <th scope="col">Usuario</th>
                            <th scope="col">Cargo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <% List lista=empSer.listar();
                               for (int i = 1; i < lista.size(); i++) {
                                   Object[] fi=(Object[])lista.get(i); %>
                            <div class="d-flex flex-column">
                                <tr>
                                    <td><input type="text" value="<%= fi[0] %>" class="form-control text-center" readonly></td>
                                    <td><input type="text" value="<%= fi[1] %>" class="form-control text-center" readonly></td>
                                    <td><input type="text" value="<%= fi[2] %>" class="form-control text-center" readonly></td>
                                    <td><input type="text" value="<%= fi[3] %>" class="form-control text-center" readonly></td>
                                    <td><input type="text" value="<%= fi[4] %>" class="form-control text-center" readonly></td>
                                    <td><input type="text" value="<%= fi[5] %>" class="form-control text-center" readonly></td>
                                    <td><input type="text" value="<%= fi[6] %>" class="form-control text-center" readonly></td>
                                    <td scope="row">
                                        <form method="post" action="../../EmpleadoControl">
                                            <input type="hidden" name="Dni" value="<%= fi[0]%>" >
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