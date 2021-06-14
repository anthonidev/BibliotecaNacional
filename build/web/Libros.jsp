<%-- Document : Libros Created on : 10/06/2021, 12:11:07 AM Author : Anthoni
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
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
          <div
            class="
              col-12 col-lg-3
              position-sticky
              pt-2
              top-0
              z-index
              bg-white
              modal_filtrar
            "
          >
            <div class="card">
              <h5 class="card-title fw-bold text-center m-0">Filtrar</h5>

              <div class="card-body d-flex flex-column p-0 pt-2">
                <a href="#" class="btn btn-dark mb-2"
                  >De mayor a menor precio<i
                    class="fas fa-sort-amount-up-alt"
                  ></i
                ></a>
                <a href="#" class="btn btn-dark mb-2"
                  >De menor a mayor precio<i
                    class="fas fa-sort-amount-down-alt"
                  ></i
                ></a>
              </div>
            </div>
          </div>
          <div class="col-12 col-lg-9 offset-lg-3 pt-4">
            <div
              class="
                row
                overflow-auto
                m-0
                flex-nowrap
                pb-1
                group-card--custom group-card--custom--busqueda
                container__sec--bottom
                w-100
              "
            >
              <div class="col">
                <div class="card shadow card--libro">
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
                <div class="card shadow card--libro">
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
                <div class="card shadow card--libro">
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
                <div class="card shadow card--libro">
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
                <div class="card shadow card--libro">
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
                <div class="card shadow card--libro">
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
                <div class="card shadow card--libro">
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
                <div class="card shadow card--libro">
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
                <div class="card shadow card--libro">
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
                <div class="card shadow card--libro">
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
