<%-- Document : index Created on : 04/06/2021, 01:22:51 PM Author : Anthoni --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
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
    <!-- pantalla de inicio -->
    <section class="container_section_datos p-0 h-100">
      <jsp:include page="barra-busqueda.jsp" />
      <a href="./Libros.jsp" class="container-fluid position-absolute top-0 end-0 d-none d-lg-block z-index group-card--custom" style="padding: 37px !important;"></a>
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
            <div class="col">
              <div class="card shadow card--libro ">
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
              <div class="card shadow card--libro ">
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
              <div class="card shadow card--libro ">
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
              <div class="card shadow card--libro ">
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
              <div class="card shadow card--libro ">
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
              <div class="card shadow card--libro ">
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
      <div class="row p-3 w-100 container__sec pb-0 m-0">
        <div class="col">
          <h6>Categorias</h6>
          <div class="row overflow-auto pb-4 m-0 flex-nowrap group-card--custom">
            <div class="col">
              <div class="card shadow p-2 position-relative overflow-hidden card--categoria" >
                <img src="./img/portada-libro.jpg" alt="" class="position-absolute w-100 start-0 end-0 top-0 bottom-0">
                <div class="fondo position-absolute bg-dark start-0 end-0 top-0 bottom-0 opacity-70 "></div>
                <a href="#" class="card-body z-index-sec text-decoration-none pe-auto">
                  <strong class="card-title m-0 text-light text-uppercase">fantasia-lorenmimpusu</strong>
                </a>
              </div>
            </div>
            <div class="col">
              <div class="card shadow p-2 position-relative overflow-hidden card--categoria" >
                <img src="./img/portada-libro.jpg" alt="" class="position-absolute w-100 start-0 end-0 top-0 bottom-0">
                <div class="fondo position-absolute bg-dark start-0 end-0 top-0 bottom-0 opacity-70 "></div>
                <a href="#" class="card-body z-index-sec text-decoration-none pe-auto">
                  <strong class="card-title m-0 text-light text-uppercase">fantasia-lorenmimpusu</strong>
                </a>
              </div>
            </div>
            <div class="col">
              <div class="card shadow p-2 position-relative overflow-hidden card--categoria" >
                <img src="./img/portada-libro.jpg" alt="" class="position-absolute w-100 start-0 end-0 top-0 bottom-0">
                <div class="fondo position-absolute bg-dark start-0 end-0 top-0 bottom-0 opacity-70 "></div>
                <a href="#" class="card-body z-index-sec text-decoration-none pe-auto">
                  <strong class="card-title m-0 text-light text-uppercase">fantasia-lorenmimpusu</strong>
                </a>
              </div>
            </div>
            <div class="col">
              <div class="card shadow p-2 position-relative overflow-hidden card--categoria" >
                <img src="./img/portada-libro.jpg" alt="" class="position-absolute w-100 start-0 end-0 top-0 bottom-0">
                <div class="fondo position-absolute bg-dark start-0 end-0 top-0 bottom-0 opacity-70 "></div>
                <a href="#" class="card-body z-index-sec text-decoration-none pe-auto">
                  <strong class="card-title m-0 text-light text-uppercase">fantasia-lorenmimpusu</strong>
                </a>
              </div>
            </div>
            <div class="col">
              <div class="card shadow p-2 position-relative overflow-hidden card--categoria" >
                <img src="./img/portada-libro.jpg" alt="" class="position-absolute w-100 start-0 end-0 top-0 bottom-0">
                <div class="fondo position-absolute bg-dark start-0 end-0 top-0 bottom-0 opacity-70 "></div>
                <a href="#" class="card-body z-index-sec text-decoration-none pe-auto">
                  <strong class="card-title m-0 text-light text-uppercase">fantasia-lorenmimpusu</strong>
                </a>
              </div>
            </div>
            <div class="col">
              <div class="card shadow p-2 position-relative overflow-hidden card--categoria" >
                <img src="./img/portada-libro.jpg" alt="" class="position-absolute w-100 start-0 end-0 top-0 bottom-0">
                <div class="fondo position-absolute bg-dark start-0 end-0 top-0 bottom-0 opacity-70 "></div>
                <a href="#" class="card-body z-index-sec text-decoration-none pe-auto">
                  <strong class="card-title m-0 text-light text-uppercase">fantasia-lorenmimpusu</strong>
                </a>
              </div>
            </div>
            <div class="col">
              <div class="card shadow p-2 position-relative overflow-hidden card--categoria" >
                <img src="./img/portada-libro.jpg" alt="" class="position-absolute w-100 start-0 end-0 top-0 bottom-0">
                <div class="fondo position-absolute bg-dark start-0 end-0 top-0 bottom-0 opacity-70 "></div>
                <a href="#" class="card-body z-index-sec text-decoration-none pe-auto">
                  <strong class="card-title m-0 text-light text-uppercase">fantasia-lorenmimpusu</strong>
                </a>
              </div>
            </div>
            <div class="col">
              <div class="card shadow p-2 position-relative overflow-hidden card--categoria" >
                <img src="./img/portada-libro.jpg" alt="" class="position-absolute w-100 start-0 end-0 top-0 bottom-0">
                <div class="fondo position-absolute bg-dark start-0 end-0 top-0 bottom-0 opacity-70 "></div>
                <a href="#" class="card-body z-index-sec text-decoration-none pe-auto">
                  <strong class="card-title m-0 text-light text-uppercase">fantasia-lorenmimpusu</strong>
                </a>
              </div>
            </div>
            <div class="col">
              <div class="card shadow p-2 position-relative overflow-hidden card--categoria" >
                <img src="./img/portada-libro.jpg" alt="" class="position-absolute w-100 start-0 end-0 top-0 bottom-0">
                <div class="fondo position-absolute bg-dark start-0 end-0 top-0 bottom-0 opacity-70 "></div>
                <a href="#" class="card-body z-index-sec text-decoration-none pe-auto">
                  <strong class="card-title m-0 text-light text-uppercase">fantasia-lorenmimpusu</strong>
                </a>
              </div>
            </div>
            <div class="col">
              <div class="card shadow p-2 position-relative overflow-hidden card--categoria" >
                <img src="./img/portada-libro.jpg" alt="" class="position-absolute w-100 start-0 end-0 top-0 bottom-0">
                <div class="fondo position-absolute bg-dark start-0 end-0 top-0 bottom-0 opacity-70 "></div>
                <a href="#" class="card-body z-index-sec text-decoration-none pe-auto">
                  <strong class="card-title m-0 text-light text-uppercase">fantasia-lorenmimpusu</strong>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row p-3 pt-1 w-100 container__sec container__sec--bottom m-0 ">
        <div class="col">
          <h6>Populares</h6>
          <div
            class="row overflow-auto m-0 flex-nowrap pb-4 group-card--custom"
          >
            <div class="col">
              <div class="card shadow card--libro ">
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
              <div class="card shadow card--libro ">
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
              <div class="card shadow card--libro ">
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
              <div class="card shadow card--libro ">
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
              <div class="card shadow card--libro ">
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
              <div class="card shadow card--libro ">
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
</html>
