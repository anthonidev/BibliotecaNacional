<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="./metas-head.jsp" />
        <title>Crear Cuenta</title>
    </head>
    <body class="d-flex">
        <main
            class="container-fluid container_sesion w-100 h-100 p-0 position-relative"
            >
            <button
                class="btn position-absolute pt-3 start-0 z-index"
                onclick="location.href='Login.jsp'"
                ><i class="d-md-none text-light fas fa-arrow-left h1 ms-2"></i>
                <i class="d-none d-md-block fas fa-arrow-left h1 ms-2"></i>
            </button>

            <div
                class="
                container-fluid
                p-0
                d-none d-md-flex
                position-relative
                overflow-hidden
                m-0
                bg-white
                "
                >
                <img
                    class="obj-fit--cover z-index-sec w-100 p-0"
                    src="https://image.freepik.com/vector-gratis/dibujado-mano-ilustracion-dia-mundial-libro-pila-libros_23-2148868267.jpg"
                    alt="..."
                    />
            </div>

            <div class="container-fluid h-100 d-grid p-0 z-index-sec m-0">
                <div
                    class="d-flex align-items-center flex-column pt-2"
                    >
                    <h1 class="text-light text-center align-self-start fw-bolder ps-5 ms-4">Crear cuenta</h1>
                </div>
                <div class="row m-0 login_sec__forms px-3">
                    <form action="clienteControl" class="d-grid align-item-space-between" method="post">
                        <div class="row">
                            <div class="col-6">
                                <span class="input-group-text" id="inputGroup-sizing-lg"
                                      >Nombre</span
                                >
                                <input
                                    type="text"
                                    required
                                    class="form-control"
                                    name="Nombre"
                                    aria-label="Sizing example input"
                                    aria-describedby="inputGroup-sizing"
                                    />
                            </div>
                            <div class="col-6">
                                <span class="input-group-text" id="inputGroup-sizing-lg"
                                      >Apellidos</span
                                >
                                <input
                                    type="text"
                                    required
                                    class="form-control"
                                    name="Apellidos"
                                    aria-label="Sizing example input"
                                    aria-describedby="inputGroup-sizing"
                                    />
                            </div>
                            <div class="col-6 my-2">
                                <span class="input-group-text" id="inputGroup-sizing-lg"
                                      >Dni</span
                                >
                                <input
                                    type="text"
                                    required
                                    class="form-control"
                                    name="Dni"
                                    aria-label="Sizing example input"
                                    aria-describedby="inputGroup-sizing"
                                    maxlength="8"
                                    onkeyup="this.value = Numeros(this.value)"
                                    />
                            </div>
                            <div class="col-6 my-2">
                                <span class="input-group-text" id="inputGroup-sizing-lg"
                                      >Telefono</span
                                >
                                <input
                                    type="text"
                                    required
                                    class="form-control"
                                    name="Telefono"
                                    aria-label="Sizing example input"
                                    aria-describedby="inputGroup-sizing"
                                    maxlength="9"
                                    onkeyup="this.value = Numeros(this.value)"
                                    />
                            </div>
                            <div class="col-4 my-2">
                                <span class="input-group-text" id="inputGroup-sizing-lg"
                                      >Departamento</span
                                >
                                <select
                                    class="form-select form-control"
                                    onchange="cambia()"
                                    aria-label="Default select example"
                                    name="selectDepartamento"
                                    required=""
                                    >
                                    <option value="">Seleccione</option>
                                    <option value="Amazonas">Amazonas</option>
                                    <option value="Ancash">Ancash</option>
                                    <option value="Apurímac">Apurímac</option>
                                    <option value="Arequipa">Arequipa</option>
                                    <option value="Ayacucho">Ayacucho</option>
                                    <option value="Cajamarca">Cajamarca</option>
                                    <option value="Callao">Callao</option>
                                    <option value="Cuzco">Cuzco</option>
                                    <option value="Huancavelica">Huancavelica</option>
                                    <option value="Huánuco">Huánuco</option>
                                    <option value="Ica">Ica</option>
                                    <option value="Junín">Junín</option>
                                    <option value="La_Libertad">La Libertad</option>
                                    <option value="Lambayeque">Lambayeque</option>
                                    <option value="Lima">Lima</option>
                                    <option value="Loreto">Loreto</option>
                                    <option value="Madre_de_Dios">Madre de Dios</option>
                                    <option value="Moquegua">Moquegua</option>
                                    <option value="Pasco">Pasco</option>
                                    <option value="Piura">Piura</option>
                                    <option value="Puno">Puno</option>
                                    <option value="San_Martín">San Martín</option>
                                    <option value="Tacna">Tacna</option>
                                    <option value="Tumbes">Tumbes</option>
                                    <option value="Ucayali">Ucayali</option>
                                </select>
                            </div>
                            <div class="col-4 my-2">
                                <span class="input-group-text" id="inputGroup-sizing-lg"
                                      >Provincia</span
                                >
                                <select
                                    class="form-select form-control"
                                    aria-label="Default select example"
                                    name="selectProvincia"
                                    onchange="cambiaDistrito()"
                                    required=""
                                    >
                                    <option>Seleccione la Provincia</option>
                                </select>
                            </div>
                            <div class="col-4 my-2">
                                <span class="input-group-text" id="inputGroup-sizing-lg"
                                      >Distrito</span
                                >
                                <select
                                    class="form-select form-control"
                                    aria-label="Default select example"
                                    name="selectDistrito"
                                    required=""
                                    >
                                    <option>Seleccione el Distrito</option>
                                </select>
                            </div>
                            <div class="col-12 my-2">
                                <span class="input-group-text" id="inputGroup-sizing-lg"
                                      >Direccion</span
                                >
                                <input
                                    type="text"
                                    required
                                    class="form-control"
                                    name="Direccion"
                                    aria-label="Sizing example input"
                                    aria-describedby="inputGroup-sizing"
                                    />
                            </div>
                            <div class="col-6 my-2">
                                <span class="input-group-text" id="inputGroup-sizing-lg"
                                      >Fecha de Nacimiento</span
                                >
                                <input
                                    type="date"
                                    required
                                    class="form-control"
                                    name="FechaNa"
                                    aria-label="Sizing example input"
                                    aria-describedby="inputGroup-sizing"
                                    pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}"
                                    />
                            </div>
                            <div class="col-6 my-2">
                                <span class="input-group-text" id="inputGroup-sizing-lg"
                                      >Usuario</span
                                >
                                <input
                                    type="text"
                                    required
                                    class="form-control"
                                    name="usu"
                                    aria-label="Sizing example input"
                                    aria-describedby="inputGroup-sizing"
                                    />
                            </div>
                            <div class="col-6 my-2 m-auto">
                                <span class="input-group-text" id="inputGroup-sizing-lg"
                                      >Constraseña</span
                                >
                                <input
                                    type="password"
                                    required
                                    class="form-control"
                                    name="pass"
                                    aria-label="Sizing example input"
                                    aria-describedby="inputGroup-sizing"
                                    />
                            </div>
                        </div>
                        <div class="input-group input-group-lg my-5">
                            <input
                                type="submit"
                                name="acc"
                                value="Registrarse"
                                class="btn w-100 btn-primary fw-bold"
                                />
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </body>
</html>