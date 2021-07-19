<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.Object"%> <%@page import="vista.PresentadorGeneral"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- navbar -->
<%! String ctr = ""; %>
<% PresentadorGeneral pg = (PresentadorGeneral)session.getAttribute("pg");
    if (pg == null) {
        pg=new PresentadorGeneral();
        session.setAttribute("pg",pg);
    }
    Object fila = session.getAttribute("fila"); Object[]
    online = {"", "", ""};
    if (fila != null)
        online = pg.getUserCliente(); %>
<nav
  class="
    z-index
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
      <% if (online[0] != online[2]) { %>
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
          <div class="collapse tipo-sesion shadow-sm" id="navbarSupportedContent">
            <ul class="navbar-nav text-center">
                <li class="nav-item hv">
                    <a class="nav-link px-3 active h6 m-0" aria-current="page" href="#">
                      <i
                        class="
                          fas
                          fa-user-cog
                          d-flex
                          align-items-start
                          justify-content-center
                          w-100
                        "
                      ></i>
                      Editar perfil</a
                    >
                  </li>
                  <li class="nav-item hv">
                    <form action="CarritoControl" method="post" class="">
                      <input
                        type="submit"
                        name="acc"
                        class="btn-danger btn w-100"
                        value="Cerrar"
                      />
                    </form>
                  </li>
              <li class="nav-item hv d-lg-none">
                <div class="d-flex flex-column align-items-start p-2">
                    <span class="">Bienvenido</span>
                    <span class="fw-bold text-uppercase">
                      <%= online[1] %>
                    </span>
                  </div>
              </li>
            </ul>
          </div>
        </li>
        <% }else{ %>
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
          <div class="collapse tipo-sesion shadow-sm" id="navbarSupportedContent">
            <ul class="navbar-nav text-center">
              <li class="nav-item hv">
                <a
                  class="nav-link px-3 active h5"
                  aria-current="page"
                  href="Login.jsp"
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
              <li class="nav-item hv">
                <a
                  class="nav-link px-3 active h5"
                  aria-current="page"
                  href="Intranet.jsp"
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
        <% } %>
    </ul>
  </div>
</nav>

<nav
  class="
    navbar_desktop
    flex-column flex-shrink-0
    navbar-light
    bg-nav-bar
    d-none d-lg-block
    p-3
    z-index
  "
>
  <a class="navbar-brand d-none d-lg-block m-0 mb-2" href="index.jsp"
    ><img src="img/logo.svg" alt="" class="logo-navbar_desktop"
  /></a>
  <hr />
  <ul class="navbar-nav d-flex align-content-center w-100 h-100">
    <li class="nav-item">
      <a
        class="mb-0 d-flex align-items-center nav-link active h5"
        aria-current="page"
        href="index.jsp"
      >
        <span class="icon-navbar_desktop">
          <i class="fas fa-home fs-2"></i>
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
          <i class="fas fa-search fs-2"></i>
        </span>
        <span class="d-none d-lg-block justify-self-center ms-4"> Libros </span>
      </a>
    </li>
    <li class="nav-item">
      <a
        class="mb-0 d-flex align-items-center nav-link active h5"
        aria-current="page"
        href="#"
      >
        <span class="icon-navbar_desktop">
          <i class="fas fa-bookmark fs-2"></i>
        </span>
        <span class="d-none d-lg-block justify-self-center ms-4">
          Informacion
        </span>
      </a>
    </li>
    <% if (online[0] != online[2]) { %>
    <li class="nav-item position-absolute nav-bar_desktop__sesion">
      <hr />
      <a
        class="
          mb-0
          px-2
          d-flex
          align-items-center
          justify-content-between
          nav-link
          active
          h5
        "
        aria-current="page"
        href="#"
        data-bs-toggle="collapse"
        data-bs-target="#navbarSupportedContent"
        aria-expanded="false"
        aria-controls="multiCollapseExample2"
      >
        <div class="d-flex flex-column">
          <span class="d-none d-lg-block">Bienvenido</span>
          <span class="d-none d-lg-block fw-bold text-uppercase">
            <%= online[1] %>
          </span>
        </div>
        <i class="fas fa-chevron-up"></i>
      </a>
      <div class="collapse tipo-sesion shadow-sm" id="navbarSupportedContent">
        <ul class="navbar-nav text-center">
          <li class="nav-item hv">
            <a class="nav-link px-3 active h6 m-0" aria-current="page" href="#">
              <i
                class="
                  fas
                  fa-user-cog
                  d-flex
                  align-items-start
                  justify-content-center
                  w-100
                "
              ></i>
              Editar perfil</a
            >
          </li>
          <li class="nav-item hv">
            <form action="CarritoControl" method="post" class="">
              <input
                type="submit"
                name="acc"
                class="btn-danger btn w-100"
                value="Cerrar"
              />
            </form>
          </li>
        </ul>
      </div>
    </li>
    <% }else{ %>
    <li class="nav-item position-absolute nav-bar_desktop__sesion">
      <hr />
      <a
        class="
          mb-0
          d-flex
          align-items-center
          justify-content-center
          nav-link
          active
          h5
        "
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
        <span
          class="d-none d-lg-block justify-self-center w-100 mx-2 btn btn-dark"
        >
          Iniciar Sesión
        </span>
      </a>
      <div class="collapse tipo-sesion shadow-sm" id="navbarSupportedContent">
        <ul class="navbar-nav text-center">
          <li class="nav-item hv">
            <a
              class="nav-link px-3 active h5"
              aria-current="page"
              href="Login.jsp"
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
          <li class="nav-item hv">
            <a
              class="nav-link px-3 active h5"
              aria-current="page"
              href="Intranet.jsp"
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
    <% } %>
  </ul>
</nav>
<!-- boton de carrito -->
<li
  class="
    nav-item
    position-fixed
    bottom-0
    mb-4
    pb-5 pb-lg-2
    me-2
    mb-lg-0
    end-0
    d-flex
    z-index-ter
  "
>
  <form action="CarritoControl" method="post" class="m-0 nav-link active">
    <button
      type="submit"
      name="acc"
      value="carrito"
      class="
        d-flex
        align-items-center
        border-0
        position-relative
        btn-danger
        shadow
        rounded
        py-2
        px-4
      "
    >
      <i class="fas fa-shopping-cart fs-3"></i>
      <span class=" ms-2"> Ver carrito </span>
      <span
        class="
          position-absolute
          top-0
          start-100
          translate-middle
          badge
          rounded-pill
          bg-gradient bg-info
          fs-6
        "
        ><%= pg.getCartList().size()-1 %></span
      >
    </button>
  </form>
</li>
<!-- /boton de carrito -->
<!-- /navbar -->
