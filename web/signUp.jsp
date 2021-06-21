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
        onclick="history.go(-1)"
      >
        <img
          src="./img/icons/btn-atras.svg"
          width="32"
          alt=""
          class="d-none d-md-block"
        />
        <img
          src="./img/icons/btn-atras--white.svg"
          width="32"
          alt=""
          class="d-md-none"
        />
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

      <div class="container-fluid h-100 d-grid grid-them-row--min p-0 z-index-sec m-0">
        <div class="p-2 pt-2 mt-1">
          <h1
            class="text-light ps-5 m-0"
          >
            Crear cuenta
          </h1>
        </div>
        <div class="row m-0 login_sec__forms px-3 pe-0 py-3 b-r-f-20">
          <form
            action="ClienteControl"
            class="d-grid align-item-space-between ps-0"
            method="post"
          >
            <div class="row g-1">
              <div class="col-6 form-floating">
                <input
                  type="text"
                  required
                  class="form-control"
                  id="floatingInput"
                  placeholder="Nombre"
                  name="Nombre"
                  aria-label="Sizing example input"
                  aria-describedby="inputGroup-sizing"
                />
                <label for="floatingInput">Nombre</label>
              </div>
              <div class="col-6 form-floating">
                <input
                  type="text"
                  required
                  class="form-control"
                  id="floatingInput"
                  placeholder="Apellidos"
                  name="Apellidos"
                  aria-label="Sizing example input"
                  aria-describedby="inputGroup-sizing"
                />
                <label for="floatingInput">Apellidos</label>
              </div>
              <div class="col-6 form-floating my-2">
                <input
                  type="text"
                  required
                  class="form-control"
                  id="floatingInput"
                  placeholder="DNI"
                  name="Dni"
                  aria-label="Sizing example input"
                  aria-describedby="inputGroup-sizing"
                  maxlength="8"
                  onkeyup="this.value=Numeros(this.value)"
                />
                <label for="floatingInput">DNI</label>
              </div>
              <div class="col-6 form-floating my-2">
                <input
                  type="text"
                  required
                  class="form-control"
                  id="floatingInput"
                  placeholder="Telefono"
                  name="Telefono"
                  aria-label="Sizing example input"
                  aria-describedby="inputGroup-sizing"
                  maxlength="9"
                  onkeyup="this.value=Numeros(this.value)"
                />
                <label for="floatingInput">Telefono</label>
              </div>
              <div class="col-4 form-floating my-2">
                <select
                  class="form-select form-control"
                  id="floatingSelect"
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
                <label for="floatingSelect">Departamento</label>
              </div>
              <div class="col-4 form-floating my-2">
                <select
                  class="form-select form-control"
                  id="floatingSelect"
                  aria-label="Default select example"
                  name="selectProvincia"
                  onchange="cambiaDistrito()"
                  required=""
                >
                  <option>Seleccione la Provincia</option>
                </select>
                <label for="floatingSelect">Provincia</label>
              </div>
              <div class="col-4 form-floating my-2">
                <select
                  class="form-select form-control"
                  id="floatingSelect"
                  aria-label="Default select example"
                  name="selectDistrito"
                  required=""
                >
                  <option>Seleccione el Distrito</option>
                </select>
                <label for="floatingSelect">Distrito</label>
              </div>
              <div class="col-12 form-floating my-2">
                <input
                  type="text"
                  required
                  class="form-control"
                  id="floatingInput"
                  placeholder="Dirección"
                  name="Direccion"
                  aria-label="Sizing example input"
                  aria-describedby="inputGroup-sizing"
                />
                <label for="floatingInput">Dirección</label>
              </div>
              <div class="col-6 form-floating my-2">
                <input
                  type="date"
                  required
                  class="form-control"
                  id="floatingInput"
                  placeholder="Fecha Nacimiento"
                  name="FechaNa"
                  aria-label="Sizing example input"
                  aria-describedby="inputGroup-sizing"
                  pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}"
                />
                <label for="floatingInput">Fecha Nacimiento</label>
              </div>
              <div class="col-6 form-floating my-2">
                <input
                  type="text"
                  required
                  class="form-control"
                  id="floatingInput"
                  placeholder="Usuario"
                  name="usu"
                  aria-label="Sizing example input"
                  aria-describedby="inputGroup-sizing"
                  />
                  <label for="floatingInput">Usuario</label>
              </div>
              <div class="col form-floating my-2 m-auto">
                <input
                  type="password"
                  required
                  class="form-control"
                  id="floatingInput"
                  placeholder="Contraseña"
                  name="pass"
                  aria-label="Sizing example input"
                  aria-describedby="inputGroup-sizing"
                  />
                  <label for="floatingInput">Contraseña</label>
              </div>
            </div>
            <div class="input-group input-group-md">
              <input
                type="submit"
                name="acc"
                value="Registrarse"
                class="btn w-100 btn-primary h-min fw-bold"
              />
            </div>
          </form>
        </div>
      </div>
    </main>
</html>
