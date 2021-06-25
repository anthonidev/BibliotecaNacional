<% Object[] inicio=(Object[]) session.getAttribute("filaInicio"); %>
<nav
  class="
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
  <ul class="nav nav-pills d-flex justify-content-between me-auto mb-2 mb-lg-0">
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
      <form action="../../ClienteControl" method="post">
        <i class="fas fa-user-tag w-100 h3 text-center"></i>
        <input
          class="
            nav-link
            active
            text-dark text-center
            border-0
            bg-body
            m-auto
            p-2
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
      <form action="../../PedidoControl" method="post">
        <i class="fas fa-truck-loading w-100 h3 text-center"></i>
        <input
          class="
            nav-link
            active
            text-dark text-center
            border-0
            bg-body
            m-auto
            p-2
          "
          type="submit"
          name="acc"
          value="Pedidos"
        />
      </form>
    </li>
    <li class="nav-item shadow-sm rounded position-relative w-100">
        <a class="nav-link position-absolute bg-body z-index-0 top-0 bottom-0 start-0 end-0 pe-none" href="#sec11" >
            </a
          >
      <a
        class="nav-link active text-dark text-center"
        aria-current="page"
        href="libros.jsp"
        ><i class="fas fa-book-open w-100 h3 text-center"></i>Libros</a
      >
    </li>
    <li class="nav-item shadow-sm rounded position-relative w-100">
        <a class="nav-link position-absolute bg-body z-index-0 top-0 bottom-0 start-0 end-0 pe-none" href="#sec11" >
            </a
          >
      <form action="../../PedidoControl" method="post">
        <i class="fas fa-clipboard-list w-100 h3 text-center"></i>
        <input
          class="
            nav-link
            active
            text-dark text-center
            border-0
            bg-body
            m-auto
            p-2
          "
          type="submit"
          name="acc"
          value="Boletas"
        />
      </form>
    </li>
  </ul>
</nav>
