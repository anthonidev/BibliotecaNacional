<%-- 
    Document   : signUp
    Created on : 03/06/2021, 11:19:59 PM
    Author     : Anthoni
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
         <meta http-equiv=”Content-Type” content=”text/html; charset=ISO-8859-1″ />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css">
        <script src="https://kit.fontawesome.com/50872a9b90.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous">
        </script>
        <title>Crear Cuenta</title>
    </head>

    <body class="">
        <main class="container-fluid p-0 ">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container">
                    <a class="navbar-brand" href="#"><img src="img/LogoMakr-1JUGB7.png" width="80" alt=""></a>
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
            <div class="row">
                <div class="col-12 col-md-9 m-auto mt-5">
                    <div class="card mb-md-3 shadow p-3 mb-5 bg-body rounded  ">
                        <div class="row g-0">
                            <div class="col-md-6 ">
                                <img class="img-fluid" src="https://image.freepik.com/vector-gratis/dibujado-mano-ilustracion-dia-mundial-libro-pila-libros_23-2148868267.jpg" alt="...">
                            </div>
                            <div class="col-md-6 bg-light d-flex align-items-center">
                                <div class="card-body">
                                    <div class="d-flex align-items-center justify-content-center flex-column">
                                        <img src="./img/logo.png" class="img-fluid " alt="">
                                        <h1 class="text-dark text-center fw-bolder">Crear cuenta</h1>
                                    </div>

                                    <div>
                                        <div class="row">
                                            <div class="col-6">
                                                <span class="input-group-text" id="inputGroup-sizing-lg">Nombre</span>
                                                <input type="text" required class="form-control" name="usu" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                            </div>
                                            <div class="col-6">
                                                <span class="input-group-text" id="inputGroup-sizing-lg">Apellidos</span>
                                                <input type="text" required class="form-control" name="usu" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                            </div>
                                            <div class="col-6 my-2">
                                                <span class="input-group-text" id="inputGroup-sizing-lg">Dni</span>
                                                <input type="text" required class="form-control" name="usu" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                            </div>
                                            <div class="col-6 my-2">
                                                <span class="input-group-text" id="inputGroup-sizing-lg">Telefono</span>
                                                <input type="text" required class="form-control" name="usu" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">
                                            </div>
                                            <form action="test" method="post">

                                                <div class="col-6 my-2">
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
                                                
                                            
                                            <div class="col-6 my-2">
                                                <span class="input-group-text" id="inputGroup-sizing-lg">Provincia</span>
                                                <select class="form-select form-control" aria-label="Default select example" name="selectProvincia" onchange="cambiaDistrito()" required="">
                                                    <option>Seleccione la Provincia</option>
                                                </select>
                                            </div>
                                            <div class="col-6 my-2">
                                                <span class="input-group-text" id="inputGroup-sizing-lg">Distrito</span>
                                                <select class="form-select form-control" aria-label="Default select example" name="selectDistrito" required="">
                                                    <option>Seleccione el Distrito</option>
                                                </select>
                                            </div>
                                                                                            <input type="submit" name="acc" value="Registrarse" class="btn w-100 btn-primary fw-bold">
</form>
                                            <div class="col-6 my-2">
                                                <span class="input-group-text" id="inputGroup-sizing-lg">Direccion</span>
                                                <input type="text" required class="form-control" name="usu" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">

                                            </div>
                                            <div class="col-12 my-2">
                                                <span class="input-group-text " id="inputGroup-sizing-lg">Usuario</span>
                                                <input type="text" required class="form-control" name="usu" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">

                                            </div>
                                            <div class="col-6 my-2">
                                                <span class="input-group-text" id="inputGroup-sizing-lg">Constraseña</span>
                                                <input type="password" required class="form-control" name="usu" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">

                                            </div>
                                            <div class="col-6 my-2">
                                                <span class="input-group-text" id="inputGroup-sizing-lg">Repetir constraseña</span>
                                                <input type="password" required class="form-control" name="usu" aria-label="Sizing example input" aria-describedby="inputGroup-sizing">

                                            </div>

                                            <div class="input-group input-group-lg my-5 ">
                                                <input type="submit" name="acc" value="Registrarse" class="btn w-100 btn-primary fw-bold">
                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>



        </main>
        <script src="js/ubigeo.js"></script>
    </body>

</html>
