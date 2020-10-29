<%-- 
    Document   : inbox
    Created on : 22 Oct, 2020, 10:09:31 PM
    Author     : super
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inbox</title>
        <style>
            body{
                padding: 5%;
            }
            td
{
    padding: 15px;
}
.center {
  margin-left: auto;
  margin-right: auto;
}
.unread{
    color: black;
}
.read{
    color: grey;
}
a:hover {
  color: red;
  cursor: pointer;
}

            h1{
            font-family: sans-serif;
        }
        </style>
    </head>
    <body>
        <h1 style="text-align: center"> Simple Mail </h1><br>
        <% 
            
            String curr=(String)session.getAttribute("uuser");
        Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tempdbdb","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from emailtable where receiver='"+curr+"' ORDER BY emailId DESC");
%>
<table class="center">
<th>From</th>
<th>Subject</th>
<th>Text</th>
        <%
while(rs.next())
{ 
    if(rs.getInt("visited")==0){
        out.println("<tr><td> <form id='"+rs.getString("emailId")+"' method='post' action='fullMail.jsp' class='unread'>");
    %>  
    
 <%   
    out.println("<input type='hidden' name='id' value='"+rs.getString("emailId")+"' ></form>");%>
    <a class="unread" onclick="document.getElementById(<%=rs.getString("emailId")%>).submit();"> <%
        
        out.println(rs.getString("sender")+" "+rs.getString("emailId"));
       
        %></a></td>
   <td> <form id='myform' method='post' action='fullMail.jsp' class="unread">
    
 <%   
    out.println("<input type='hidden' name='id' value='"+rs.getString("emailId")+"' ></form>");%>
    <a class="unread" onclick="document.getElementById('myform').submit();"> <%
        
        out.println(rs.getString("subject"));
       
        %></a></td>
   <td> <form id='myform' method='post' action='fullMail.jsp' class="unread">
    
 <%   
    out.println("<input type='hidden' name='id' value='"+rs.getString("emailId")+"' ></form>");%>
    <a class="unread" onclick="document.getElementById('myform').submit();"> <%
        
        out.println(rs.getString("message"));
       
%></a></td></tr>
   <%
       }
    else
    {
 out.println("<tr><td> <form id='myform"+rs.getString("emailId")+"' method='post' action='fullMail.jsp' class='unread'>");
  %>  
    
 <%   
    out.println("<input type='hidden' name='id' value='"+rs.getString("emailId")+"' ></form>");%>
    <a class="read" onclick="document.getElementById('myform').submit();"> <%
        
        out.println(rs.getString("sender"));
       
        %></a></td>
   <td> <form id='myform' method='post' action='fullMail.jsp' class="read">
    
 <%   
    out.println("<input type='hidden' name='id' value='"+rs.getString("emailId")+"' ></form>");%>
    <a class="read" onclick="document.getElementById('myform').submit();"> <%
        
        out.println(rs.getString("subject"));
       
        %></a></td>
   <td> <form id='myform' method='post' action='fullMail.jsp' class="read">
    
 <%   
    out.println("<input type='hidden' name='id' value='"+rs.getString("emailId")+"' ></form>");%>
    <a class="read" onclick="document.getElementById('myform').submit();"> <%
        
        out.println(rs.getString("message"));
       
%></a></td></tr><%
            
            }
}

        
%></table>
    </body>
</html>
