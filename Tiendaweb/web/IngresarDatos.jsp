<%-- 
    Document   : IngresarDatos
    Created on : 18/10/2015, 02:46:37 PM
    Author     : feeltr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Usuario</title>
    </head>
    <body>
        <h1>Bienvenido a la pizzeria Elenimus!!</h1>
        <h2>Ingresa tus datos de usuario:</h2>
        <form action="compras.jsp" method="POST">
            Ingresa tu nombre de usuario: <br>
            <input type="text" name="User"><br>
            Ingresa tu RFC: <br>
            <input type="text" name="RFC"><br>
            Ingresa la cantidad de dinero que posees: <br>
            <input type="text" name="Dinero"><br>
            <input type="submit" name="Entrar de compras">            
        </form>
    </body>
</html>
