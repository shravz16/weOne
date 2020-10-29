<%-- 
    Document   : composer.jsp
    Created on : 22 Oct, 2020, 9:27:45 PM
    Author     : super
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sent!</title>
    </head>
    <body>
        <% String sender=(String)session.getAttribute("uuser");
           String recei=request.getParameter("userId");
           String sub=request.getParameter("subject");
           String mess=request.getParameter("message");
           
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tempdbdb","root","");
Statement st= con.createStatement();
int rs=st.executeUpdate("insert into emailtable(sender,receiver,subject,message,visited) values ('"+sender+"','"+recei+"','"+sub+"','"+mess+"',0)");
if(rs>0)
{
    out.println("Message Sent!");
}
else
{
out.println("db error!");
}
        
        %>
    </body>
</html>
