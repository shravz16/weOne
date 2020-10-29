<%-- 
    Document   : welcome
    Created on : 21 Oct, 2020, 11:38:01 PM
    Author     : super
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        <style>
            
               body{
            background-color: cyan;
        }
        h1{
            font-family: sans-serif;
        }
        p{
           

background-color: white;

width: 180px;
 height: 40px;
padding-left: 20px;
padding-top: 20px;

        }
        a {
            text-decoration: none;
        }
        </style>
    </head>
    <body>
          <h1 style="text-align: center"> Simple Mail </h1><br>
        <%
        String str=(String)session.getAttribute("uuser");
        
        
        if(request.getParameter("name")==null)
        {
            out.println("welcome "+str);
        out.println("<br> What would you like to do? <br>");
out.println("<br> <p>  <a href='./compose.jsp'>click here for compose!</a></p>");
out.println("<p>  <a href='./inbox.jsp'>click here for inbox!</a></p>");
        out.println("<p>  <a href='./sent.jsp'>click here for sent email!</a></p>");
        }
        else
        {
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String pass=request.getParameter("pass");
            
            Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tempdbdb","root","");
Statement st= con.createStatement();
int rs=st.executeUpdate("insert into users(name,email,password) values ('"+name+"','"+email+"','"+pass+"')");
try{
out.println("welcome "+name);
out.println("<br> What would you like to do? <br>");
out.println("<br> <p>  <a href='./compose.html'>click here for compose!</a></p>");
out.println("<p>  <a href='./inbox.jsp'>click here for inbox!</a></p>");
out.println("<p>  <a href='./sent.jsp'>click here for sent emails!</a></p>");
}
catch (Exception e) {
e.printStackTrace();
}
            
        }
        %>
    </body>
</html>
