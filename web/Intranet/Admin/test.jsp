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
    <title>Biblioteca</title>
  </head>
  <style>
    #btnradio1:checked ~ .sec1,#btnradio2:checked ~ .sec2,#btnradio3:checked ~ .sec3{
      display: block !important;
      top: 100%;
    };
  </style>
  <body data-bs-spy="scroll" data-bs-target="#navbar" data-bs-offset="94">
    <jsp:include page="./navAdmin.jsp" />
    <jsp:include page="./navbarAdmin.jsp" />
    <div class="container_section_datos container_section_datos--intranet">
      <section class=" px-5 pt-3" style="height: 1000px" id="sec11">
        <div class="col-6 d-flex flex-column pt-3">
          <div class="d-flex justify-content-between position-relative w-100" role="group" aria-label="Basic radio toggle button group">
            <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
            <label class="btn fw-bolder shadow-sm text-dark w-100 btn-outline-primary" for="btnradio1">Agregar</label>
          
            <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
            <label class="btn fw-bolder shadow-sm w-100 btn-outline-secondary mx-2" for="btnradio2">Actualizar</label>
          
            <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off">
            <label class="btn fw-bolder shadow-sm w-100 btn-outline-danger" for="btnradio3">Eliminar</label>
            <div class="d-none shadow rounded sec3 position-absolute w-100 bg-light pt-3 pb-2 mt-2">
              <h3 class="text-center">
                  Eliminar Empleado
              </h3>
              <div>
                <form action="../../EmpleadoControl" method="post">
                    <div
                      class="
                        row
                        d-flex
                        align-items-center
                        justify-content-center
                        w-100
                        m-0
                      "
                    >
                      <div class="col-12 col-md-7">
                        <span class="input-group-text" id="inputGroup-sizing-lg"
                          >DNI:</span
                        >
                        <input
                          name="Dni"
                          required
                          type="text"
                          class="form-control"
                          value=""
                          maxlength="8"
                          onkeyup="this.value=Numeros(this.value)"
                        />
                      </div>
                      <input
                        type="submit"
                        class="btn btn btn-danger w-75 m-3 btn-lg"
                        name="acc"
                        value="Eliminar"
                      />
                    </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="bg-primary" style="height: 1000px" id="sec2"></section>
      <section class="bg-warning" style="height: 1000px" id="sec3"></section>
      <section class="bg-light" style="height: 1000px" id="sec4"></section>
      <section class="bg-dark" style="height: 1000px" id="sec5"></section>
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
          </div>
          <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingTwo">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">Actualizar Empleado</button>
              </h2>
              <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                  <div class="accordion-body bg-light">
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
          </div>
          <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingThree">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">Eliminar Empleado</button>
              </h2>
              <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                  <div class="accordion-body bg-light">
                      <form action="../../EmpleadoControl" method="post" class="d-flex flex-column align-items-center">
                          <div class="col-12 col-md-7 mt-2 form-floating">
                              <input name="Dni" placeholder="DNI" required type="text" class="form-control" value="<%= fila[2] %>" maxlength="8" onkeyup="this.value=Numeros(this.value)">
                              <label for="floatingInput">DNI</label>
                          </div>
                          <input type="submit" class="btn btn btn-danger w-75 m-3 btn-lg" name="acc" value="Eliminar">
                      </form>
                  </div>
              </div>
          </div>
      </div>
  </div>
  </body>
</html>
