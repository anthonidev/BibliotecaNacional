<!DOCTYPE html>
<html>
  <head>
    <jsp:include page="./metas-head.jsp" />
    <title>Biblioteca</title>
  </head>
  <body data-bs-spy="scroll" data-bs-target="#navbar" data-bs-offset="94">
    <jsp:include page="./navAdmin.jsp" />
    <jsp:include page="./navbarAdmin.jsp" />
    <div class="container_section_datos container_section_datos--intranet p-0">
      <section class="bg-dark" style="height: 1000px;" id="sec11"></section>
      <section class="bg-primary" style="height: 1000px;" id="sec2"></section>
      <section class="bg-warning" style="height: 1000px;" id="sec3"></section>
    </div>
    <div class="col-6 d-flex flex-column d-none">
      <div
        class="alert alert-warning alert-dismissible fade show mt-4"
        role="alert"
      >
        <h4 class="fw-bold text-center text-dark my-2"></h4>
        <button
          type="button"
          class="btn-close"
          data-bs-dismiss="alert"
          aria-label="Close"
        ></button>
      </div>
      <div
        class="
          accordion accordion-flush
          shadow
          bg-body
          rounded
          border-1
          mt-4
          mx-3
        "
        id="accordionFlushExample"
      >
        <div class="accordion-item">
          <h2 class="accordion-header" id="flush-headingOne">
            <button
              class="accordion-button collapsed"
              type="button"
              data-bs-toggle="collapse"
              data-bs-target="#flush-collapseOne"
              aria-expanded="false"
              aria-controls="flush-collapseOne"
            >
              Registrar Empleado
            </button>
          </h2>
          <div
            id="flush-collapseOne"
            class="accordion-collapse collapse"
            aria-labelledby="flush-headingOne"
            data-bs-parent="#accordionFlushExample"
          >
            <div class="accordion-body bg-light">
              <form action="../../EmpleadoControl" method="post">
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
                      onkeyup="this.value=Numeros(this.value)"
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
                      onkeyup="this.value=Numeros(this.value)"
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
                      required
                    >
                      <option value="">Seleccione</option>
                      <option value=""></option>
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
                      required
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
                      required
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
                      >Tipo de usuario</span
                    >
                    <select
                      class="form-select form-control"
                      aria-label="Default select example"
                      name="tipo"
                      required
                    >
                      <option selected>Seleccione</option>
                      <option value="admin">admin</option>
                    </select>
                  </div>
                  <div class="col-6 my-2">
                    <span class="input-group-text" id="inputGroup-sizing-lg"
                      >Usuario</span
                    >
                    <input
                      type="text"
                      required
                      class="form-control"
                      name="usuario"
                      aria-label="Sizing example input"
                      aria-describedby="inputGroup-sizing"
                    />
                  </div>
                  <div class="col-6 my-2">
                    <span class="input-group-text" id="inputGroup-sizing-lg"
                      >Constraseña</span
                    >
                    <input
                      type="password"
                      required
                      class="form-control"
                      name="password"
                      aria-label="Sizing example input"
                      aria-describedby="inputGroup-sizing"
                    />
                  </div>
                  <div class="input-group input-group-lg my-2">
                    <input
                      type="submit"
                      name="acc"
                      value="Registrar"
                      class="btn w-100 btn-primary fw-bold"
                    />
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="accordion-item">
          <h2 class="accordion-header" id="flush-headingTwo">
            <button
              class="accordion-button collapsed"
              type="button"
              data-bs-toggle="collapse"
              data-bs-target="#flush-collapseTwo"
              aria-expanded="false"
              aria-controls="flush-collapseTwo"
            >
              Actualizar Empleado
            </button>
          </h2>
          <div
            id="flush-collapseTwo"
            class="accordion-collapse collapse"
            aria-labelledby="flush-headingTwo"
            data-bs-parent="#accordionFlushExample"
          >
            <div class="accordion-body bg-light">
              <form action="../../EmpleadoControl" method="post">
                <div
                  class="
                    row
                    d-flex
                    align-items-center
                    justify-content-center
                    w-100
                  "
                >
                  <div class="row">
                    <div>
                      <input type="hidden" name="Dni" value="" />
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
                        value=""
                        aria-label="Sizing example input"
                        aria-describedby="inputGroup-sizing"
                        maxlength="9"
                        onkeyup="this.value=Numeros(this.value)"
                      />
                    </div>
                    <div class="col-6 my-2">
                      <span class="input-group-text" id="inputGroup-sizing-lg"
                        >Departamento</span
                      >
                      <select
                        class="form-select form-control"
                        onchange="cambia2()"
                        aria-label="Default select example"
                        name="selectDepartamento2"
                        required
                      >
                        <option value="">Seleccione</option>
                        <option value=""></option>
                      </select>
                    </div>
                    <div class="col-6 my-2">
                      <span class="input-group-text" id="inputGroup-sizing-lg"
                        >Provincia</span
                      >
                      <select
                        class="form-select form-control"
                        aria-label="Default select example"
                        name="selectProvincia2"
                        onchange="cambiaDistrito2()"
                        required
                      >
                        <option>Seleccione la Provincia</option>
                      </select>
                    </div>
                    <div class="col-6 my-2">
                      <span class="input-group-text" id="inputGroup-sizing-lg"
                        >Distrito</span
                      >
                      <select
                        class="form-select form-control"
                        aria-label="Default select example"
                        name="selectDistrito2"
                        required
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
                        class="form-control"
                        name="Direccion"
                        value=""
                        aria-label="Sizing example input"
                        aria-describedby="inputGroup-sizing"
                        required
                      />
                    </div>

                    <div class="col-6 my-2">
                      <span class="input-group-text" id="inputGroup-sizing-lg"
                        >Tipo de empleado</span
                      >
                      <select
                        class="form-select form-control"
                        aria-label="Default select example"
                        name="tipo"
                        required
                      >
                        <option>Seleccione</option>

                        <option value=""></option>
                      </select>
                    </div>
                    <div class="col-6 my-2">
                      <span class="input-group-text" id="inputGroup-sizing-lg"
                        >Constraseña</span
                      >
                      <input
                        type="password"
                        placeholder="Ingrese nueva contraseña"
                        class="form-control"
                        name="password"
                        aria-label="Sizing example input"
                        aria-describedby="inputGroup-sizing"
                      />
                    </div>
                  </div>
                  <input
                    type="submit"
                    class="btn btn btn-secondary w-75 my-3 btn-lg"
                    name="acc"
                    value="Actualizar"
                  />
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="accordion-item">
          <h2 class="accordion-header" id="flush-headingThree">
            <button
              class="accordion-button collapsed"
              type="button"
              data-bs-toggle="collapse"
              data-bs-target="#flush-collapseThree"
              aria-expanded="false"
              aria-controls="flush-collapseThree"
            >
              Eliminar Empleado
            </button>
          </h2>
          <div
            id="flush-collapseThree"
            class="accordion-collapse collapse"
            aria-labelledby="flush-headingThree"
            data-bs-parent="#accordionFlushExample"
          >
            <div class="accordion-body bg-light">
              <form action="../../EmpleadoControl" method="post">
                <div
                  class="
                    row
                    d-flex
                    align-items-center
                    justify-content-center
                    w-100
                  "
                >
                  <div class="col-12 col-md-7">
                    <span class="input-group-text" id="inputGroup-sizing-lg"
                      >DNI:</span
                    >
                    <input
                      name="Dni"
                      required
                      type="text"
                      class="form-control"
                      value=""
                      maxlength="8"
                      onkeyup="this.value=Numeros(this.value)"
                    />
                  </div>
                  <input
                    type="submit"
                    class="btn btn btn-danger w-75 m-3 btn-lg"
                    name="acc"
                    value="Eliminar"
                  />
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
