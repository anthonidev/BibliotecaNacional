<%-- 
    Document   : empleados
    Created on : 05/06/2021, 02:23:39 PM
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
        <script src="../../js/ubigeo.js"></script>
        <script src="../../js/validar.js"></script>
        <title>Biblioteca</title>
    </head>
    <body>
        <% String msg=(String)session.getAttribute("msg"); if (msg==null) msg=""; %>
        
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="#"><img src="../../img/LogoMakr-1JUGB7.png" width="80" alt=""></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 d-flex align-items-center justify-content-end w-100">
                        <li class="nav-item mx-3">
                            <a class="nav-link active h5" aria-current="page" href="index.html"><i
                                    class="fas fa-home d-flex align-items-start justify-content-center w-100"></i>
                                Inicio</a>
                        </li>
                        <li class="nav-item mx-3">
                            <a class="nav-link active h5" aria-current="page" href="#"><i
                                    class="fas fa-book d-flex align-items-start justify-content-center w-100"></i>
                                Productos</a>
                        </li>
                        <li class="nav-item mx-3">
                            <a class="nav-link active h5" aria-current="page" href="#"><i
                                    class="fas fa-info-circle d-flex align-items-start justify-content-center w-100"></i>
                                Informacion</a>
                        </li>
                        <li class="nav-item mx-3">
                            <a class="nav-link active h5" aria-current="page" href="#"><i
                                    class="fas fa-id-card-alt d-flex align-items-start justify-content-center w-100"></i>
                                Contacto</a>
                        </li>
                    </ul>
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 d-flex align-items-center justify-content-md-end justify-content-center  w-50">
                        <li class="nav-item mx-3">
                            <a class="nav-link active h5" aria-current="page" href="index.html"><i
                                    class="fas fa-sign-in-alt d-flex align-items-start justify-content-center w-100"></i>
                                Login</a>
                        </li>
                        <li class="nav-item mx-3">
                            <a class="nav-link active h5" aria-current="page" href="#"><i
                                    class="fas fa-ethernet d-flex align-items-start justify-content-center w-100"></i>
                                intranet</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="row ">
            <div class="col-1 d-flex align-items-center py-5 shadow-sm p-3 mb-5 bg-primary rounded">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                    <li class="nav-item my-4 shadow-sm p-3 my-3 bg-danger rounded">
                        <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i
                                class="fas fa-users-cog w-100 text-center"></i>Empleados</a>
                    </li>
                    <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded ">
                        <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i
                                class="fas fa-user-tag w-100 text-center"></i>Clientes</a>
                    </li>
                    <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded ">
                        <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i
                                class="fas fa-truck-loading w-100 text-center"></i>Pedidos</a>
                    </li>
                    <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded ">
                        <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i
                                class="fas fa-book-open w-100 text-center"></i>Libros</a>
                    </li>
                    <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded ">
                        <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i
                                class="fas fa-clipboard-list w-100 text-center"></i>Boletas</a>
                    </li>
                </ul>
            </div>
            <div class="col-10">
                <div class="row">
                    <div class="col-6">
                        <div class="accordion accordion-flush shadow  bg-body rounded border-1 mt-4" id="accordionFlushExample">
                            <%= msg %>
                            <div class="accordion-item  ">
                                <h2 class="accordion-header " id="flush-headingOne">
                                    <button class="accordion-button collapsed  " type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">Registrar Empleado</button>
                                </h2>
                                <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                    <div class="accordion-body bg-light ">
                                        <form action="../../empleadoControl" method="post">
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
                                                    <input type="text" required class="form-control" name="Direccion" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                                </div>
                                                <div class="col-6 my-2">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Fecha de Nacimiento</span>
                                                    <input type="date" required class="form-control" name="FechaNa" aria-label="Sizing example input" aria-describedby="inputGroup-sizing" pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}">
                                                </div>
                                                <div class="col-6 my-2">
                                                    <span class="input-group-text" id="inputGroup-sizing-lg">Tipo de usuario</span>
                                                    <select class="form-select form-control" aria-label="Default select example" name="tipo" required="">
                                                        <option selected>Seleccione</option>
                                                        <option value="admin">admin</option>
                                                        <option value="2">Two</option>
                                                        <option value="3">Three</option>
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
                                                <div class="input-group input-group-lg ">
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
                                        <form action="../EmpleadoControl" method="post">
                                            <div class="row d-flex align-items-center justify-content-center w-100 ">
                                                <div class="col-12 col-md-7   ">
                                                    <label for="exampleInputEmail1" class="form-label text-dark">Codigo:
                                                    </label>
                                                    <input name="cod" required type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                                </div>
                                                <div class="col-12 col-md-7 ">
                                                    <label for="exampleInputEmail1" class="form-label text-dark">Tipo:
                                                    </label>
                                                    <input name="tip" required type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                                </div>
                                                <div class="col-12 col-md-7 ">
                                                    <label for="exampleInputEmail1" class="form-label text-dark">Contraseña: </label>
                                                    <input name="pas" required type="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                                </div>

                                                <input type="submit" class="btn btn btn-secondary w-75 m-3 btn-lg" name="acc" value="Actualizar">
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
                                        <form action="../EmpleadoControl" method="post">
                                            <div class="row d-flex align-items-center justify-content-center w-100 ">
                                                <div class="col-12 col-md-7   ">
                                                    <label for="exampleInputEmail1" class="form-label text-dark">Codigo:
                                                    </label>
                                                    <input name="cod" required type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                                </div>
                                                
                                                <input type="submit" class="btn btn btn-danger w-75 m-3 btn-lg" name="acc" value="Eliminar">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="row">
                            <div class="col-12 my-4">
                                <div class="input-group mb-3">
                                    <form action="../EmpleadoControl" method="post" class=" d-flex w-100">
                                        <div class="row w-100">
                                            <div class="col-12 d-flex ">
                                                <input type="text" class="form-control" required placeholder="Buscar empleado por codigo" name="cod" aria-label="Recipient's username" aria-describedby="button-addon2">
                                                <input class="btn btn-secondary " type="submit" id="button-addon2" name="acc" value="Buscar">
                                            </div>
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
                                                    <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="">
                                                    <label for="floatingInputGrid">Telefono</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="">
                                                    <label for="floatingInputGrid">Fecha de Nacimiento</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="">
                                                    <label for="floatingInputGrid">Departamento</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="">
                                                    <label for="floatingInputGrid">Provincia</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="">
                                                    <label for="floatingInputGrid">Distrito</label>
                                                </div>
                                            </div>
                                            <div class="col-6 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="">
                                                    <label for="floatingInputGrid">Usuario</label>
                                                </div>
                                            </div>
                                            <div class="col-12 mt-3" id="mostrar">
                                                <div class="form-floating">
                                                    <input type="text" class="form-control" id="floatingInputGrid" placeholder="" value="">
                                                    <label for="floatingInputGrid">Tipo de Empleado</label>
                                                </div>
                                            </div>
                                            <a href="#listar" class="btn btn-secondary my-5 fw-bold ">Listar Empleado</a>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-10 m-auto d-flex justify-content-center align-items-center  flex-column" style="height: 100vh" id="listar">
                <h1 class="fw-bold text-center text-primary my-5">Lista de Empleados</h1>
                <form action="../CompraControl" method="post">
                    <table class="table table-light table-striped  shadow  bg-body rounded border-1 ">
                        <thead>
                            <tr>
                                <th scope="col">Codigo</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Apellido</th>
                                <th scope="col">Telefono</th>
                                <th scope="col">Direccion</th>
                                <th scope="col">Departamento</th>
                                <th scope="col">Usuario</th>
                                <th scope="col">Cargo</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="">
                                <form action="../CompraControl" method="post">
                                    <th scope="row">
                                        <input type="hidden" name="ide" value="">

                                        <input type="text" name="cod" value="" class="form-control text-center" readonly>
                                    </th>
                                    <th scope="row">
                                        <input type="hidden" name="ide" value="">

                                        <input type="text" name="cod" value="" class="form-control text-center" readonly>
                                    </th>
                                    <th scope="row">
                                        <input type="hidden" name="ide" value="">

                                        <input type="text" name="cod" value="" class="form-control text-center" readonly>
                                    </th>
                                    <th scope="row">
                                        <input type="hidden" name="ide" value="">

                                        <input type="text" name="cod" value="" class="form-control text-center" readonly>
                                    </th>
                                    <th scope="row">
                                        <input type="hidden" name="ide" value="">

                                        <input type="text" name="cod" value="" class="form-control text-center" readonly>
                                    </th>
                                    <th scope="row">
                                        <input type="hidden" name="ide" value="">

                                        <input type="text" name="cod" value="" class="form-control text-center" readonly>
                                    </th>
                                    <th scope="row">
                                        <input type="hidden" name="ide" value="">

                                        <input type="text" name="cod" value="" class="form-control text-center" readonly>
                                    </th>
                                    <th scope="row">
                                        <input type="hidden" name="ide" value="">

                                        <input type="text" name="cod" value="" class="form-control text-center" readonly>
                                    </th>
                                </form>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
