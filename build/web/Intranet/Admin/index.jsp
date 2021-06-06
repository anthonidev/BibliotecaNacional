<%-- 
    Document   : index
    Created on : 05/06/2021, 02:23:32 PM
    Author     : Anthoni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../css/style.css">
    <script src="https://kit.fontawesome.com/50872a9b90.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <title>Biblioteca</title>
</head>

<body class="">
    <main class="container-fluid p-0 ">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="#"><img src="../../img/LogoMakr-1JUGB7.png" width="80" alt=""></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 d-flex align-items-center justify-content-end w-100">
                        <li class="nav-item mx-3">
                            <a class="nav-link active h5" aria-current="page" href="index.html"><i class="fas fa-home d-flex align-items-start justify-content-center w-100"></i> Inicio</a>
                        </li>
                        <li class="nav-item mx-3">
                            <a class="nav-link active h5" aria-current="page" href="#"><i class="fas fa-book d-flex align-items-start justify-content-center w-100"></i> Productos</a>
                        </li>
                        <li class="nav-item mx-3">
                            <a class="nav-link active h5" aria-current="page" href="#"><i class="fas fa-info-circle d-flex align-items-start justify-content-center w-100"></i> Informacion</a>
                        </li>
                        <li class="nav-item mx-3">
                            <a class="nav-link active h5" aria-current="page" href="#"><i class="fas fa-id-card-alt d-flex align-items-start justify-content-center w-100"></i> Contacto</a>
                        </li>
                    </ul>
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 d-flex align-items-center justify-content-md-end justify-content-center  w-50">
                        <li class="nav-item mx-3">
                            <a class="nav-link active h5" aria-current="page" href="index.html"><i class="fas fa-sign-in-alt d-flex align-items-start justify-content-center w-100"></i> Login</a>
                        </li>
                        <li class="nav-item mx-3">
                            <a class="nav-link active h5" aria-current="page" href="#"><i class="fas fa-ethernet d-flex align-items-start justify-content-center w-100"></i> intranet</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="row ">
            <div class="col-1 d-flex align-items-center py-5 shadow-sm p-3 mb-5 bg-primary rounded">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                    <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded">
                        <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i class="fas fa-users-cog w-100 text-center"></i> Empleados</a>
                    </li>
                    <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded ">
                        <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i class="fas fa-user-tag w-100 text-center"></i> Clientes</a>
                    </li>
                    <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded ">
                        <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i class="fas fa-truck-loading w-100 text-center"></i> Pedidos</a>
                    </li>
                    <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded ">
                        <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i class="fas fa-book-open w-100 text-center"></i> Libros</a>
                    </li>
                    <li class="nav-item my-4 shadow-sm p-3 my-3 bg-body rounded ">
                        <a class="nav-link active text-dark h5 text-center" aria-current="page" href="#"><i class="fas fa-clipboard-list w-100 text-center"></i> Boletas</a>
                    </li>
                </ul>
            </div>
            <div class="col-10">

            </div>
        </div>
    </main>
</body>

</html>