<%-- 
    Document   : iser
    Created on : Feb 16, 2022, 1:41:59 PM
    Author     : lucia
--%>

<%@page import="tungnt.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <body>
        <h1>Chao' :</h1>
        <% 
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if(loginUser==null){
                loginUser = new UserDTO();
            }
        %>
        User ID :<%= loginUser.getUserID() %></br>
        Full Name :<%= loginUser.getFullName() %></br>
        Role ID :<%= loginUser.getroleID() %></br>
        Password :<%= "***" %></br>
    </body>
</html>
