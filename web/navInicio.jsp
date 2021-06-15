
<%-- Document : navInicio Created on : 05/06/2021, 02:02:25 PM Author : Anthoni
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- navbar -->
<nav
    class=" z-index
    navbar navbar-light
    bg-nav-bar
    rounded-pill
    fixed-bottom
    mb-2
    me-2
    ms-2
    shadow
    d-lg-none
    
    "
    >
    <div class="container">
        <a class="navbar-brand d-none d-lg-block" href="index.jsp"
           ><img src="img/logo.svg" width="266" alt=""
              /></a>
        <ul
            class="
            navbar-nav
            d-flex
            flex-row
            justify-content-around
            align-content-center
            w-100
            "
            >
            <li class="nav-item">
                <a class="mb-0 nav-link active h5" aria-current="page" href="index.jsp">
                    <img src="./img/icons/btn-inicio.svg" alt="" width="" />
                    <span class="d-none d-lg-block"> Inicio </span>
                </a>
            </li>
            <li class="nav-item">
                <a
                    class="mb-0 nav-link active h5"
                    aria-current="page"
                    href="Libros.jsp"
                    >
                    <img src="./img/icons/btn-buscar.svg" alt="" width="" />
                    <span class="d-none d-lg-block"> Libros </span>
                </a>
            </li>
            <li class="nav-item">
                <a class="mb-0 nav-link active h5" aria-current="page" href="#">
                    <img src="./img/icons/btn-biblioteca.svg" alt="" width="" />
                    <span class="d-none d-lg-block"> Informacion </span>
                </a>
            </li>
            <li class="nav-item">
                <a
                    class="mb-0 nav-link active h5"
                    aria-current="page"
                    href="#"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent"
                    aria-expanded="false"
                    aria-controls="multiCollapseExample2"
                    >
                    <img src="./img/icons/btn-perfil.svg" alt="" width="" />
                    <span class="d-none d-lg-block"> Contacto </span>
                </a>
            </li>
        </ul>
        <div class="collapse tipo-sesion shadow-sm" id="navbarSupportedContent">
            <ul class="navbar-nav text-center">
                <li class="nav-item  hv">
                    <a class="nav-link px-3 active h5" aria-current="page" href="Login.jsp"
                       ><i
                            class="
                            fas
                            fa-sign-in-alt
                            d-flex
                            align-items-start
                            justify-content-center
                            w-100
                            "
                            ></i>
                        Login</a
                    >
                </li>
                <li class="nav-item  hv">
                    <a class="nav-link px-3 active h5" aria-current="page" href="Intranet.jsp"
                       ><i
                            class="
                            fas
                            fa-ethernet
                            d-flex
                            align-items-start
                            justify-content-center
                            w-100
                            "
                            ></i>
                        Intranet</a
                    >
                </li>
            </ul>
        </div>
    </div>
</nav>

<nav
    class=" navbar_desktop
    flex-column flex-shrink-0
    navbar-light
    bg-nav-bar
    d-none d-lg-block
    p-3
    z-index
    "
    style="width: 280px;"
    >
    <a class="navbar-brand d-none d-lg-block m-0 mb-2" href="index.jsp"
       ><img src="img/logo.svg" alt="" class="logo-navbar_desktop"
          /></a>
    <hr>
    <ul
        class="
        navbar-nav
        d-flex
        align-content-center
        w-100
        "
        >
        <li class="nav-item">
            <a class="mb-0 d-flex align-items-center nav-link active h5" aria-current="page" href="index.jsp">
                <span class="icon-navbar_desktop">
                    <img src="./img/icons/btn-inicio.svg" alt="" width="" />
                </span>
                <span class="d-none d-lg-block justify-self-center ms-4"> Inicio </span>
            </a>
        </li>
        <li class="nav-item w-100">
            <a
                class="mb-0 d-flex align-items-center nav-link active h5"
                aria-current="page"
                href="Libros.jsp"
                >
                <span class="icon-navbar_desktop">
                    <img src="./img/icons/btn-buscar.svg" alt="" width="" />
                </span>
                <span class="d-none d-lg-block justify-self-center ms-4"> Libros </span>
            </a>
        </li>
        <li class="nav-item">
            <a class="mb-0 d-flex align-items-center nav-link active h5" aria-current="page" href="#">
                <span class="icon-navbar_desktop">
                    <img src="./img/icons/btn-biblioteca.svg" alt="" width="" />
                </span>
                <span class="d-none d-lg-block justify-self-center ms-4"> Informacion </span>
            </a>
        </li>
        <li class="nav-item position-absolute nav-bar_desktop__sesion">
            <hr>
            <a
                class="mb-0 d-flex align-items-center justify-content-center nav-link active h5"
                aria-current="page"
                href="#"
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-expanded="false"
                aria-controls="multiCollapseExample2"
                >
                <span class="icon-navbar_desktop d-none">
                    <img src="./img/icons/btn-perfil.svg" alt="" width="" />
                </span>
                <span class="d-none d-lg-block justify-self-center w-100 mx-2 btn btn-dark"> 
                    Iniciar Sesión 
                </span>
            </a>
            <div class="collapse tipo-sesion shadow-sm" id="navbarSupportedContent">
                <ul class="navbar-nav text-center">
                    <li class="nav-item  hv">
                        <a class="nav-link px-3 active h5" aria-current="page" href="Login.jsp"
                           ><i
                                class="
                                fas
                                fa-sign-in-alt
                                d-flex
                                align-items-start
                                justify-content-center
                                w-100
                                "
                                ></i>
                            Login</a
                        >
                    </li>
                    <li class="nav-item  hv">
                        <a class="nav-link px-3 active h5" aria-current="page" href="Intranet.jsp"
                           ><i
                                class="
                                fas
                                fa-ethernet
                                d-flex
                                align-items-start
                                justify-content-center
                                w-100
                                "
                                ></i>
                            Intranet</a
                        >
                    </li>
                </ul>
            </div>
        </li>
    </ul>
</nav>

<!-- /navbar -->
