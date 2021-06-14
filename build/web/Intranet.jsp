<%-- Document : Intranet Created on : 04/06/2021, 09:58:02 PM Author : Anthoni
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <jsp:include page="./metas-head.jsp" />
    <title>Intranet</title>
  </head>
  <body class="">
    <main class="container-fluid container_sesion w-100 h-100 p-0">
      <div class="container-fluid d-none">
        <img
          class="img-fluid"
          src="https://image.freepik.com/vector-gratis/personas-que-utilizan-concepto-isometrico-horizontal-biblioteca-linea-azul-3d_1284-31705.jpg"
          alt="..."
        />
      </div>
      <div class="container-fluid h-100 d-grid">
        <div class="row login_sec__logo">
            <img src="./img/logtipo.svg"  class=" login_sec__logo--movil d-lg-none"alt="">
            <img src="./img/logo.svg" class="login_sec__logo--desktop d-none d-lg-block" alt="" />
        </div>
        <div class="row login_sec__form px-3">
            <h1 class="text-dark text-center fw-bolder m-0 align-self-center">Iniciar Sesión</h1>
            <form action="empleadoControl" method="post">
              <div class="form-floating my-4">
                <input
                  type="text"
                  required
                  class="form-control" id="floatingInput" 
                  name="user"
                  placeholder="Usuario"
                  aria-label="Sizing example input"
                  aria-describedby="inputGroup-sizing-lg"
                />
                <label for="floatingInput">Usuario</label>
              </div>
              <div class="form-floating my-4">
                <input
                  type="password"
                  required
                  class="form-control"
                  id="floatingPassword" placeholder="Contraseña"
                  name="pass"
                  aria-label="Sizing example input"
                  aria-describedby="inputGroup-sizing-lg"
                />
                <label for="floatingPassword">Contraseña</label>
              </div>
              <div class="input-group input-group-lg my-4">
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
    </main>
  </body>
</html>
