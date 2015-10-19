<%-- 
    Document   : compras
    Created on : 18/10/2015, 03:04:59 PM
    Author     : feeltr
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="Tienda.Producto" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compras</title>
    </head>
    <body>
        <h1>Bienvenido a la tienda de compras</h1>
        <h2> Menu</h2>
        <%
        String dinero;
        Integer money= 1;
        String compra;
        String borra;
        
        String user= (String)request.getSession().getAttribute("User");
        if(user==null){
        user=request.getParameter("User");
        }
        String rfc= (String)request.getSession().getAttribute("RFC");
        if(user==null){
        rfc= request.getParameter("RFC");
        }
        dinero= (String)request.getSession().getAttribute("Dinero");
        if(dinero==null){
        dinero= request.getParameter("Dinero");
        if(dinero!=null){
        money=Integer.parseInt(dinero);
        }else{
        money = -1;
        }
        
        }else{
        money=Integer.parseInt(dinero);
        }
       
        if(money>=0 && user!=null){
            ArrayList<Producto> lista=(ArrayList<Producto>)request.getSession().getAttribute("lista");
           if(lista == null){
            lista= new ArrayList<Producto>();
            Producto.creaLista(lista);
            request.getSession().setAttribute("lista", lista);
            out.println( Producto.imprimirLista(lista));
           }else{
           out.println( Producto.imprimirLista(lista));
           }
            ArrayList<Producto> carrito=(ArrayList<Producto>)request.getSession().getAttribute("carrito");
           if(carrito == null){
            carrito= new ArrayList<Producto>();
            request.getSession().setAttribute("carrito", carrito);
           }else{
           compra= request.getParameter("compra");
           if (compra!=null){
               for(int i=0; i<lista.size();i++){
               if(compra.equals(lista.get(i).getNombre())){
                   if(lista.get(i).getPrecio()<money){
                   Producto.añadirCompra(lista.get(i), carrito);
                   money=money-lista.get(i).getPrecio();
                   }
                   break;
               }else{}
               }
            }
           borra= request.getParameter("borra");
           if(borra!=null){
           for(int i=0; i<carrito.size();i++){
               if(borra.equals(carrito.get(i).getNombre())){
                   money=money+carrito.get(i).getPrecio();
                   carrito.remove(i);
                   break;
               }else{}
               }
           }

           request.getSession().setAttribute("carrito", carrito);
           }
                
        
        %>
        <div>
            Añadir compra
           <form action="compras.jsp" method="POST">
               <%
                out.println(Producto.imprimirOpciones(lista,"compra"));
                request.getSession().setAttribute("User",user);
                dinero=money.toString();
                request.getSession().setAttribute("Dinero",dinero);
        
               %>
               <input type="submit" value="agregar">
           </form> 
               <br> Borrar compra
               <form action="compras.jsp" method="POST">
                   <%
                   out.println(Producto.imprimirOpciones(carrito,"borra"));
                   %>
                   <input type="submit" value="borrar">
               </form>
  <%
                
            out.println("<div>");
            out.println("<h2> Tu carrito: dinero restante "+money+" </h2>");
           out.println(Producto.imprimirLista(carrito));
           out.println("</div>");
        }else{
            out.println("Error de Datos");
        }
  
  %>   
  <form action="terminar.jsp" method="GET">
      <input type="submit" value="enviar">
  </form> 
        </div>
    </body>
</html>
