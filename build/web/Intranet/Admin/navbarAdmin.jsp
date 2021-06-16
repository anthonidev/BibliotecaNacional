<% Object[] inicio=(Object[]) session.getAttribute("filaInicio"); %>
<div class="col-1 py-4 d-flex shadow-sm p-3 mb-5 bg-primary rounded">
    <ul class="navbar-nav d-flex justify-content-between me-auto mb-2 mb-lg-0">
        <li class="nav-item shadow-sm p-3 bg-body rounded">
            <a class="nav-link active text-dark text-center" aria-current="page" href="empleados.jsp"><i
                    class="fas fa-users-cog w-100 h3 text-center"></i>Empleados</a>
        </li>
        <li class="nav-item shadow-sm p-3 bg-body rounded">
            <form action="../../ClienteControl" method="post">
                <i class="fas fa-user-tag w-100 h3 text-center"></i>
                <input class="nav-link active text-dark text-center border-0 bg-body m-auto p-2" type="submit" name="acc" value="Clientes" >
            </form>
        </li>
        <li class="nav-item shadow-sm p-3 bg-body rounded">
            <form action="../../PedidoControl" method="post">
                <i class="fas fa-truck-loading w-100 h3 text-center"></i>
                <input class="nav-link active text-dark text-center border-0 bg-body m-auto p-2" type="submit" name="acc" value="Pedidos" >
            </form>
        </li>
        <li class="nav-item shadow-sm p-3 bg-body rounded">
            <a class="nav-link active text-dark text-center" aria-current="page" href="libros.jsp"><i
                    class="fas fa-book-open w-100 h3 text-center"></i>Libros</a>
        </li>
        <li class="nav-item shadow-sm p-3 bg-body rounded">
            <form action="../../PedidoControl" method="post">
                <i class="fas fa-clipboard-list w-100 h3 text-center"></i>
                <input class="nav-link active text-dark text-center border-0 bg-body m-auto p-2" type="submit" name="acc" value="Boletas" >
            </form>
        </li>
    </ul>
</div>