<%-- Document : index Created on : 04/06/2021, 01:22:51 PM Author : Anthoni --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<<<<<<< HEAD
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
        <main class="container-fluid p-0 ">
            <jsp:include page="navInicio.jsp" />
        </main>
    </body>
=======
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/style.css" />
    <script
      src="https://kit.fontawesome.com/50872a9b90.js"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
      crossorigin="anonymous"
    ></script>
    <title>Biblioteca</title>
  </head>

  <body class="">
    <main class="container-fluid p-0">
      <jsp:include page="navInicio.jsp" />
    </main>
    <!-- barra-movil -->
    <div
      class="container-fluid p-0 d-lg-none position-sticky top-0"
      style="z-index: 1"
    >
      <nav class="px-3 navbar navbar-light bg-white shadow-sm">
        <a class="navbar-brand" href="#">
          <img src="./img/logtipo.svg" width="67" alt="" />
        </a>
        <form class="form d-flex flex-shrink-0 position-relative form-busqueda">
          <input
            class="form-control mr-sm-2 rounded-pill p-3 input-busqueda"
            type="search"
            placeholder="¿Qué estas buscando?"
            aria-label="Search"
          />
          <button
            class="
              btn-busqueda
              position-absolute
              rounded-pill
              btn btn-primary
              m-0
            "
            type="submit"
          >
            <img
              src="./img/icons/icon-buscar.svg"
              alt=""
              class="d-sm-none d-flex pt-1 pb-1"
            />
            <span class="d-none d-sm-block"> Buscar </span>
          </button>
        </form>
      </nav>
    </div>
    <!-- /barra-movil -->
    <!-- pantalla de inicio -->
    <section class="pantalla_inicio bg-primary p-0 h-100">
      <div class="row p-3 w-100">
        <div class="col">
          <h6>Novedades</h6>
        </div>
      </div>
      <div class="row p-3 w-100">
        <div class="col">
          <h6>Categorias</h6>
        </div>
      </div>
      <div class="row p-3 w-100" style="margin-bottom: 4rem">
        <div class="col">
          <h6>Populares</h6>
          <div class="row">
            <div class="col">
              <div class="card shadow" style="width: 10rem">
                <img
                  src="./img/portada-libro.jpg"
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
                  <h6 class="card-title">Libro asombroso</h6>
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
                  src="./img/portada-libro.jpg"
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
                  <h6 class="card-title">Libro asombroso</h6>
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
                  src="./img/portada-libro.jpg"
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
                  <h6 class="card-title">Libro asombroso</h6>
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
                  src="./img/portada-libro.jpg"
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
                  <h6 class="card-title">Libro asombroso</h6>
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
    </section>
    <!-- /pantalla de inicio -->
  </body>
>>>>>>> design
</html>
