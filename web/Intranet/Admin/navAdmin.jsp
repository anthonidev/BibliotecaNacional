<% Object[] inicio=(Object[]) session.getAttribute("filaInicio"); %>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="index.jsp"><img src="../../img/LogoMakr-1JUGB7.png" width="80" alt=""></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 d-flex align-items-center justify-content-center w-100">
                <li class="nav-item fw-bold  mx-3 text-dark">
                    <h1 ><i class="fas fa-atlas "></i> Biblioteca Nacional</h1>
                </li>
            </ul>
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 d-flex align-items-center justify-content-md-end justify-content-center  w-50">
                <li class="nav-item mx-3">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 d-flex flex-column align-items-center align-items-lg-center justify-content-center justify-content-lg-end w-100">   
                        <li class="nav-item mx-3">
                            <h1 class="text-dark h5"><i class="far fa-address-card"></i> Código: <%= inicio[0] %> </h1>
                        </li>
                        <li class="nav-item mx-3">
                            <h1 class="text-dark h5"><i class="fas fa-user"></i> Nombre: <%= inicio[1] %> </h1>
                        </li>
                    </ul>
                </li>
                <li class="nav-item mx-3">
                    <form action="../../empleadoControl" method="post">
                        <input type="submit" name="acc" class="btn-danger btn w-100 " value="Cerrar">
                    </form>
                </li>
            </ul>
        </div>
    </div>
</nav>