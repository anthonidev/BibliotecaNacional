<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- barra-busqueda -->
<div class="container-fluid p-0 position-sticky top-0 z-index container__barra--busqueda">
    <nav class="px-3 navbar navbar-light bg-white shadow-sm">
        <a class="navbar-brand d-lg-none" href="#">
            <img src="./img/logtipo.svg" width="67" alt="" />
        </a>
        <form class="form d-flex flex-shrink-0 position-relative form-busqueda">
            <input
                class="form-control mr-sm-2 rounded-pill p-3 input-busqueda"
                type="search"
                placeholder="¿Qué estas buscando?"
                aria-label="Search"
                />
            <button
                class="
                btn-busqueda
                position-absolute
                rounded-pill
                btn btn-primary
                m-0
                h-min
                "
                type="submit">
                <i class="d-sm-none d-flex pt-1 pb-1 fas fa-search fs-5 text-dark"></i>

                <span class="d-none d-sm-block"> Buscar </span>
            </button>
        </form>
    </nav>
</div>
<!-- /barra-busqueda -->
