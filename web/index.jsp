<%-- 
    Document   : index
    Created on : 17/02/2017, 10:18:37 AM
    Author     : Labing
--%>

<%@page import="vo.Profesor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="ServletProfesor" name="formulario" method="get">
            ID: <input name="id" type="text"><br>
            Nombre: <input name="nombre" type="text"><br>
            Apellido: <input name="apellido" type="text"><br>
            Extension: <input name="ext" type="text"><br>
            <input name="enviar" type="submit">
        </form>
        <%
          Profesor profesor = (Profesor)request.getAttribute("profesor");
           if(profesor != null){
        %>   
          <br>
        <table >
            <td>
               <tr>Nombre</tr>
               <tr>Apellido</tr> 
            </td>
            <td>
               <tr><%=profesor.getNombre()%></tr>
               <tr><%=profesor.getApellido()%></tr> 
        </td>
        </table>
        
        <%
           }
        %>
        
        
    </body>
</html>
