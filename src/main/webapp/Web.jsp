<%@page import="UI.ShoppingCart"%>
<%@page import="UI.ItemInfo"%>
<%@page import="BO.ItemHandler"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BO.Item"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style>
            #myform1{
                position:absolute;
                float:right;
                top: 60px;
                right: 16px;
            }

            .topRight{
                position: absolute;
                top: 8px;
                right: 16px;
                font-size: 18px;
            }
        </style>
    </head>
    <body>  
        <%
            ArrayList<ItemInfo> items = new ArrayList<>();
            ShoppingCart shoppingCart = new ShoppingCart();
        %>

        <h1>Search The Catalog</h1>
        <form id="myform1" action="ShoppingCart.jsp"> 
            <input type="submit" value="Shopping cart"><br/>  
        </form> 

        <form action="Web.jsp" method ="post"> 
            <input type="text" placeholder="Search.." name="search">
            <input type="submit" value="Search"><br/>  
        </form>    

        <%
            if (request.getParameter("search") != null) {
                items = ItemHandler.getItems(request.getParameter("search"));
                session.setAttribute("searchedItems", items);
            }

            items = (ArrayList) session.getAttribute("searchedItems");

            if (items != null) {
        %>

        <table> 
            <tr><td>Name</td><td>Price</td><td>Description</td></tr>

            <% for (int i = 0; i < items.size(); i++) {%>
            <tr>
                <td><%=items.get(i).getName()%></td>
                <td><%=items.get(i).getPrice()%></td>
                <td><%=items.get(i).getDescription()%></td>
                <td>
                    <form action="Web.jsp" method ="post">
                        <button type ="submit" name="button" value=<%=i%>>Add to cart</button>
                    </form>
                </td>
            </tr>
                    <%  } %>
        </table>
        <% }
            String buttonId = request.getParameter("button");

            if (buttonId != null) {
                shoppingCart.addToCart(items.get(Integer.parseInt(buttonId)));
                session.setAttribute("cart", shoppingCart);
            }
        %>

        <div class = "topRight">
            <p>
                <% if (shoppingCart.getShoppingCart().isEmpty()) {%>
                Empty cart
                <% } else {%>
                Number of items in cart: <%=shoppingCart.getShoppingCart().size()%>
                <%}%>
            </p>
        </div>
    </body>
</html>
