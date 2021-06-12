<%-- Document : Libros Created on : 10/06/2021, 12:11:07 AM Author : Anthoni
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css">
        <script src="https://kit.fontawesome.com/50872a9b90.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <title>Biblioteca</title>
    </head>
    <body class="">
        <main class="container-fluid p-0">
            <jsp:include page="navInicio.jsp"/>

            <div class="container">
                <div class="row">
                    <div class="col-3">
                        <div class="card position-fixed">
                            <h5 class="card-title fw-bold text-center">Filtrar</h5>

                            <div class="card-body d-flex flex-column">
                                <a href="#" class="btn btn-primary my-2">De mayor a menor precio<i class="fas fa-sort-amount-up-alt"></i></a>
                                <a href="#" class="btn btn-primary my-2">De menor a mayor precio<i class="fas fa-sort-amount-down-alt"></i></a>
                                <form class="d-flex my-2">
                                    <input
                                        class="form-control me-2"
                                        type="search"
                                        placeholder="Search"
                                        aria-label="Search"
                                        />
                                    <button class="btn btn-outline-success" type="submit">
                                        Search
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-9">
                        <div class="row justify-content-around">
                            <div class="col">
                                <div class="card shadow" style="width: 10rem">
                                    <img
                                        src="https://www.sbs.com.pe/media/catalog/product/cache/image/700x560/06ebfc67bb9ce8f5293116309d79ec73/9/7/9786125020062.jpg"
                                        class="card-img-top rounded-3"
                                        alt="..."
                                        />
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
                                                >S/. 150.00</span
                                            >
                                        </h4>
                                        <h6 class="card-title">Historia De Un Deicidio</h6>
                                        <div class="d-grid gap-2">
                                            <a
                                                href="#"
                                                class="
                                                btn btn-outline-success
                                                d-flex
                                                justify-content-center
                                                align-items-center
                                                "
                                                >ver info<i class="fas fa-eye m-0 ms-2"></i
                                                ></a>
                                            <a
                                                href="#"
                                                class="
                                                btn btn-primary
                                                d-flex
                                                justify-content-center
                                                align-items-center
                                                "
                                                >Agregar<i class="fas fa-cart-plus m-0 ms-2"></i
                                                ></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card shadow" style="width: 10rem">
                                    <img
                                        src="https://www.sbs.com.pe/media/catalog/product/cache/image/700x560/06ebfc67bb9ce8f5293116309d79ec73/9/7/9786125020062.jpg"
                                        class="card-img-top rounded-3"
                                        alt="..."
                                        />
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
                                                >S/. 150.00</span
                                            >
                                        </h4>
                                        <h6 class="card-title">Historia De Un Deicidio</h6>
                                        <div class="d-grid gap-2">
                                            <a
                                                href="#"
                                                class="
                                                btn btn-outline-success
                                                d-flex
                                                justify-content-center
                                                align-items-center
                                                "
                                                >ver info<i class="fas fa-eye m-0 ms-2"></i
                                                ></a>
                                            <a
                                                href="#"
                                                class="
                                                btn btn-primary
                                                d-flex
                                                justify-content-center
                                                align-items-center
                                                "
                                                >Agregar<i class="fas fa-cart-plus m-0 ms-2"></i
                                                ></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card shadow" style="width: 10rem">
                                    <img
                                        src="https://www.sbs.com.pe/media/catalog/product/cache/image/700x560/06ebfc67bb9ce8f5293116309d79ec73/9/7/9786125020062.jpg"
                                        class="card-img-top rounded-3"
                                        alt="..."
                                        />
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
                                                >S/. 150.00</span
                                            >
                                        </h4>
                                        <h6 class="card-title">Historia De Un Deicidio</h6>
                                        <div class="d-grid gap-2">
                                            <a
                                                href="#"
                                                class="
                                                btn btn-outline-success
                                                d-flex
                                                justify-content-center
                                                align-items-center
                                                "
                                                >ver info<i class="fas fa-eye m-0 ms-2"></i
                                                ></a>
                                            <a
                                                href="#"
                                                class="
                                                btn btn-primary
                                                d-flex
                                                justify-content-center
                                                align-items-center
                                                "
                                                >Agregar<i class="fas fa-cart-plus m-0 ms-2"></i
                                                ></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card shadow" style="width: 10rem">
                                    <img
                                        src="https://www.sbs.com.pe/media/catalog/product/cache/image/700x560/06ebfc67bb9ce8f5293116309d79ec73/9/7/9786125020062.jpg"
                                        class="card-img-top rounded-3"
                                        alt="..."
                                        />
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
                                                >S/. 150.00</span
                                            >
                                        </h4>
                                        <h6 class="card-title">Historia De Un Deicidio</h6>
                                        <div class="d-grid gap-2">
                                            <a
                                                href="#"
                                                class="
                                                btn btn-outline-success
                                                d-flex
                                                justify-content-center
                                                align-items-center
                                                "
                                                >ver info<i class="fas fa-eye m-0 ms-2"></i
                                                ></a>
                                            <a
                                                href="#"
                                                class="
                                                btn btn-primary
                                                d-flex
                                                justify-content-center
                                                align-items-center
                                                "
                                                >Agregar<i class="fas fa-cart-plus m-0 ms-2"></i
                                                ></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card shadow" style="width: 10rem">
                                    <img
                                        src="https://www.sbs.com.pe/media/catalog/product/cache/image/700x560/06ebfc67bb9ce8f5293116309d79ec73/9/7/9786125020062.jpg"
                                        class="card-img-top rounded-3"
                                        alt="..."
                                        />
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
                                                >S/. 150.00</span
                                            >
                                        </h4>
                                        <h6 class="card-title">Historia De Un Deicidio</h6>
                                        <div class="d-grid gap-2">
                                            <a
                                                href="#"
                                                class="
                                                btn btn-outline-success
                                                d-flex
                                                justify-content-center
                                                align-items-center
                                                "
                                                >ver info<i class="fas fa-eye m-0 ms-2"></i
                                                ></a>
                                            <a
                                                href="#"
                                                class="
                                                btn btn-primary
                                                d-flex
                                                justify-content-center
                                                align-items-center
                                                "
                                                >Agregar<i class="fas fa-cart-plus m-0 ms-2"></i
                                                ></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card shadow" style="width: 10rem">
                                    <img
                                        src="https://www.sbs.com.pe/media/catalog/product/cache/image/700x560/06ebfc67bb9ce8f5293116309d79ec73/9/7/9786125020062.jpg"
                                        class="card-img-top rounded-3"
                                        alt="..."
                                        />
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
                                                >S/. 150.00</span
                                            >
                                        </h4>
                                        <h6 class="card-title">Historia De Un Deicidio</h6>
                                        <div class="d-grid gap-2">
                                            <a
                                                href="#"
                                                class="
                                                btn btn-outline-success
                                                d-flex
                                                justify-content-center
                                                align-items-center
                                                "
                                                >ver info<i class="fas fa-eye m-0 ms-2"></i
                                                ></a>
                                            <a
                                                href="#"
                                                class="
                                                btn btn-primary
                                                d-flex
                                                justify-content-center
                                                align-items-center
                                                "
                                                >Agregar<i class="fas fa-cart-plus m-0 ms-2"></i
                                            ></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>
