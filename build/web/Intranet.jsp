<<<<<<< HEAD
<%-- Document : Intranet Created on : 04/06/2021, 09:58:02 PM Author : Anthoni
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <jsp:include page="./metas-head.jsp" />
    <title>Intranet</title>
  </head>
  <body class="d-flex">
    <main
      class="
        container-fluid container_sesion
        w-100
        h-100
        p-0
        position-relative
      "
    >
      <button
        class="btn position-absolute pt-3 start-0 z-index"
        onclick="history.go(-1)"
      >
        <img src="./img/icons/btn-atras--white.svg" width="32" alt="" />
      </button>
      <div class="container-fluid  p-0  d-none d-md-flex  position-relative  overflow-hidden  m-0"
      >
        <img
          class="
            obj-fit--cover
            position-absolute
            top-0
            bottom-0
            start-0
            end-0
            back-img
            p-0
          "
          src="https://image.freepik.com/vector-gratis/personas-que-utilizan-concepto-isometrico-horizontal-biblioteca-linea-azul-3d_1284-31705.jpg"
          alt="..."
        />
        <img
          class="obj-fit z-index-sec w-100 p-0"
          src="https://image.freepik.com/vector-gratis/personas-que-utilizan-concepto-isometrico-horizontal-biblioteca-linea-azul-3d_1284-31705.jpg"
          alt="..."
        />
      </div>
      
      <div class="container-fluid h-100 d-grid p-0 z-index-sec m-0">
        <div class="row m-0 login_sec__logo">
          <img
            src="./img/logtipo.svg"
            class="login_sec__logo--movil d-md-none"
            alt=""
          />
          <img
            src="./img/logo.svg"
            class="login_sec__logo--desktop d-none d-md-block"
            alt=""
          />
        </div>
        <div class="row m-0 login_sec__forms px-3">
          <h1 class="text-dark text-center fw-bolder m-0 align-self-center p-0">
            Iniciar Sesión
          </h1>
          <form
            action="empleadoControl"
            class="d-grid align-item-space-between"
            method="post"
          >
            <div class="form-floating">
              <input
                type="text"
                required
                class="form-control"
                id="floatingInput"
                name="user"
                placeholder="Usuario"
                aria-label="Sizing example input"
                aria-describedby="inputGroup-sizing-lg"
              />
              <label for="floatingInput">Usuario</label>
            </div>
            <div class="form-floating">
              <input
                type="password"
                required
                class="form-control"
                id="floatingPassword"
                placeholder="Contraseña"
                name="pass"
                aria-label="Sizing example input"
                aria-describedby="inputGroup-sizing-lg"
              />
              <label for="floatingPassword">Contraseña</label>
            </div>
            <div class="input-group input-group-lg">
              <input
                type="submit"
                name="acc"
                value="Iniciar"
                class="btn w-100 btn-primary fw-bold h-min"
              />
            </div>
          </form>
        </div>
      </div>
    </main>
  </body>
</html>
=======
<%-- 
    Document   : Intranet
    Created on : 04/06/2021, 09:58:02 PM
    Author     : Anthoni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css">
        <script src="https://kit.fontawesome.com/50872a9b90.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <title>Intranet</title>
    </head>
    <body class="">
        <main class="container-fluid p-0">
            <div class="d-flex">
                <div class="col-12 col-md-9 m-auto mt-5">
                    <div class="card mb-md-3 shadow p-3 mb-5 bg-body rounded  ">
                        <div class="row g-0">
                            <div class="col-md-6 d-flex m-auto ">
                                <img class="img-fluid" src="https://image.freepik.com/vector-gratis/personas-que-utilizan-concepto-isometrico-horizontal-biblioteca-linea-azul-3d_1284-31705.jpg" alt="...">
                            </div>
                            <div class="col-md-6 bg-light d-flex align-items-center">
                                <div class="card-body">
                                    <div class="d-flex align-items-center justify-content-center flex-column">
                                        <img src="./img/logo.png" class="img-fluid " alt="">
                                        <h1 class="text-dark text-center fw-bolder">Iniciar Sesión</h1>
                                    </div>
                                    <div>
                                        <form action="EmpleadoControl" method="post">
                                            <div class="input-group input-group-lg my-5 ">
                                                <span class="input-group-text" id="inputGroup-sizing-lg" style="width:140px">Usuario</span>
                                                <input type="text" required class="form-control" name="user" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">
                                            </div>
                                            <div class="input-group input-group-lg my-5 ">
                                                <span class="input-group-text" id="inputGroup-sizing-lg " style="width:140px">Constraseña</span>
                                                <input type="password" required class="form-control" name="pass" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">
                                            </div>
                                            <div class="input-group input-group-lg my-5 ">
                                                <input type="submit" name="acc" value="Iniciar" class="btn w-100 btn-primary fw-bold">
                                            </div>
                                        </form>
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
>>>>>>> main
