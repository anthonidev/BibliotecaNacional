<% Object[] inicio=(Object[]) session.getAttribute("filaInicio"); %>

<nav class="navbar navbar-expand-lg navbar-light bg-light z-index fixed-top">
    <div class="container-fluid px-3 gap-lg-5">
        <a class="navbar-brand m-0" href="index.jsp">
            <img src="../../img/logo.svg" height="68" class="d-none d-lg-block" alt="">
            <img src="../../img/logtipo.svg" height="68" class=" d-lg-none" alt="">
        </a>
            <h1 class=" h4 text-uppercase text-center w-45"><i class="fas fa-user-tie"></i> Cargo: <%= inicio[2] %></h1>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="wm-lg-max collapse justify-content-end navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item mx-3">
                    <ul class="gap-2 navbar-nav me-auto mb-2 mb-lg-0 d-flex flex-column align-items-center align-items-lg-center justify-content-center justify-content-lg-end w-100">   
                        <li class="nav-item mx-3">
                            <h1 class="text-dark h5 m-0"><i class="far fa-address-card"></i> C&oacute;digo: <%= inicio[0] %> </h1>
                        </li>
                        <li class="nav-item mx-3">
                            <h1 class="text-dark h5 m-0"><i class="fas fa-user"></i> Nombre: <%= inicio[1] %> </h1>
                        </li>
                    </ul>
                </li>
                <li class="nav-item mx-3">
                    <form action="../../EmpleadoControl" class="h-100 d-flex" method="post">
                        <input type="submit" name="acc" class="align-self-center btn-danger btn w-100 fw-bold" value="Cerrar">
                    </form>
                </li>
            </ul>
        </div>
    </div>
</nav>