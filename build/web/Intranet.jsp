<%-- Document : Intranet Created on : 04/06/2021, 09:58:02 PM Author : Anthoni
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <jsp:include page="./metas-head.jsp" />
    <title>Intranet</title>
  </head>
  <body class="">
    <main class="container-fluid">
      <div class="row">
        <img
          class="img-fluid"
          src="https://image.freepik.com/vector-gratis/personas-que-utilizan-concepto-isometrico-horizontal-biblioteca-linea-azul-3d_1284-31705.jpg"
          alt="..."
        />
      </div>

      <div class="row">
        <div class="col">
          <div class="card">
                <div class="card-body">
                  <div class=" d-flex align-items-center justify-content-center flex-column " >
                    <img src="./img/logo.png" class="img-fluid" alt="" />
                    <h1 class="text-dark text-center fw-bolder">
                      Iniciar Sesión
                    </h1>
                  </div>
                  <div>
                    <form action="empleadoControl" method="post">
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
                </div>
          </div>
        </div>
      </div>
    </main>
  </body>
</html>
