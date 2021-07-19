<%@page import="javax.xml.bind.DatatypeConverter"%>
<%@page import="java.util.List"%>
<%@page import="servicio.LibroServicioImp"%>
<%@page import="servicio.LibroServicio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% LibroServicio serLib=new LibroServicioImp(); %>
<% List lis=serLib.listar(); %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="./metas-head.jsp" />
        <title>Biblioteca</title>
    </head>
    <body class="">
        <jsp:include page="navInicio.jsp" />
        <!-- pantalla de inicio -->
        <main class="container_section_datos p-0 h-100">
            <jsp:include page="barra-busqueda.jsp" />
            <a
                href="./Libros.jsp"
                class="
                container-fluid
                position-absolute
                top-0
                end-0
                d-none d-lg-block
                z-index
                group-card--custom
                "
                style="padding: 37px !important"
                ></a>
            <div class="row pt-3 w-100 container__sec">
                <div class="col sec_novedades shadow">
                    <h6>Novedades</h6>
                    <div
                        class="
                        row
                        overflow-auto
                        m-0
                        flex-nowrap
                        pb-1
                        group-card--custom group-card--custom--novedades
                        "
                        >
                        <% for (int i = 1; i < 7; i++) {
                            Object[] libro=(Object[])lis.get(i);
                            String data = DatatypeConverter.printBase64Binary((byte[])libro[7]);
                            String src = "data:image/png;base64," + data;
                            if (libro[5].equals(1)) { %>
                        <form action="CarritoControl" method="post" class="col">
                            <div class="card shadow card--libro">
                                <img src="<%= src %>" class="card-img-top rounded-3" />
                                <div class="card-body position-relative">
                                    <h4>
                                        <span
                                            class="
                                            badge
                                            bg-light
                                            text-dark
                                            position-absolute
                                            precio_card
                                            shadow-sm
                                            "
                                            >S/ <%= libro[6] %></span
                                        >
                                    </h4>
                                    <h6 class="card-title"><%= libro[1] %></h6>
                                    <div class="d-grid gap-2">
                                        <input type="hidden" name="codigo" value="<%= libro[0] %>">
                                        <input type="hidden" name="nombre" value="<%= libro[1] %>">
                                        <input type="hidden" name="precio" value="<%= libro[6] %>">
                                        <input type="hidden" name="foto" value="<%= src %>">
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
            <div class="row p-3 w-100 container__sec pb-0 m-0">
                <div class="col">
                    <h6>Categorias</h6>
                    <div
                        class="row overflow-auto pb-4 m-0 flex-nowrap group-card--custom"
                        >
                        <div class="col">
                            <div
                                class="
                                card
                                shadow
                                p-2
                                position-relative
                                overflow-hidden
                                card--categoria
                                "
                                >
                                <img
                                    src="./img/portada-libro.jpg"
                                    alt=""
                                    class="position-absolute w-100 start-0 end-0 top-0 bottom-0"
                                    />
                                <div
                                    class="
                                    fondo
                                    position-absolute
                                    bg-dark
                                    start-0
                                    end-0
                                    top-0
                                    bottom-0
                                    opacity-70
                                    "
                                    ></div>
                                <a
                                    href="#"
                                    class="card-body z-index-sec text-decoration-none pe-auto"
                                    >
                                    <strong class="card-title m-0 text-light text-uppercase"
                                            >fantasia-lorenmimpusu</strong
                                    >
                                </a>
                            </div>
                        </div>
                        <div class="col">
                            <div
                                class="
                                card
                                shadow
                                p-2
                                position-relative
                                overflow-hidden
                                card--categoria
                                "
                                >
                                <img
                                    src="./img/portada-libro.jpg"
                                    alt=""
                                    class="position-absolute w-100 start-0 end-0 top-0 bottom-0"
                                    />
                                <div
                                    class="
                                    fondo
                                    position-absolute
                                    bg-dark
                                    start-0
                                    end-0
                                    top-0
                                    bottom-0
                                    opacity-70
                                    "
                                    ></div>
                                <a
                                    href="#"
                                    class="card-body z-index-sec text-decoration-none pe-auto"
                                    >
                                    <strong class="card-title m-0 text-light text-uppercase"
                                            >fantasia-lorenmimpusu</strong
                                    >
                                </a>
                            </div>
                        </div>
                        <div class="col">
                            <div
                                class="
                                card
                                shadow
                                p-2
                                position-relative
                                overflow-hidden
                                card--categoria
                                "
                                >
                                <img
                                    src="./img/portada-libro.jpg"
                                    alt=""
                                    class="position-absolute w-100 start-0 end-0 top-0 bottom-0"
                                    />
                                <div
                                    class="
                                    fondo
                                    position-absolute
                                    bg-dark
                                    start-0
                                    end-0
                                    top-0
                                    bottom-0
                                    opacity-70
                                    "
                                    ></div>
                                <a
                                    href="#"
                                    class="card-body z-index-sec text-decoration-none pe-auto"
                                    >
                                    <strong class="card-title m-0 text-light text-uppercase"
                                            >fantasia-lorenmimpusu</strong
                                    >
                                </a>
                            </div>
                        </div>
                        <div class="col">
                            <div
                                class="
                                card
                                shadow
                                p-2
                                position-relative
                                overflow-hidden
                                card--categoria
                                "
                                >
                                <img
                                    src="./img/portada-libro.jpg"
                                    alt=""
                                    class="position-absolute w-100 start-0 end-0 top-0 bottom-0"
                                    />
                                <div
                                    class="
                                    fondo
                                    position-absolute
                                    bg-dark
                                    start-0
                                    end-0
                                    top-0
                                    bottom-0
                                    opacity-70
                                    "
                                    ></div>
                                <a
                                    href="#"
                                    class="card-body z-index-sec text-decoration-none pe-auto"
                                    >
                                    <strong class="card-title m-0 text-light text-uppercase"
                                            >fantasia-lorenmimpusu</strong
                                    >
                                </a>
                            </div>
                        </div>
                        <div class="col">
                            <div
                                class="
                                card
                                shadow
                                p-2
                                position-relative
                                overflow-hidden
                                card--categoria
                                "
                                >
                                <img
                                    src="./img/portada-libro.jpg"
                                    alt=""
                                    class="position-absolute w-100 start-0 end-0 top-0 bottom-0"
                                    />
                                <div
                                    class="
                                    fondo
                                    position-absolute
                                    bg-dark
                                    start-0
                                    end-0
                                    top-0
                                    bottom-0
                                    opacity-70
                                    "
                                    ></div>
                                <a
                                    href="#"
                                    class="card-body z-index-sec text-decoration-none pe-auto"
                                    >
                                    <strong class="card-title m-0 text-light text-uppercase"
                                            >fantasia-lorenmimpusu</strong
                                    >
                                </a>
                            </div>
                        </div>
                        <div class="col">
                            <div
                                class="
                                card
                                shadow
                                p-2
                                position-relative
                                overflow-hidden
                                card--categoria
                                "
                                >
                                <img
                                    src="./img/portada-libro.jpg"
                                    alt=""
                                    class="position-absolute w-100 start-0 end-0 top-0 bottom-0"
                                    />
                                <div
                                    class="
                                    fondo
                                    position-absolute
                                    bg-dark
                                    start-0
                                    end-0
                                    top-0
                                    bottom-0
                                    opacity-70
                                    "
                                    ></div>
                                <a
                                    href="#"
                                    class="card-body z-index-sec text-decoration-none pe-auto"
                                    >
                                    <strong class="card-title m-0 text-light text-uppercase"
                                            >fantasia-lorenmimpusu</strong
                                    >
                                </a>
                            </div>
                        </div>
                        <div class="col">
                            <div
                                class="
                                card
                                shadow
                                p-2
                                position-relative
                                overflow-hidden
                                card--categoria
                                "
                                >
                                <img
                                    src="./img/portada-libro.jpg"
                                    alt=""
                                    class="position-absolute w-100 start-0 end-0 top-0 bottom-0"
                                    />
                                <div
                                    class="
                                    fondo
                                    position-absolute
                                    bg-dark
                                    start-0
                                    end-0
                                    top-0
                                    bottom-0
                                    opacity-70
                                    "
                                    ></div>
                                <a
                                    href="#"
                                    class="card-body z-index-sec text-decoration-none pe-auto"
                                    >
                                    <strong class="card-title m-0 text-light text-uppercase"
                                            >fantasia-lorenmimpusu</strong
                                    >
                                </a>
                            </div>
                        </div>
                        <div class="col">
                            <div
                                class="
                                card
                                shadow
                                p-2
                                position-relative
                                overflow-hidden
                                card--categoria
                                "
                                >
                                <img
                                    src="./img/portada-libro.jpg"
                                    alt=""
                                    class="position-absolute w-100 start-0 end-0 top-0 bottom-0"
                                    />
                                <div
                                    class="
                                    fondo
                                    position-absolute
                                    bg-dark
                                    start-0
                                    end-0
                                    top-0
                                    bottom-0
                                    opacity-70
                                    "
                                    ></div>
                                <a
                                    href="#"
                                    class="card-body z-index-sec text-decoration-none pe-auto"
                                    >
                                    <strong class="card-title m-0 text-light text-uppercase"
                                            >fantasia-lorenmimpusu</strong
                                    >
                                </a>
                            </div>
                        </div>
                        <div class="col">
                            <div
                                class="
                                card
                                shadow
                                p-2
                                position-relative
                                overflow-hidden
                                card--categoria
                                "
                                >
                                <img
                                    src="./img/portada-libro.jpg"
                                    alt=""
                                    class="position-absolute w-100 start-0 end-0 top-0 bottom-0"
                                    />
                                <div
                                    class="
                                    fondo
                                    position-absolute
                                    bg-dark
                                    start-0
                                    end-0
                                    top-0
                                    bottom-0
                                    opacity-70
                                    "
                                    ></div>
                                <a
                                    href="#"
                                    class="card-body z-index-sec text-decoration-none pe-auto"
                                    >
                                    <strong class="card-title m-0 text-light text-uppercase"
                                            >fantasia-lorenmimpusu</strong
                                    >
                                </a>
                            </div>
                        </div>
                        <div class="col">
                            <div
                                class="
                                card
                                shadow
                                p-2
                                position-relative
                                overflow-hidden
                                card--categoria
                                "
                                >
                                <img
                                    src="./img/portada-libro.jpg"
                                    alt=""
                                    class="position-absolute w-100 start-0 end-0 top-0 bottom-0"
                                    />
                                <div
                                    class="
                                    fondo
                                    position-absolute
                                    bg-dark
                                    start-0
                                    end-0
                                    top-0
                                    bottom-0
                                    opacity-70
                                    "
                                    ></div>
                                <a
                                    href="#"
                                    class="card-body z-index-sec text-decoration-none pe-auto"
                                    >
                                    <strong class="card-title m-0 text-light text-uppercase"
                                            >fantasia-lorenmimpusu</strong
                                    >
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row p-3 pt-1 w-100 container__sec container__sec--bottom m-0">
                <div class="col">
                    <h6>Populares</h6>
                    <div
                        class="row overflow-auto m-0 flex-nowrap pb-4 group-card--custom"
                        >
                        <% for (int i = 1; i < lis.size(); i++) {
                            Object[] libro=(Object[])lis.get(i);
                            String data = DatatypeConverter.printBase64Binary((byte[])libro[7]);
                            String src = "data:image/png;base64," + data;
                            if (libro[5].equals(1)) { %>
                        <form action="CarritoControl" method="post" class="col">
                            <div class="card shadow card--libro">
                                <img src="<%= src %>" class="card-img-top rounded-3" />
                                <div class="card-body position-relative">
                                    <h4>
                                        <span
                                            class="
                                            badge
                                            bg-light
                                            text-dark
                                            position-absolute
                                            precio_card
                                            shadow-sm
                                            "
                                            >S/ <%= libro[6] %></span
                                        >
                                    </h4>
                                    <h6 class="card-title"><%= libro[1] %></h6>
                                    <div class="d-grid gap-2">
                                        <input type="hidden" name="codigo" value="<%= libro[0] %>">
                                        <input type="hidden" name="nombre" value="<%= libro[1] %>">
                                        <input type="hidden" name="precio" value="<%= libro[6] %>">
                                        <input type="hidden" name="foto" value="<%= src %>">
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
        </main>
        <!-- /pantalla de inicio -->
    </body>
</html>