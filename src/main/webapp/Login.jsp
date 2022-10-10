<%-- 
    Document   : Login
    Created on : 10 okt. 2022, 11:22:35
    Author     : benny
--%>

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
            Username:  
            <input type="text"  name="username" value=""><br/>
            Password:
            <input type="password" name="password" value=""><br/>  
            <input type="submit" value="LOGIN"><br/>  
        </form>    
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if (username != null && password != null) {
                if (username.equals("benny") && password.equals("123")) {
                    response.sendRedirect("http://localhost:8080/HI1031_Lab1/Web.jsp");
                } else {%>
        Invalid password or username
        <%   }
            }


        %>


    </body>
</html>

