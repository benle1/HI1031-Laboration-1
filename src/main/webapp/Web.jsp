<%-- 
    Document   : Test
    Created on : 3 okt. 2022, 11:47:24
    Author     : benny
--%>

<%@page import="UI.ShoppingCart"%>
<%@page import="UI.ItemInfo"%>
<%@page import="BO.ItemHandler"%>
<%@page import="DB.ItemDB"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DB.DBManager"%>
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
            #myform1{float:right;}
        </style>
    </head>
    <body>  
        <h1>Hello World</h1>
        <form id="myform1" action="ShoppingCart.jsp"> 
            <input type="submit" value="Shopping cart"><br/>  
        </form> 

        <form action="Web.jsp" method ="post"> 
            <input type="text" placeholder="Search.." name="search">
            <input type="submit" value="Search"><br/>  
        </form>     

        <%
            ArrayList<ItemInfo> items = new ArrayList<>();
            ShoppingCart shoppingCart = new ShoppingCart();

            if (request.getParameter("search") != null) {
                items = ItemHandler.getItems(request.getParameter("search"));
                session.setAttribute("searchedItems", items);
                // session.setAttribute("input", request.getParameter("search"));
            }

            // String input = (String) session.getAttribute("input");
            items = (ArrayList) session.getAttribute("searchedItems");
            //out.println("Search: " + input);

            if (items != null) {

                //  items = ItemHandler.getItems(input);
                // out.println("item size: " + items.size() + "<br/>");
                //   out.println("Name Price Description <br/>");
        %>

        <table> <tr><td>Name</td><td>Price</td><td>Description</td></tr>

            <% for (int i = 0; i < items.size(); i++) {%>
            <tr><td><%=items.get(i).getName()%></td><td><%=items.get(i).getPrice()%></td><td><%=items.get(i).getDescription()%></td>
                <td> <form action="Web.jsp" method ="post">
                        <button type ="submit" name="button" value=<%=i%>>Add to cart</button>
                    </form></td></tr>
            <%  } %>
        </table>
        <% }

            String buttonId = request.getParameter("button");

            if (buttonId != null) {
                shoppingCart.addToCart(items.get(Integer.parseInt(buttonId)));
                session.setAttribute("cart", shoppingCart);
            }

            // out.println(shoppingCart.toString());
%>


    </body>
</html>
