<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="./metas-head.jsp" />
        <title>Biblioteca</title>
    </head>
    <body class="d-flex">
        <main class="container-fluid container_sesion w-100 h-100 p-0 position-relative">
            <button class="btn position-absolute pt-3 start-0 z-index" onclick="location.href='index.jsp'">
                <i class="d-md-none text-light fas fa-arrow-left h1 ms-2"></i>
                <i class="d-none d-md-block fas fa-arrow-left h1 ms-2"></i>
            </button>
            <div class="container-fluid p-0 d-none d-md-flex position-relative overflow-hidden m-0 bg-white">
                <img
                    class="obj-fit--cover z-index-sec w-100 p-0"
                    src="https://image.freepik.com/vector-gratis/ilustracion-plana-dia-mundial-libro_23-2148890538.jpg"
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
                    <h1 class="text-dark text-center fw-bolder m-0 align-self-center p-0">Iniciar Sesión</h1>
                    <form action="CarritoControl" class="d-grid align-item-space-between" method="post">
                        <div class="form-floating">
                            <input type="text" required class="form-control" id="floatingInput" name="user" placeholder="Usuario" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">
                            <label for="floatingInput">Usuario</label>
                        </div>
                        <div class="form-floating">
                            <input type="password" required class="form-control" id="floatingPassword" placeholder="Contraseña" name="pass" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">
                            <label for="floatingPassword">Contraseña</label>
                        </div>
                        <div class="input-group input-group-lg">
                            <input type="submit" name="acc" value="Iniciar" class="btn w-100 btn-primary fw-bold">
                        </div>
                    </form>
                    <div class="d-flex align-items-center justify-content-center">
                        <span class="text-dark h6 text-center m-0">¿Aun no tienes una cuenta?</span>
                        <a href="signUp.jsp" class="btn btn-link h5 text-success m-0">Registrate</a>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>