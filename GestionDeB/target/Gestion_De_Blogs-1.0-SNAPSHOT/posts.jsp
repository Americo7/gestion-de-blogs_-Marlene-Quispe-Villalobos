<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Post"%>
<%
    List<Post> posts = (List<Post>)request.getAttribute("posts");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blog De Tecnología</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #ffe6f0;
                color: #333;
                margin: 0;
                padding: 20px;
            }
            h1 {
                color: #ff66b2;
            }
            p a {
                color: #ff66b2;
                text-decoration: none;
                font-weight: bold;
                padding: 10px 15px;
                background-color: #fff0f5;
                border-radius: 5px;
                border: 2px solid #ff66b2;
            }
            p a:hover {
                background-color: #ff66b2;
                color: white;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }
            th, td {
                padding: 10px;
                text-align: left;
                border-bottom: 1px solid #ff66b2;
            }
            th {
                background-color: #ff66b2;
                color: white;
            }
            tr:nth-child(even) {
                background-color: #fff0f5;
            }
            a {
                color: #ff66b2;
                text-decoration: none;
            }
            a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <h1>BLOG DE TECNOLOGÍA</h1>
        <p><a href="PostController?action=add">Nuevo</a></p>
        <table>
            <tr>
                <th>Id</th>
                <th>Fecha</th>
                <th>Título</th>
                <th>Contenido</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <c:forEach var="item" items="${posts}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.fecha}</td>
                    <td>${item.titulo}</td>
                    <td>${item.contenido}</td>
                    <td><a href="PostController?action=edit&id=${item.id}">Editar</a></td>
                    <td><a href="PostController?action=delete&id=${item.id}">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
