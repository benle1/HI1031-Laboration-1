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
        <%ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");%>
        <table> 
            <tr><td>Name</td><td>Price</td><td>Description</td></tr>

            <% for (int i = 0; i < cart.getShoppingCart().size(); i++) {%>
            <tr>
                <td><%=cart.getShoppingCart().get(i).getName()%></td>
                <td><%=cart.getShoppingCart().get(i).getPrice()%></td>
                <td><%=cart.getShoppingCart().get(i).getDescription()%></td>
            </tr>
            <%  }%>
        </table>
    </body>
</html>

