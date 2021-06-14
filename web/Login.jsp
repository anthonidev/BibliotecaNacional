<%-- Document : Libros Created on : 10/06/2021, 12:11:07 AM Author : Anthoni
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <jsp:include page="./metas-head.jsp" />
    <title>Biblioteca</title>
  </head>
  <body class="">
    <main class="container-fluid p-0">
      <div class="row">
        <div class="col-12 col-md-9 m-auto mt-5">
          <div class="card mb-md-3 shadow p-3 mb-5 bg-body rounded">
            <div class="row g-0">
              <div class="col-md-6">
                <img
                  class="img-fluid"
                  src="https://image.freepik.com/vector-gratis/ilustracion-plana-dia-mundial-libro_23-2148890538.jpg"
                  alt="..."
                />
              </div>
              <div class="col-md-6 bg-light d-flex align-items-center">
                <div class="card-body">
                  <div
                    class="
                      d-flex
                      align-items-center
                      justify-content-center
                      flex-column
                    "
                  >
                    <img src="./img/logo.png" class="img-fluid" alt="" />
                    <h1 class="text-dark text-center fw-bolder">
                      Iniciar Sesión
                    </h1>
                  </div>
                  <div>
                    <form action="" method="post">
                      <div class="input-group input-group-lg my-5">
                        <span
                          class="input-group-text"
                          id="inputGroup-sizing-lg"
                          style="width: 140px"
                          >Usuario</span
                        >
                        <input
                          type="text"
                          required
                          class="form-control"
                          name="user"
                          aria-label="Sizing example input"
                          aria-describedby="inputGroup-sizing-lg"
                        />
                      </div>
                      <div class="input-group input-group-lg my-5">
                        <span
                          class="input-group-text"
                          id="inputGroup-sizing-lg "
                          style="width: 140px"
                          >Constraseña</span
                        >
                        <input
                          type="password"
                          required
                          class="form-control"
                          name="pass"
                          aria-label="Sizing example input"
                          aria-describedby="inputGroup-sizing-lg"
                        />
                      </div>
                      <div class="input-group input-group-lg my-5">
                        <input
                          type="submit"
                          name="acc"
                          value="Iniciar"
                          class="btn w-100 btn-primary fw-bold"
                        />
                      </div>
                    </form>
                  </div>

                  <div class="d-flex flex-column">
                    <h1 class="text-dark h5 text-center">No tienes cuenta?</h1>
                    <a href="signUp.jsp" class="btn btn-success m-auto"
                      >Registrarse
                    </a>
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
