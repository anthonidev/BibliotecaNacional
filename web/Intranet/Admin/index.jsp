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
        <jsp:include page="./metas-head.jsp" />
        <title>Biblioteca</title>
    </head>
    <body data-bs-spy="scroll" data-bs-target="#navbar" data-bs-offset="0">
        <main class="container-fluid p-0" id="index">
            <jsp:include page="navAdmin.jsp" />
            <jsp:include page="./navbarAdmin.jsp" />
            <div class="container_section_datos container_section_datos--intranet px-3 px-lg-5">
                <div class="row mx-0 w-100">
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
            <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
        </main>
    </body>
</html>