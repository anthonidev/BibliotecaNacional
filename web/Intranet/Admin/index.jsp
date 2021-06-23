<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>

<%
    Gson gsonObj = new Gson();
    Map<Object, Object> map = null;
    List<Map<Object, Object>> list = new ArrayList<Map<Object, Object>>();
    map = new HashMap<Object, Object>();
    map.put("label", "Work");
    map.put("y", 44);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "Gym");
    map.put("y", 9);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "Leisure");
    map.put("y", 8);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "Routines");
    map.put("y", 8);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "Nap");
    map.put("y", 2);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "Sleep");
    map.put("y", 29);
    list.add(map);
    String dataPoints = gsonObj.toJson(list);
%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../css/style.css">
        <script src="https://kit.fontawesome.com/50872a9b90.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <title>Biblioteca</title>
    </head>
    <body class="">
        <main class="container-fluid p-0">
            <jsp:include page="navAdmin.jsp" />
            <% Object[] inicio=(Object[]) session.getAttribute("filaInicio"); %>
            <div class="d-flex" style="height: 94vh">
                <div class="col-1 py-4 d-flex shadow-sm p-3 mb-5 bg-primary rounded">
                    <ul class="navbar-nav d-flex justify-content-between me-auto mb-2 mb-lg-0">
                        <li class="nav-item shadow-sm p-3 bg-body rounded">
                            <a class="nav-link active text-dark text-center" aria-current="page" href="empleados.jsp"><i
                                    class="fas fa-users-cog w-100 h3 text-center"></i>Empleados</a>
                        </li>
                        <li class="nav-item shadow-sm p-3 bg-body rounded">
                            <form action="../../ClienteControl" method="post">
                                <i class="fas fa-user-tag w-100 h3 text-center"></i>
                                <input class="nav-link active text-dark text-center border-0 bg-body m-auto p-2" type="submit" name="acc" value="Clientes" >
                            </form>
                        </li>
                        <li class="nav-item shadow-sm p-3 bg-body rounded">
                            <form action="../../PedidoControl" method="post">
                                <i class="fas fa-truck-loading w-100 h3 text-center"></i>
                                <input class="nav-link active text-dark text-center border-0 bg-body m-auto p-2" type="submit" name="acc" value="Pedidos" >
                            </form>
                        </li>
                        <li class="nav-item shadow-sm p-3 bg-body rounded">
                            <a class="nav-link active text-dark text-center" aria-current="page" href="libros.jsp"><i
                                    class="fas fa-book-open w-100 h3 text-center"></i>Libros</a>
                        </li>
                        <li class="nav-item shadow-sm p-3 bg-body rounded">
                            <form action="../../BoletaControl" method="post">
                                <i class="fas fa-clipboard-list w-100 h3 text-center"></i>
                                <input class="nav-link active text-dark text-center border-0 bg-body m-auto p-2" type="submit" name="acc" value="Boletas" >
                            </form>
                        </li>
                    </ul>
                </div>
                <div class="col-8 m-auto ">
                    <div class="row">
                        <div class="col-12 my-3 shadow d-flex bg-secondary justify-content-center">
                            <ul class="mb-lg-0">
                                <div class="p-3 bg-secondary bg-gradient">
                                    <h1 class="text-light h4 text-uppercase"><i class="fas fa-user-tie"></i> Cargo: <%= inicio[2] %></h1>
                                </div>
                            </ul>
                        </div>
                        <div class="col-12 shadow p-3 bg-body rounded ">
                            <script type="text/javascript">
                                window.onload = function () {
                                    var chart = new CanvasJS.Chart("chartContainer", {
                                        theme: "light2", // "light1", "dark1", "dark2"
                                        exportEnabled: true,
                                        animationEnabled: true,
                                        title: {
                                            text: "Typical Day"
                                        },
                                        data: [{
                                                type: "pie",
                                                toolTipContent: "<b>{label}</b>: {y}%",
                                                indexLabelFontSize: 16,
                                                indexLabel: "{label} - {y}%",
                                                dataPoints: <%out.print(dataPoints);%>
                                            }]
                                    });
                                    chart.render();
                                }
                            </script>
                            <div id="chartContainer" style="height: 370px; width: 100%;"></div>
                        </div>
                        <div class="col-12 shadow p-3 bg-body rounded my-5">
                            <div class="card" style="width: 18rem;">
                                <img src="..." class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    <a href="#" class="btn btn-primary">Go somewhere</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
        </main>
    </body>
</html>