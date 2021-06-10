<%-- Document : navInicio Created on : 05/06/2021, 02:02:25 PM Author : Anthoni
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<nav
  class="
    navbar navbar-expand-lg navbar-light
    bg-nav-bar
    rounded-pill
    fixed-bottom
    mb-2
    me-2
    ms-2
    shadow
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
      <ul
        class="
          navbar-nav
          text-center
        "
      >
        <li class="nav-item px-3 hv">
          <a class="nav-link active h5" aria-current="page" href="Login.jsp"
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
        <li class="nav-item px-3 hv">
          <a class="nav-link active h5" aria-current="page" href="Intranet.jsp"
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
