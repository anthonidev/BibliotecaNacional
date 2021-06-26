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
    if (obj!=null) fila=obj;
    List lisTip=tipSer.listar();
    List lisDep=ubiSer.listarDep();
    List lisPro=ubiSer.listarPro(fila[6].toString());
    List lisDis=ubiSer.listarDis(fila[6].toString(), fila[7].toString());
%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="./metas-head.jsp" />
        <title>INTRANET</title>
    </head>
    <body data-bs-spy="scroll" data-bs-target="#navbar" data-bs-offset="94">
        <jsp:include page="navAdmin.jsp"/>
        <jsp:include page="./navbarAdmin.jsp" />
        <div class="container_section_datos container_section_datos--intranet px-3 px-lg-5" id="sec11">
            <div class="d-flex flex-column flex-lg-row gap-lg-4">
                <div class="col-lg-6 order-2 py-3">
                    <div class="row px-2">
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
                        <a href="#listar" class="btn btn-secondary my-4 py-3 fw-bold">Listar Empleado</a>
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
                            Agregar Empleado
                        </h3>
                        <div>
                <form action="../../EmpleadoControl" method="post" class="d-flex flex-column align-items-center">
                  <div class="row px-3 g-1">
                      <div class="col-6 my-2 form-floating">
                          <input type="text" id="floatingInput" required class="form-control" placeholder="Nombre" name="Nombre" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                          <label for="floatingInput">Nombre</label>
                      </div>
                      <div class="col-6 my-2 form-floating">
                          <input type="text" id="floatingInput" placeholder="Apellidos" required class="form-control" name="Apellidos" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                          <label for="floatingInput">Apellidos</label>
                      </div>
                      <div class="col-6 my-2 form-floating">
                          <input type="text" id="floatingInput" placeholder="DNI" required class="form-control" name="Dni" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" maxlength="8" onkeyup="this.value=Numeros(this.value)">
                          <label for="floatingInput">DNI</label>
                      </div>
                      <div class="col-6 my-2 form-floating">
                          <input type="text" id="floatingInput" required  placeholder="Telefono" class="form-control" name="Telefono" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" maxlength="9" onkeyup="this.value=Numeros(this.value)">
                          <label for="floatingInput">Telefono</label>
                      </div>
                      <div class="col-4 my-2 form-floating">
                          <select id="floatingSelect" class="form-select form-control" onchange="cambia()" aria-label="Default select example" name="selectDepartamento" required>
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
                          <select id="floatingSelect" class="form-select form-control" aria-label="Default select example" name="selectProvincia" onchange="cambiaDistrito()" required>
                              <option>Seleccione la Provincia</option>
                          </select>
                          <label for="floatingInput">Provincia</label>
                      </div>
                      <div class="col-4 my-2 form-floating">
                          <select id="floatingSelect" class="form-select form-control" aria-label="Default select example" name="selectDistrito" required>
                              <option>Seleccione el Distrito</option>
                          </select>
                          <label for="floatingInput">Distrito</label>
                      </div>
                      <div class="col-12 my-2 form-floating">
                          <input id="floatingSelect" placeholder="Dirección" type="text" required class="form-control" name="Direccion" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                          <label for="floatingInput">Dirección</label>
                      </div>
                      <div class="col-6 my-2 form-floating">
                          <input id="floatingSelect" type="date" required class="form-control" name="FechaNa" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}">
                          <label for="floatingInput">Fecha de Nacimiento</label>
                      </div>
                      <div class="col-6 my-2 form-floating">
                          <select  id="floatingSelect" class="form-select form-control" aria-label="Default select example" name="tipo" required>
                              <option selected>Seleccione</option>
                              <% for (int i = 1; i < lisTip.size(); i++) { %>
                              <% Object[] tip=(Object[]) lisTip.get(i); %>
                              <option value="<%= tip[1] %>"><%= tip[1] %></option>
                              <% } %>
                          </select>
                          <label for="floatingInput">Tipo de usuario</label>
                      </div>
                      <div class="col-6 my-2 form-floating">
                          <input id="floatingSelect" placeholder="Usuario" type="text" required class="form-control" name="usuario" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                          <label for="floatingInput">Usuario</label>
                      </div>
                      <div class="col-6 my-2 form-floating">
                          <input id="floatingSelect" placeholder="Contraseña" type="password" required class="form-control" name="password" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                          <label for="floatingInput">Contraseña</label>
                      </div>
                  </div>
                  <input type="submit" class="btn btn btn-primary w-75 btn-lg my-2" name="acc" value="Registrar">
              </form>
                        </div>
                      </div>
                      <div class="d-none shadow rounded sec2 position-absolute w-100 bg-light pt-3 pb-2 mt-2">
                <button type="button" class="btn-close d-lg-none position-absolute end-0 top-0 mt-2 me-2" aria-label="Close" onclick="quitarChecked()"></button>
                <h3 class="text-center">
                  Actualizar Empleado
              </h3>
              <div>
                <form action="../../EmpleadoControl" method="post" class="d-flex flex-column align-items-center">
                  <div class="row px-3 g-1">
                      <div>
                          <input type="hidden" name="Dni" value="<%= fila[2] %>">
                      </div>
                      <div class="col-6 my-2 form-floating">
                          <input id="floatingSelect" placeholder="Telefono" type="text" required class="form-control" name="Telefono" value="<%= fila[4] %>" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" maxlength="9" onkeyup="this.value=Numeros(this.value)">
                          <label for="floatingSelect">Telefono</label>
                      </div>
                      <div class="col-6 my-2 form-floating">
                          <select id="floatingSelect" class="form-select form-control" onchange="cambia2()" aria-label="Default select example" name="selectDepartamento2" required>
                              <option value="">Seleccione</option>
                              <% for (int i = 1; i < lisDep.size(); i++) { %>
                              <% Object[] dep=(Object[]) lisDep.get(i); %>
                              <% String sltd="", value=""; %>
                              <% if(fila[6].equals(dep[0])) sltd="selected"; value=dep[0].toString().replace(" ", "_"); %>
                              <option value="<%= value %>" <%= sltd %>><%= dep[0] %></option>
                              <% } %>
                          </select>
                          <label for="floatingSelect">Departamento</label>
                      </div>
                      <div class="col-6 my-2 form-floating">
                          <select id="floatingSelect" class="form-select form-control" aria-label="Default select example" name="selectProvincia2" onchange="cambiaDistrito2()" required>
                              <option>Seleccione la Provincia</option>
                              <% for (int i = 1; i < lisPro.size(); i++) { %>
                              <% Object[] pro=(Object[]) lisPro.get(i); %>
                              <% String sltd="", value=""; %>
                              <% if(fila[7].equals(pro[0])) sltd="selected"; value=pro[0].toString().replace(" ", "_"); %>
                              <option value="<%= value %>" <%= sltd %>><%= pro[0] %></option>
                              <% } %>
                          </select>
                          <label for="floatingSelect">Provincia</label>
                      </div>
                      <div class="col-6 my-2 form-floating">
                          <select id="floatingSelect" class="form-select form-control" aria-label="Default select example" name="selectDistrito2" required>
                              <option>Seleccione el Distrito</option>
                              <% for (int i = 1; i < lisDis.size(); i++) { %>
                              <% Object[] dis=(Object[]) lisDis.get(i); %>
                              <% String sltd="", value=""; %>
                              <% if(fila[8].equals(dis[0])) sltd="selected"; value=dis[0].toString().replace(" ", "_"); %>
                              <option value="<%= value %>" <%= sltd %>><%= dis[0] %></option>
                              <% } %>
                          </select>
                          <label for="floatingSelect">Distrito</label>
                      </div>
                      <div class="col-12 my-2 form-floating">
                          <input id="floatingSelect"  placeholder="Dirección" type="text" class="form-control" name="Direccion" value="<%= fila[3] %>" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" required>
                          <label for="floatingSelect">Dirección</label>
                      </div>
                      <div class="col-6 my-2 form-floating">
                          <select id="floatingSelect" class="form-select form-control" aria-label="Default select example" name="tipo" required>
                              <option>Seleccione</option>
                              <% for (int i = 1; i < lisTip.size(); i++) { %>
                              <% Object[] tip=(Object[]) lisTip.get(i); %>
                              <% String sltd=""; %>
                              <% if(fila[11].equals(tip[1])) sltd="selected"; %>
                              <option value="<%= tip[1] %>" <%= sltd %>><%= tip[1] %></option>
                              <% } %>
                          </select>
                          <label for="floatingSelect">Tipo de empleado</label>
                      </div>
                      <div class="col-6 my-2 form-floating">
                          <input id="floatingSelect" type="password" placeholder="Ingrese nueva contraseña" class="form-control" name="password" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                          <label for="floatingSelect">Nueva Contraseña</label>
                      </div>
                  </div>
                  <input type="submit" class="btn btn btn-secondary w-75 my-2 btn-lg" name="acc" value="Actualizar">
                </form>
              </div>
                      </div>
                      <div class="d-none shadow rounded sec3 position-absolute w-100 bg-light pt-3 pb-2 mt-2">
                        <button type="button" class="btn-close d-lg-none position-absolute end-0 top-0 mt-2 me-2" aria-label="Close" onclick="quitarChecked()"></button>
                        <h3 class="text-center">
                            Eliminar Empleado
                        </h3>
                        <div>
                          <form action="../../EmpleadoControl" method="post" class="d-flex flex-column align-items-center px-3">
                            <div class="col-9 col-md-7 mt-2 form-floating">
                                <input name="Dni" placeholder="DNI" required type="text" class="form-control" value="<%= fila[2] %>" maxlength="8" onkeyup="this.value=Numeros(this.value)">
                                <label for="floatingInput">DNI</label>
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
            <div class="col-12 d-flex justify-content-center align-items-center flex-column" style="height: 100vh" id="listar">
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
                            <th scope="col">Detalle</th>
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