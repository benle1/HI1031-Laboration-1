<%-- 
    Document   : ShoppingCart
    Created on : 3 okt. 2022, 12:23:31
    Author     : benny
--%>

<%@page import="UI.ShoppingCart"%>
<%@page import="UI.ItemInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome to the shopping cart</h1>
        <%ShoppingCart cart  = (ShoppingCart) session.getAttribute("cart");
        out.println(cart.toString());%>
    </body>
</html>

