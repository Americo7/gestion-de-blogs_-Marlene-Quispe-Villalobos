<%@page import="com.emergentes.modelo.Post"%>
<%
    Post post = (Post)request.getAttribute("post");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NUEVO REGISTRO</title>
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
            form {
                background-color: #fff0f5;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            table {
                width: 100%;
                border-collapse: collapse;
            }
            td {
                padding: 10px;
            }
            input[type="text"],
            input[type="date"],
            textarea {
                width: calc(100% - 22px);
                padding: 10px;
                border: 1px solid #ff66b2;
                border-radius: 5px;
            }
            input[type="submit"] {
                background-color: #ff66b2;
                color: white;
                border: none;
                padding: 10px 20px;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
            }
            input[type="submit"]:hover {
                background-color: #e0559f;
            }
        </style>
    </head>
    <body>
        <h1>Nuevo entrada</h1>
        <form action="PostController" method="post">
            <input type="hidden" name="id" value="${post.id}" />
            <table>
                <tr>
                    <td>Fecha</td>
                    <td><input type="date" name="fecha" value="${post.fecha}" /></td>
                </tr>
                <tr>
                    <td>Título</td>
                    <td><input type="text" name="titulo" value="${post.titulo}" /></td>
                </tr>
                <tr>
                    <td>Contenido</td>
                    <td>
                        <textarea name="contenido" rows="3" cols="50">${post.contenido}</textarea>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Guardar" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
