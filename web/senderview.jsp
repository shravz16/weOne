<%-- 
    Document   : fullMail
    Created on : 23 Oct, 2020, 12:12:32 PM
    Author     : super
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The mail</title>
    </head>
    <body>
        <%
            String val=request.getParameter("id");
             Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tempdbdb","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from emailtable where emailId='"+val+"'");
if(rs.next())
{
out.println("<p>"+rs.getString("sender")+""+val+"</p>");
out.println("<p>"+rs.getString("subject")+"</p>");
out.println("<p>"+rs.getString("message")+"</p>");


}
            

            %>
    </body>
</html>
