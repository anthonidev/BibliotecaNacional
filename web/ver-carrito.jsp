<%@page import="vista.PresentadorGeneral"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% PresentadorGeneral pg = (PresentadorGeneral) session.getAttribute("pg"); %>
<% Object[] online = pg.getUserCliente(); %>
<% double total=0; %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="./metas-head.jsp" />
        <title>Biblioteca</title>
    </head>
    <body>
        <jsp:include page="navInicio.jsp" />
        <main class="container_section_datos p-0 h-100">
            <div class="container-fluid">
                <div class="d-flex flex-column">
                    <% if (pg.getCartList().size() < 2) { %>
                    <div style="border-radius: 20px" class="w-75 p-5 m-auto table-responsive d-flex flex-column gap-5 text-center bg-secondary bg-gradient shadow text-light">
                        <i class="fas fa-ghost text-primary" style="font-size: 220px"></i>
                        <span class="h1 text-uppercase fw-bold">¡Tu carrito ahora mismo está vacío!</span>
                        <span class="h5 lh-lg fst-italic">
                            ¿Aún no te has decidido? Tenemos gran variedad de libros que te encantarán, revisa nuestro catálogo en la pestaña
                            <a class="text-decoration-none" href="Libros.jsp">LIBROS</a>
                            para encontrar tu favorito.
                        </span>
                    </div>
                    <% } else { %>
                    <div class="m-auto table-responsive" style="width: 90%">
                        <span class="h2 d-flex justify-content-center pb-2">Lista del Carrito</span>
                        <table class="table table-dark table-striped mb-5">
                            <thead>
                                <tr>
                                    <th class="text-center py-3 h5 fw-bold">#</th>
                                    <th class="py-3 h5 fw-bold">Portada</th>
                                    <th class="py-3 h5 fw-bold">Nombre</th>
                                    <th class="text-center py-3 h5 fw-bold">Precio</th>
                                    <th class="text-center py-3 h5 fw-bold">Cantidad</th>
                                    <th class="text-center py-3 h5 fw-bold">Importe</th>
                                    <th class="text-center py-3 h5 fw-bold">Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% for (int i = 1; i < pg.getCartList().size(); i++) {
                                Object[] lisCar=(Object[]) pg.getCartList().get(i);
                                total+=(double) lisCar[5]; %>
                                <tr>
                                    <form action="CarritoControl" method="post">
                                        <input type="hidden" name="codigo" value="<%= lisCar[0] %>">
                                        <td style="width: 5%" class="text-center align-middle"><%= i %></td>
                                        <td style="width: 12%"><image class="w-50" src="<%= lisCar[1] %>"></td>
                                        <td class="align-middle"><%= lisCar[2] %></td>
                                        <td class="text-center align-middle">S/ <%= lisCar[3] %></td>
                                        <td style="width: 20%" class="text-center align-middle"><input type="number" name="cantidad" class="btn btn-dark shadow bg-gradient w-50" value="<%= lisCar[4] %>"></td>
                                        <td class="text-center align-middle">S/ <%= lisCar[5] %></td>
                                        <td style="width: 15%" class="align-middle text-center">
                                            <button type="submit" name="acc" value="actualizar" class="btn btn-success"><i class="fas fa-check fs-4"></i></button>
                                            <button type="submit" name="acc" value="eliminar" class="btn btn-danger"><i class="fas fa-trash-alt fs-4"></i></button>
                                        </td>
                                    </form>
                                </tr>
                                <% } %>
                            </tbody>
                            <tbody>
                                <tr class="table-secondary">
                                    <td colspan="5" class="text-center py-3 h4 fw-bold">TOTAL</td>
                                    <td class="text-center py-3 h5 fw-bold">S/ <%= total %></td>
                                    <td class="py-3"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <form action="CarritoControl" method="post" class="d-flex flex-column">
                        <input type="hidden" name="codigo" value="<%= online[0] %>">
                        <input type="hidden" name="total" value="<%= total %>">
                        <input type="submit" name="acc" value="Grabar Pedido" class="btn btn-secondary shadow p-3 w-25 m-auto">
                    </form>
                    <% } %>
                </div>
            </div>
        </main>
    </body>
</html>
