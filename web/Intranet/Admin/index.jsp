<%-- 
    Document   : index
    Created on : 05/06/2021, 02:23:32 PM
    Author     : Anthoni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="es">
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
        <jsp:include page="navInicio.jsp" />

        <div class="d-flex" style="height: 94vh">
            <div class="col-1 py-4 d-flex shadow-sm p-3 mb-5 bg-primary rounded">
                <ul class="navbar-nav d-flex justify-content-between me-auto mb-2 mb-lg-0">
                    <li class="nav-item shadow-sm p-3 bg-body rounded">
                        <a class="nav-link active text-dark text-center" aria-current="page" href="empleados.jsp"><i class="fas fa-users-cog w-100 h3 text-center"></i>Empleados</a>
                    </li>
                    <li class="nav-item shadow-sm p-3 bg-body rounded">
                        <a class="nav-link active text-dark text-center" aria-current="page" href="#"><i class="fas fa-user-tag w-100 h3 text-center"></i>Clientes</a>
                    </li>
                    <li class="nav-item shadow-sm p-3 bg-body rounded">
                        <a class="nav-link active text-dark text-center" aria-current="page" href="#"><i class="fas fa-truck-loading w-100 h3 text-center"></i>Pedidos</a>
                    </li>
                    <li class="nav-item shadow-sm p-3 bg-body rounded">
                        <a class="nav-link active text-dark text-center" aria-current="page" href="libros.jsp"><i class="fas fa-book-open w-100 h3 text-center"></i>Libros</a>
                    </li>
                    <li class="nav-item shadow-sm p-3 bg-body rounded">
                        <a class="nav-link active text-dark text-center" aria-current="page" href="#"><i class="fas fa-clipboard-list w-100 h3 text-center"></i>Boletas</a>
                    </li>
                </ul>
            </div>
            <div class="col-10">

            </div>
        </div>
    </body>
</html>