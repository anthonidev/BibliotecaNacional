<%@page import="vista.PresentadorGeneral"%>
<%@page import="servicio.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    EmpleadoServicio empSer = new EmpleadoServicioImp();
    TipoServicio tipSer = new TipoServicioImp();
    UbigeoServicio ubiSer = new UbigeoServicioImp();

    PresentadorGeneral pe = (PresentadorGeneral) session.getAttribute("pg");
    Object[] obj = (Object[]) session.getAttribute("filaBus");
    Object[] fila = {"", "", "", "", "", "", "", "", "", "", "", ""};
    if (obj != null) {
        fila = obj;
    }
    List lisTip = tipSer.listar();
    List lisDep = ubiSer.listarDep();
    List lisPro = ubiSer.listarPro(fila[6].toString());
    List lisDis = ubiSer.listarDis(fila[6].toString(), fila[7].toString());

%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../css/style.css">
        <script src="https://kit.fontawesome.com/50872a9b90.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <script src="../../js/ubigeo.js"></script>
        <script src="../../js/ubigeo2.js"></script>
        <script src="../../js/validar.js"></script>
        <title>INTRANET</title>
    </head>
    <body>
        <jsp:include page="../Admin/navAdmin.jsp"/>
        <% Object[] inicio = (Object[]) session.getAttribute("filaInicio");%>



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
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <% List lista = empSer.listar();
                                for (int i = 1; i < lista.size(); i++) {
                                    Object[] fi = (Object[]) lista.get(i);%>
                    <div class="d-flex flex-column">
                        <tr>
                            <td><input type="text" value="<%= fi[0]%>" class="form-control text-center" readonly></td>
                            <td><input type="text" value="<%= fi[1]%>" class="form-control text-center" readonly></td>
                            <td><input type="text" value="<%= fi[2]%>" class="form-control text-center" readonly></td>
                            <td><input type="text" value="<%= fi[3]%>" class="form-control text-center" readonly></td>
                            <td><input type="text" value="<%= fi[4]%>" class="form-control text-center" readonly></td>
                            <td><input type="text" value="<%= fi[5]%>" class="form-control text-center" readonly></td>
                            <td><input type="text" value="<%= fi[6]%>" class="form-control text-center" readonly></td>
                            <td scope="row " class="d-flex ">
                                <input type="hidden" name="Codigo" value="<%= fi[0]%>" >
                                <button type="button" class=" btn btn-success mx-3" data-bs-toggle="modal" data-bs-target="#exampleModal<%= fi[0]%>">
                                    <i class="fas fa-pen-square m-auto h3 text-light"></i>
                                </button>
                                <div class="modal fade" id="exampleModal<%= fi[0]%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-lg modal-dialog-centered">
                                        <form action="../../EmpleadoControl" method="post" class="d-flex flex-column align-items-center">

                                            <div class="modal-content">

                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Actualizar Empleado</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>

                                                <div class="modal-body">
                                                    <div class="d-flex flex-column align-items-center justify-content-center w-100">
                                                        <div class="row px-3">
                                                            <div>
                                                                <input type="hidden" name="Dni" value="<%= fi[0]%>">
                                                            </div>
                                                            <div class="col-6 my-2">
                                                                <span class="input-group-text" id="inputGroup-sizing-lg">Telefono</span>
                                                                <input type="text" required class="form-control" name="Telefono" value="<%= fi[3]%>" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" maxlength="9" onkeyup="this.value = Numeros(this.value)">
                                                            </div>
                                                            <div class="col-6 my-2">
                                                                <span class="input-group-text" id="inputGroup-sizing-lg">Departamento</span>
                                                                <select class="form-select form-control" onchange="cambia2()" aria-label="Default select example" name="selectDepartamento2" required>
                                                                    <option value="">Seleccione</option>
                                                                    <% for (int e = 1; e < lisDep.size(); e++) { %>
                                                                    <% Object[] dep = (Object[]) lisDep.get(e); %>
                                                                    <% String sltd = "", value = ""; %>
                                                                    <% if (fila[6].equals(dep[0])) {
                                                                            sltd = "selected";
                                                                        }
                                                                        value = dep[0].toString().replace(" ", "_");%>
                                                                    <option value="<%= value%>" <%= sltd%>><%= dep[0]%></option>
                                                                    <% } %>
                                                                </select>
                                                            </div>
                                                            <div class="col-6 my-2">
                                                                <span class="input-group-text" id="inputGroup-sizing-lg">Provincia</span>
                                                                <select class="form-select form-control" aria-label="Default select example" name="selectProvincia2" onchange="cambiaDistrito2()" required>
                                                                    <option>Seleccione la Provincia</option>
                                                                    <% for (int u = 1; u < lisPro.size(); u++) { %>
                                                                    <% Object[] pro = (Object[]) lisPro.get(u); %>
                                                                    <% String sltd = "", value = ""; %>
                                                                    <% if (fila[7].equals(pro[0])) {
                                                                            sltd = "selected";
                                                                        }
                                                                        value = pro[0].toString().replace(" ", "_");%>
                                                                    <option value="<%= value%>" <%= sltd%>><%= pro[0]%></option>
                                                                    <% } %>
                                                                </select>
                                                            </div>
                                                            <div class="col-6 my-2">
                                                                <span class="input-group-text" id="inputGroup-sizing-lg">Distrito</span>
                                                                <select class="form-select form-control" aria-label="Default select example" name="selectDistrito2" required>
                                                                    <option>Seleccione el Distrito</option>
                                                                    <% for (int h = 1; h < lisDis.size(); h++) { %>
                                                                    <% Object[] dis = (Object[]) lisDis.get(h); %>
                                                                    <% String sltd = "", value = ""; %>
                                                                    <% if (fila[8].equals(dis[0])) {
                                                                            sltd = "selected";
                                                                        }
                                                                        value = dis[0].toString().replace(" ", "_");%>
                                                                    <option value="<%= value%>" <%= sltd%>><%= dis[0]%></option>
                                                                    <% }%>
                                                                </select>
                                                            </div>
                                                            <div class="col-12 my-2">
                                                                <span class="input-group-text" id="inputGroup-sizing-lg">Direccion</span>
                                                                <input type="text" class="form-control" name="Direccion" value="<%= fi[4]%>" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" required>
                                                            </div>
                                                            <div class="col-6 my-2">
                                                                <span class="input-group-text" id="inputGroup-sizing-lg">Tipo de empleado</span>
                                                                <select class="form-select form-control" aria-label="Default select example" name="tipo" required>
                                                                    <option>Seleccione</option>
                                                                    <% for (int x = 1; x < lisTip.size(); x++) { %>
                                                                    <% Object[] tip = (Object[]) lisTip.get(x); %>
                                                                    <% String sltd = ""; %>
                                                                    <% if (fila[11].equals(tip[1])) {
                                                                            sltd = "selected";
                                                                        }%>
                                                                    <option value="<%= tip[1]%>" <%= sltd%>><%= tip[1]%></option>
                                                                    <% }%>
                                                                </select>
                                                            </div>
                                                            <div class="col-6 my-2">
                                                                <span class="input-group-text" id="inputGroup-sizing-lg">Constraseña</span>
                                                                <input type="password" placeholder="Ingrese nueva contraseña" class="form-control" name="password" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>

                                                <div class="modal-footer">
                                                    <input type="hidden" name="cargo" value="<%= inicio[2]%>">
                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                                    <input type="submit" class="btn  btn-primary" name="acc" value="Actualizar">


                                                </div>

                                            </div>
                                        </form>

                                    </div>
                                </div>
                                <button type="button" class=" btn btn-danger" data-bs-toggle="modal" data-bs-target="#Eliminar<%= fi[0]%>">
                                    <i class="fas fa-minus-square m-auto h3 text-light"></i>
                                </button>
                                <div class="modal fade" id="Eliminar<%= fi[0]%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-lg modal-dialog-centered">

                                        <div class="modal-content">

                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">¿Estas seguro?</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>

                                            <div class="modal-body">
                                                <h5>Se eliminara el empleado: <%= fi[1] + " " + fi[2]%></h5>
                                            </div>
                                            <div class="modal-footer">
                                                <form action="../../EmpleadoControl" method="post" >
                                                    <input type="hidden" name="Dni" value="<%= fi[0]%>">
                                                    <input type="hidden" name="cargo" value="<%= inicio[2]%>">
                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                                    <input type="submit" class="btn  btn-danger" name="acc" value="Eliminar">

                                                </form>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </td>
                        </tr>
                    </div>
                    <% }%>
                    </tr>
                    </tbody>
                </table>
                    <a href="index.jsp" class="btn btn-secondary w-25 my-4 py-3 mx-auto fw-bold">Regresar</a>
            </div>
        </div>
    </body>
</html>