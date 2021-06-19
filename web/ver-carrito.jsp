<%@page import="vista.PresentadorGeneral"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% PresentadorGeneral pg = (PresentadorGeneral) session.getAttribute("pg"); %>
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
                    <div class="m-auto table-responsive" style="width: 90%">
                        <span class="h2 d-flex justify-content-center pb-3">Lista del Carrito</span>
                        <table class="table table-dark table-striped mb-5">
                            <thead class="text-center">
                                <tr>
                                    <th class="py-4">#</th>
                                    <th class="py-4">Portada</th>
                                    <th class="py-4">Nombre</th>
                                    <th class="py-4">Cantidad</th>
                                    <th class="py-4">Precio</th>
                                    <th class="py-4">Eliminar</th>
                                </tr>
                            </thead>
                            <tbody class="text-center">
                                <% for (int i = 1; i < pg.getCartList().size(); i++) {
                                Object[] lisCar=(Object[]) pg.getCartList().get(i);
                                total=(double) lisCar[5]; %>
                                <tr>
                                    <form action="CarritoControl" method="post">
                                        <input type="hidden" name="codigo" value="<%= lisCar[0] %>">
                                        <td><%= i %></td>
                                        <td style="width: 8%"><image class="w-75" src="img/libros/<%= lisCar[3] %>"></td>
                                        <td><%= lisCar[1] %></td>
                                        <td><%= lisCar[4] %></td>
                                        <td>S/ <%= lisCar[2] %></td>
                                        <td><button type="submit" name="acc" value="eliminar" class="btn btn-danger"><i class="fas fa-trash-alt fs-4"></i></button></td>
                                    </form>
                                </tr>
                                <% } %>
                            </tbody>
                            <tbody class="text-center">
                                <tr class="table-secondary">
                                    <td colspan="4" class="py-3">Total</td>
                                    <td class="py-3"><%= total %></td>
                                    <td class="py-3"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    
                    <form action="CarritoControl" method="post" class="d-flex flex-column bg-danger">
                        
                        
                    </form>
                </div>
            </div>
        </main>
    </body>
</html>
