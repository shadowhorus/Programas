<%-- 
    Document   : terminar
    Created on : 19/10/2015, 06:01:52 PM
    Author     : feeltr
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="Tienda.Producto" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Tu compra</h2>
<%
ArrayList<Producto> carrito=(ArrayList<Producto>)request.getSession().getAttribute("carrito");
           if(carrito == null){
               out.println("Error de información");
           }else{
            out.println(Producto.imprimirLista(carrito));
            String dinero= (String)request.getSession().getAttribute("Dinero");
            out.println("<br>Tu cambio: "+dinero);
           }
%>
    </body>
</html>
