<%@page import="vista.PresentadorGeneral"%>
<%@page import="java.util.List"%>
<%@page import="servicio.LibroServicio"%>
<%@page import="servicio.LibroServicioImp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    LibroServicio serLib=new LibroServicioImp();
    List lis=serLib.listar();
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="./metas-head.jsp" />
        <title>Biblioteca</title>
    </head>
    <body class="">
        <jsp:include page="navInicio.jsp" />
        <main class="container_section_datos p-0 h-100">
            <jsp:include page="./barra-busqueda.jsp" />
            <div class="container-fluid pt-2">
                <div class="row">
                    <div class="col-12 col-lg-3 position-sticky pt-2 top-0 z-index bg-white modal_filtrar">
                        <div class="card">
                            <h5 class="card-title fw-bold text-center m-0">Filtrar</h5>
                            <div class="card-body d-flex flex-column p-0 pt-2">
                                <a href="#" class="btn btn-dark mb-2">De mayor a menor precio<i class="fas fa-sort-amount-up-alt"></i></a>
                                <a href="#" class="btn btn-dark mb-2">De menor a mayor precio<i class="fas fa-sort-amount-down-alt"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-9 offset-lg-3">
                        <div class="row overflow-auto m-0 pb-1 pt-4 group-card--custom group-card--custom--busqueda container__sec--bottom w-100 px-3">
                            <% for (int i = 1; i < lis.size(); i++) {
                                Object[] libro=(Object[])lis.get(i);
                                if (libro[5].equals(1)) { %>
                            <form action="CarritoControl" method="post" class="col">
                                <div class="card shadow card--libro">
                                    <img src="img/libros/portada-libro.jpg" class="card-img-top rounded-3" />
                                    <div class="card-body position-relative">
                                        <h4>
                                            <span class="badge bg-light text-dark position-absolute precio_card shadow-sm">S/ <%= libro[6] %></span>
                                        </h4>
                                        <h6 class="card-title"><%= libro[1] %></h6>
                                        <div class="d-grid gap-2">
                                            <input type="hidden" name="codigo" value="<%= libro[0] %>">
                                            <input type="hidden" name="nombre" value="<%= libro[1] %>">
                                            <input type="hidden" name="precio" value="<%= libro[6] %>">
                                            <input type="hidden" name="foto" value="<%= libro[7] %>">
                                            <button type="submit" name="acc" value="Ver info" class="btn btn-outline-success d-flex justify-content-center align-items-center">Ver info<i class="fas fa-eye m-0 ms-2"></i></button>
                                            <button type="submit" name="acc" value="Agregar" class="btn btn-primary d-flex justify-content-center align-items-center">Agregar<i class="fas fa-cart-plus m-0 ms-2"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <% } } %>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>
