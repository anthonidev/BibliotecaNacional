<%-- 
    Document   : libros
    Created on : 05/06/2021, 02:24:54 PM
    Author     : Anthoni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../css/style.css">
        <script src="https://kit.fontawesome.com/50872a9b90.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <script src="../../js/validar.js"></script>
        <title>Biblioteca</title>
    </head>
    <body>
        <jsp:include page="navInicio.jsp" />
        <% String msg = (String) session.getAttribute("msgL"); %>
        <% Object[] obj = (Object[]) session.getAttribute("libus"); %>
        <% Object[] fila = {"", "", "", "", "", "", "", "", "", "", "", "", ""}; %>
        <% if (obj != null) {
                fila = obj;
            }%>

        <div class="d-flex" style="height: 94vh">
            <div class="col-1 d-flex align-items-center py-5 shadow-sm p-3 mb-5 bg-primary rounded">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                        <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded">
                            <a class="nav-link active text-dark h5 text-center" aria-current="page" href="empleados.jsp"><i class="fas fa-users-cog w-100 text-center"></i>Empleados</a>
                        </li>
                        <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded ">
                            <form action="../../clienteControl" method="post">
                                <i class="fas fa-user-tag h5 w-100 text-center"></i>
                                <input class="nav-link active text-dark h5 text-center border-0 bg-body m-auto" type="submit" name="acc" value="Clientes" >
                            </form>
                        </li>
                        <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded ">
                            <form action="../../pedidoControl" method="post">
                                <i class="fas fa-truck-loading w-100 text-center h5"></i>
                                <input class="nav-link active text-dark h5 text-center border-0 bg-body m-auto" type="submit" name="acc" value="Pedidos" >
                            </form>
                        </li>
                        <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded ">
                            <a class="nav-link active text-dark h5 text-center" aria-current="page" href="libros.jsp"><i class="fas fa-users-cog w-100 text-center"></i>Libros</a>

                        </li>
                        <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded ">
                            <form action="">
                                <i class="fas fa-clipboard-list w-100 text-center h5"></i>
                                <input class="nav-link active text-dark h5 text-center border-0 bg-body m-auto" type="submit" name="acc" value="Boletas" >
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
                                        <div class="row col-12">
                                        <div class="d-flex justify-content-between">
                                            <form action="../../libroControl" method="post" class="col-10">
                                                <div class="row col-12">
                                                    <div class="col-9">
                                                        <input type="text" class="form-control" required placeholder="Buscar Libro por código" name="Codigo" maxlength="5" onkeyup="this.value = Numeros(this.value)" aria-label="Recipient's username" aria-describedby="button-addon2">
                                                    </div>
                                                    <div class="col-3 d-flex flex-column">
                                                        <input class="btn btn-secondary" type="submit" id="button-addon2" name="acc" value="Buscar">
                                                    </div>
                                                </div>
                                            </form>
                                            <form action="../../libroControl" method="post" class="col-2">
                                                <div class="d-flex flex-column">
                                                    <input class="btn btn-secondary" type="submit" id="button-addon2" name="acc" value="Limpiar">
                                                </div>
                                            </form>
                                        </div>
                                             </div>
                                        <div class="col-8 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[0]%>" readonly>
                                                <label for="floatingInputGrid">Código</label>
                                            </div>
                                            <div class="col-12 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[1]%>" readonly>
                                                    <label for="floatingInputGrid">Nombre</label>
                                                </div>
                                            </div>
                                            <div class="col-12 mt-3 " id="mostrar">
                                                <div class="form-floating ">
                                                    <textarea class="form-control h-100" id="floatingTextarea2"  readonly><%= fila[3]%></textarea>
                                                    <label for="floatingTextarea2">Descripción</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="image" class="form-control" id="floatingInputGrid" value="<%= fila[7]%>" style="height: 35vh;" readonly>
                                                <label for="floatingInputGrid">Portada</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[2]%>" readonly>
                                                <label for="floatingInputGrid">Categoría</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[5]%>" readonly>
                                                <label for="floatingInputGrid">Estado</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[4]%>" readonly>
                                                <label for="floatingInputGrid">Stock</label>
                                            </div>
                                        </div>
                                        <div class="col-6 mt-3" id="mostrar">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="floatingInputGrid" value="<%= fila[6]%>" readonly>
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
                        <div class="accordion accordion-flush shadow bg-body rounded border-1 mt-4 mx-3" id="accordionFlushExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header " id="flush-headingOne">
                                    <button class="accordion-button collapsed  " type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">Registrar Libro</button>
                                </h2>
                                <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body bg-light">
                                        <form action="../../libroControl" method="post">
                                            <%%>

                                            <div class="row">
                                                <div class="col-6">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Nombre</span>
                                                    <input type="text" required class="form-control" name="Nombre" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                                </div>
                                                <div class="col-6">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Categoría</span>
                                                    <select class="form-select form-control" aria-label="Default select example" name="Categoría" required="">
                                                        <option selected>Seleccione</option>
                                                        <option value="admin">admin</option>
                                                    </select>
                                                </div>
                                                <div class="col-6 my-2">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Stock</span>
                                                    <input type="text" required class="form-control" name="Stock" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" onkeyup="this.value = Numeros(this.value)">
                                                </div>
                                                <div class="col-6 my-2">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Precio</span>
                                                    <input type="text" required class="form-control" name="Precio" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" onkeyup="this.value = Numeros(this.value)">
                                                </div>
                                                <div class="col-12 my-2">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Descripcion</span>
                                                    <textarea required class="form-control" name="Descripcion" id="floatingTextarea2" style="height: 125px" aria-label="Sizing example input" aria-describedby="inputGroup-sizing"></textarea>
                                                </div>
                                                <div class="col-12 my-2">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Portada</span>
                                                    <input type="file" required class="form-control" name="Portada" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}">
                                                </div>
                                                <div class="input-group input-group-lg mt-2">
                                                    <input type="submit" name="acc" value="Registrar" class="btn w-100 btn-primary fw-bold">
                                                </div>
                                            </div>
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
                                        <form action="../../libroControl" method="post">
                                            <div class="row d-flex align-items-center justify-content-center w-100 ">
                                                <div class="row">
                                                    <div>
                                                        <input type="hidden" name="Codigo" value="<%= fila[0]%>">
                                                    </div>
                                                    <div class="col-6">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Nombre</span>
                                                        <input type="text" required class="form-control" name="Nombre" value="<%= fila[1]%>" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                                    </div>
                                                    <div class="col-6">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Categoría</span>
                                                        <select class="form-select form-control" aria-label="Default select example" name="Categoría" required="">
                                                            <option selected>Seleccione</option>
                                                            <option value="admin">admin</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-6 my-2">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Stock</span>
                                                        <input type="text" required class="form-control" name="Stock" value="<%= fila[4]%>" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" onkeyup="this.value = Numeros(this.value)">
                                                    </div>
                                                    <div class="col-6 my-2">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Precio</span>
                                                        <input type="text" required class="form-control" name="Precio" value="<%= fila[6]%>" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" onkeyup="this.value = Numeros(this.value)">
                                                    </div>
                                                    <div class="col-12 my-2">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Descripcion</span>
                                                        <textarea required class="form-control" name="Descripcion" id="floatingTextarea2" style="height: 125px" aria-label="Sizing example input" aria-describedby="inputGroup-sizing"><%= fila[3]%></textarea>
                                                    </div>
                                                    <div class="col-12 my-2">
                                                        <span class="input-group-text" id="inputGroup-sizing-lg">Portada</span>
                                                        <input type="file" required class="form-control" name="Portada" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}">
                                                    </div>
                                                </div>
                                                <input type="submit" class="btn btn btn-secondary w-75 m-3 btn-lg" name="acc" value="Actualizar">
                                            </div>
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
                                        <form action="../../libroControl" method="post">
                                            <div class="row d-flex align-items-center justify-content-center w-100 ">
                                                <div class="col-12 col-md-7">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Código:</span>
                                                    <input name="Codigo" required type="text" class="form-control" value="<%= fila[0]%>">
                                                </div>

                                                <input type="submit" class="btn btn btn-danger w-75 m-3 btn-lg" name="acc" value="Eliminar">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <% if (msg != null) {%>
                            <div class="d-flex flex-column py-3 px-5">
                                <div class="d-flex justify-content-center justify-align-items py-3 fw-bold" style="background-color: #56FF87; color: #4D4D4D; font-size: 20px">
                                    <%= msg%>
                                </div>
                            </div>
                            <% }%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
