<%-- 
    Document   : Login
    Created on : 10 okt. 2022, 11:22:35
    Author     : benny
--%>

<%@page import="UI.UserInfo"%>
<%@page import="BO.UserHandler"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>



        <form action="Login.jsp" method ="post"> 
            <table>
                <tr><td>Username:</td><td><input type="text"  name="username" value=""></td></tr>
                <tr><td> Password:</td><td><input type="password" name="password" value=""></td></tr>
                <tr><td><input type="submit" value="LOGIN"></td><td>

            </table>

        </form>    
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if (username != null && password != null) {
                UserInfo user = UserHandler.getUser(username);

                if (username.equals(user.getUserName()) && password.equals(user.getPassword())) {
                    response.sendRedirect("Web.jsp");
                } else {%>
        Invalid password or username
        <%   }
            }
        %>


    </body>
</html>

