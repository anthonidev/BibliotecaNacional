<%-- 
    Document   : cliente
    Created on : 05/06/2021, 02:24:12 PM
    Author     : Anthoni
--%>
<%@page import="vista.PresentadorGeneral"%>
<%@page import="java.util.List"%>
<%@page import="vista.clientePresentador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="es">

    <head>
        <link rel="stylesheet" href="../../css/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/50872a9b90.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>

    <body class="">
        <main class="container-fluid p-0 ">
            <jsp:include page="navAdmin.jsp" />
            <div class="row ">
                <div class="col-1 d-flex align-items-center py-5 shadow-sm p-3 mb-5 bg-primary rounded">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                        <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded">
                            <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i
                                    class="fas fa-users-cog w-100 text-center"></i> Empleados</a>
                        </li>
                        <li class="nav-item my-4 shadow-sm p-3 my-3 bg-danger rounded ">
                            <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i
                                    class="fas fa-user-tag w-100 text-center"></i> Clientes</a>
                        </li>
                        <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded ">
                            <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i
                                    class="fas fa-truck-loading w-100 text-center"></i> Pedidos</a>
                        </li>
                        <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded ">
                            <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i
                                    class="fas fa-book-open w-100 text-center"></i> Libros</a>
                        </li>
                        <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded ">
                            <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i
                                    class="fas fa-clipboard-list w-100 text-center"></i> Boletas</a>
                        </li>
                    </ul>
                </div>
                <div class="col-10">
                    <% PresentadorGeneral pe = (PresentadorGeneral) session.getAttribute("pg");%>
                    <% Object[] cliente = pe.getCliente();%>
                    <div class="row">

                        <div class="col-6">
                            <div class="row">
                                <div class="col-12 my-4">
                                    <div class="input-group mb-3">
                                        <div class="row w-100">
                                            <div class="col-12 d-flex ">
                                                <form action="../../clienteControl" method="post" class=" d-flex w-100">

                                                    <input type="text" class="form-control" required placeholder="Buscar Cliente por codigo" name="dni" aria-label="Recipient's username" aria-describedby="button-addon2">
                                                    <input class="btn btn-secondary " type="submit" id="button-addon2" name="acc" value="Buscar">
                                                </form>

                                            </div>
                                            <div class="col-12 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="<%=cliente[0]%>">
                                                    <label for="floatingInputGrid">Codigo</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="<%=cliente[1]%>">
                                                    <label for="floatingInputGrid">Nombre</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="<%=cliente[2]%>">
                                                    <label for="floatingInputGrid">Apellidos</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="<%=cliente[3]%>">
                                                    <label for="floatingInputGrid">Dni</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="<%=cliente[4]%>">
                                                    <label for="floatingInputGrid">Direccion</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="<%=cliente[5]%>">
                                                    <label for="floatingInputGrid">Telefono</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="<%=cliente[6]%>">
                                                    <label for="floatingInputGrid">Fecha de Nacimiento</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="<%=cliente[7]%>">
                                                    <label for="floatingInputGrid">Departamento</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="<%=cliente[9]%>">
                                                    <label for="floatingInputGrid">Provincia</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="<%=cliente[8]%>">
                                                    <label for="floatingInputGrid">Distrito</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="<%=cliente[13]%>">
                                                    <label for="floatingInputGrid">Usuario</label>
                                                </div>
                                            </div>

                                            <a href="#listar" class="btn btn-secondary my-5 fw-bold ">Listar Clientes</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <% if (pe.getMsg().toString() != "") {%>
                            <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                <h4 class="fw-bold text-center text-dark my-5"><%=pe.getMsg()%></h4>
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                            <% pe.setMsg(""); %>
                            <%}%>
                            <div class="accordion accordion-flush shadow  bg-body rounded border-1 mt-4" id="accordionFlushExample">

                                <div class="accordion-item  ">
                                    <h2 class="accordion-header " id="flush-headingOne">
                                        <button class="accordion-button collapsed  " type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">Registrar Cliente</button>
                                    </h2>
                                    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body bg-light ">
                                            <form action="../../clienteControl" method="post">

                                                <div class="row">

                                                    <div class="col-6">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Nombre</span>
                                                        <input type="text" required class="form-control" name="nom" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                                    </div>
                                                    <div class="col-6">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Apellidos</span>
                                                        <input type="text" required class="form-control" name="ape" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                                    </div>
                                                    <div class="col-6 my-2">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Dni</span>
                                                        <input type="text" required class="form-control" name="dni" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                                    </div>
                                                    <div class="col-6 my-2">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Telefono</span>
                                                        <input type="text" required class="form-control" name="tel" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                                    </div>

                                                    <div class="col-4 my-2">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Departamento</span>

                                                        <select class="form-select form-control" onchange="cambia()" aria-label="Default select example" name="selectDepartamento" required="">
                                                            <option value="">Seleccione</option>
                                                            <option value="Amazonas">Amazonas</option>
                                                            <option value="Ancash">Ancash</option>
                                                            <option value="Apurímac">Apurímac</option>
                                                            <option value="Arequipa">Arequipa</option>
                                                            <option value="Ayacucho">Ayacucho</option>
                                                            <option value="Cajamarca">Cajamarca</option>
                                                            <option value="Callao">Callao</option>
                                                            <option value="Cuzco">Cuzco </option>
                                                            <option value="Huancavelica">Huancavelica</option>
                                                            <option value="Huánuco">Huánuco</option>
                                                            <option value="Ica">Ica</option>
                                                            <option value="Junín">Junín</option>
                                                            <option value="La_Libertad">La Libertad</option>
                                                            <option value="Lambayeque">Lambayeque</option>
                                                            <option value="Lima">Lima</option>
                                                            <option value="Loreto">Loreto</option>
                                                            <option value="Madre_de_Dios">Madre de Dios</option>
                                                            <option value="Moquegua">Moquegua</option>
                                                            <option value="Pasco">Pasco</option>
                                                            <option value="Piura">Piura</option>
                                                            <option value="Puno">Puno</option>
                                                            <option value="San_Martín">San Martín</option>
                                                            <option value="Tacna">Tacna</option>
                                                            <option value="Tumbes">Tumbes</option>
                                                            <option value="Ucayali">Ucayali</option>
                                                        </select>

                                                    </div>


                                                    <div class="col-4 my-2">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Provincia</span>
                                                        <select class="form-select form-control" aria-label="Default select example" name="selectProvincia" onchange="cambiaDistrito()" required="">
                                                            <option>Seleccione la Provincia</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-4 my-2">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Distrito</span>
                                                        <select class="form-select form-control" aria-label="Default select example" name="selectDistrito" required="">
                                                            <option>Seleccione el Distrito</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-12 my-2">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Direccion</span>
                                                        <input type="text" required class="form-control" name="dir" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">

                                                    </div>
                                                    <div class="col-6 my-2">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Fecha de Nacimiento</span>
                                                        <input type="date" required class="form-control" name="fec" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}">

                                                    </div>
                                                    <div class="col-6 my-2">
                                                        <span class="input-group-text " id="inputGroup-sizing-lg">Usuario</span>
                                                        <input type="text" required class="form-control" name="user" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">

                                                    </div>
                                                    <div class="col-6 my-2 m-auto">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Constraseña</span>
                                                        <input type="password" required class="form-control" name="pass" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">

                                                    </div>

                                                    <div class="input-group input-group-lg my-5 ">
                                                        <input type="hidden" name="menu" value="intranet">

                                                        <input type="submit" name="acc" value="Registrar" class="btn w-100 btn-primary fw-bold">
                                                    </div>


                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingTwo">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">Actualizar Cliente</button>
                                    </h2>
                                    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body bg-light">
                                            <form action="../ClienteControl" method="post">
                                                <div class="row d-flex align-items-center justify-content-center w-100 ">
                                                    <div class="col-12 mt-3" id="mostrar">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="">
                                                            <label for="floatingInputGrid">Codigo</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 mt-3" id="mostrar">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="">
                                                            <label for="floatingInputGrid">Nombre</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 mt-3" id="mostrar">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="">
                                                            <label for="floatingInputGrid">Apellidos</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 mt-3" id="mostrar">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="">
                                                            <label for="floatingInputGrid">Dni</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 mt-3" id="mostrar">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="">
                                                            <label for="floatingInputGrid">Direccion</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 mt-3" id="mostrar">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="" >
                                                            <label for="floatingInputGrid">Telefono</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 mt-3" id="mostrar">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="" >
                                                            <label for="floatingInputGrid">Fecha de Nacimiento</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 mt-3" id="mostrar">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="" >
                                                            <label for="floatingInputGrid">Departamento</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 mt-3" id="mostrar">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="" >
                                                            <label for="floatingInputGrid">Provincia</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 mt-3" id="mostrar">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="" >
                                                            <label for="floatingInputGrid">Distrito</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 mt-3" id="mostrar">
                                                        <div class="form-floating">
                                                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="">
                                                            <label for="floatingInputGrid">Usuario</label>
                                                        </div>
                                                    </div>
                                                    <input type="submit" class="btn btn btn-primary w-75 m-3 btn-lg" name="acc" value="Actualizar">

                                                </div>
                                            </form>

                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingThree">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">Eliminar Cliente</button>
                                    </h2>
                                    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body bg-light">
                                            <form action="../../clienteControl" method="post">
                                                <div class="row d-flex align-items-center justify-content-center w-100 ">
                                                    <div class="col-12 col-md-7   ">
                                                        <label for="exampleInputEmail1" class="form-label text-dark">Nombre del cliente
                                                        </label>
                                                        <input  required type="text" value="<%=cliente[1]+" "+cliente[2] %>" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                                        <input name="cod" type="hidden" value="<%=cliente[0]%>">
                                                        <input name="usu" type="hidden" value="<%=cliente[13]%>">
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
                <div class="col-10 m-auto d-flex justify-content-center align-items-center  flex-column" style="height: 100vh" id="listar">
                    <h1 class="fw-bold text-center text-primary my-5">Lista de Clientes</h1>
                    <% List lista = (List) session.getAttribute("lista");%>
                    <table class="table table-light table-striped  shadow  bg-body rounded border-1 ">
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
                            <% for (int i = 1; i < lista.size(); i++) { %>
                            <% Object[] f = (Object[]) lista.get(i);%>
                            <tr class="">
                                <th scope="row">

                                    <input type="text" value="<%= f[0]%>" class="form-control text-center" readonly >
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
                                    <form method="post" action="../../clienteControl">
                                        <input type="hidden" name="dni" value="<%= f[5]%>" >
                                        <input type="submit" name="acc" value="Ver Detalles" class=" btn btn-success">
                                    </form>
                                </th>
                                <% }%>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
        <<script src="../../js/ubigeo.js"></script>

    </body>
</html>