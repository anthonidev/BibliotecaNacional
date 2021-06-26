<% Object[] inicio=(Object[]) session.getAttribute("filaInicio"); %>
<nav
  class="d-none d-lg-flex
    navbar_desktop navbar_desktop--intranet
    col-1
    py-4
    d-flex
    shadow-sm
    p-3
    mb-5
    bg-primary
    rounded
  "
  id="navbar"
>
  <ul class="nav nav-pills d-flex justify-content-between me-auto m-0">
    <li class="nav-item shadow-sm rounded position-relative w-100">
      <a class="nav-link position-absolute bg-body z-index-0 top-0 bottom-0 start-0 end-0 pe-none" href="#sec11" >
        </a
      >
      <a
        class="nav-link text-dark text-center h-100 d-flex flex-column justify-content-center"
        aria-current="page"
        href="empleados.jsp"
        ><i class="fas fa-users-cog w-100 h3 text-center"></i>Empleados</a
      >
    </li>
    <li class="nav-item shadow-sm rounded position-relative w-100">
        <a class="nav-link position-absolute bg-body z-index-0 top-0 bottom-0 start-0 end-0 pe-none" href="#sec2" >
            </a
          >
      <form action="../../ClienteControl" class="h-100 d-grid align-content-center py-2 px-3" method="post">
        <i class="fas fa-user-tag w-100 h3 text-center"></i>
        <span class="text-center">Clientes</span>
        <input
          class="
            nav-link
            active
            text-none
            border-0
            w-100
            p-2 position-absolute top-0 bottom-0 end-0 start-0
          "
          type="submit"
          name="acc"
          value="Clientes"
        />
      </form>
    </li>
    <li class="nav-item shadow-sm rounded position-relative w-100">
        <a class="nav-link position-absolute bg-body z-index-0 top-0 bottom-0 start-0 end-0 pe-none" href="#sec3" >
            </a
          >
      <form action="../../PedidoControl" class="h-100 d-grid align-content-center py-2 px-3" method="post">
        <i class="fas fa-truck-loading w-100 h3 text-center"></i>
        <span class="text-center">Pedidos</span>
        <input
          class="
          nav-link
          active
          text-none
          border-0
          w-100
          p-2 position-absolute top-0 bottom-0 end-0 start-0
          "
          type="submit"
          name="acc"
          value="Pedidos"
        />
      </form>
    </li>
    <li class="nav-item shadow-sm rounded position-relative w-100">
        <a class="nav-link position-absolute bg-body z-index-0 top-0 bottom-0 start-0 end-0 pe-none" href="#sec4" >
            </a
          >
      <a
        class="nav-link text-dark text-center h-100 d-flex flex-column justify-content-center"
        aria-current="page"
        href="libros.jsp"
        ><i class="fas fa-book-open w-100 h3 text-center"></i>Libros</a
      >
    </li>
    <li class="nav-item shadow-sm rounded position-relative w-100">
        <a class="nav-link position-absolute bg-body z-index-0 top-0 bottom-0 start-0 end-0 pe-none" href="#sec5" >
            </a
          >
      <form action="../../PedidoControl" class="h-100 d-grid align-content-center py-2 px-3" method="post">
        <i class="fas fa-clipboard-list w-100 h3 text-center"></i>
        <span class="text-center">Boletas</span>
        <input
          class="
          nav-link
          active
          text-none
          border-0
          w-100
          p-2 position-absolute top-0 bottom-0 end-0 start-0
          "
          type="submit"
          name="acc"
          value="Boletas"
        />
      </form>
    </li>
    <li class="nav-item rounded position-absolute top-0">
      <a class="nav-link position-absolute bg-body z-index-0 top-0 bottom-0 start-0 end-0 pe-none" href="#index" >
      </a>
    </li>
  </ul>
</nav>
