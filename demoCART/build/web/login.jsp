<%-- 
    Document   : login
    Created on : Feb 16, 2022, 12:43:56 PM
    Author     : lucia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Input your information:</h1>
        <form action="MainController" method="POST">
            User ID <input type="text" name="userID" required="" placeholder="UserID"/></br>
            Password <input type="password" name="password" required="" placeholder="Password"/></br>
            <input type="submit" name="action" value="Login"/>
            <input type="reset" value="Reset"/>
        </form>
        <%
            String error = (String) request.getAttribute("ERROR");
            if (error == null) {
                error = "";
            }
        %>

        <%= error%>
    </body>
</html>
