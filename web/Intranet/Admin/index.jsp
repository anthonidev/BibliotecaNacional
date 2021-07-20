<%@page import="persistencia.EmpleadoDaoImp"%>
<%@page import="persistencia.EmpleadoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>

<%
    EmpleadoDao empDao=new EmpleadoDaoImp();
    Gson gsonObj = new Gson();
    Map<Object, Object> map = null;
    List<Map<Object, Object>> list = new ArrayList<Map<Object, Object>>();
    map = new HashMap<Object, Object>();
    map.put("label", "admin");
    map.put("y", empDao.admin().size()-1);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "Almacen");
    map.put("y", empDao.almacen().size()-1);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "Recursos Humanos");
    map.put("y", empDao.rrhh().size()-1);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "Jefe de Control");
    map.put("y", empDao.jefe().size()-1);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "Recepcionista");
    map.put("y", empDao.recepcionista().size()-1);
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
                </div>
            </div>
            <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
        </main>
    </body>
</html>