<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="./metas-head.jsp" />
        <title>Intranet</title>
    </head>
    <body class="d-flex">
        <main class="container-fluid container_sesion w-100 h-100 p-0 position-relative">
            <button class="btn position-absolute pt-3 start-0 z-index" onclick="location.href='index.jsp'"><i class="fas fa-arrow-left h1 ms-2 text-white"></i></button>
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
                    <img src="./img/logtipo.svg" class="login_sec__logo--movil d-md-none" alt="">
                    <img src="./img/logo.svg" class="login_sec__logo--desktop d-none d-md-block" alt="">
                </div>
                <div class="row m-0 login_sec__forms px-3">
                    <h1 class="text-dark text-center fw-bolder m-0 align-self-center p-0">Iniciar Sesión</h1>
                    <form action="EmpleadoControl" class="d-grid align-item-space-between" method="post">
                        <div class="form-floating">
                            <input type="text" required class="form-control" id="floatingInput" name="user" placeholder="Usuario" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">
                            <label for="floatingInput">Usuario</label>
                        </div>
                        <div class="form-floating">
                            <input type="password" required class="form-control" id="floatingPassword" placeholder="Contraseña" name="pass" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">
                            <label for="floatingPassword">Contraseña</label>
                        </div>
                        <div class="input-group input-group-lg">
                            <input type="submit" name="acc" value="Iniciar" class="btn w-100 btn-primary fw-bold h-min">
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </body>
</html>