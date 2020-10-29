<%-- 
    Document   : LoginTrue
    Created on : 21 Oct, 2020, 3:03:31 PM
    Author     : super
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
            background-color: cyan;
        }
        h1{
            font-family: sans-serif;
        }
        </style>>
    </head>
    <body>
         <h1 style="text-align: center"> Simple Mail </h1><br>
        <% 
            String userid=request.getParameter("user");

String password=request.getParameter("pass");
try{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tempdbdb","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from users where email='"+userid+"' and password='"+password+"'");


if(rs.next())
{
session.setAttribute("uuser", userid);

response.sendRedirect("welcome.jsp");
}
else{
response.sendRedirect("wrongindex.jsp");
}
}
catch (Exception e) {
e.printStackTrace();
}
        %>
    </body>
</html>
