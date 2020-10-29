<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<html>
    <head>
        <title>Compose</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            form {
           
            background-color: cyan;
            font-family: serif;
            padding-top: 1%;
            padding-left: 5%;
            
            
            
        }
        body{
          background-color: cyan;
            font-family: sans-serif;
        }
        h1{
            font-family: sans-serif;
        }
        input[type=submit] {
  width: 10%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
            </style>
    </head>
    <body>
         <h1 style="text-align: center"> Simple Mail </h1><br>
        
        <form action="composer.jsp" method="post" name="formda" id="formda">
            <p>To: </p> <input type="text" id="userId" name="userId"  required ><span id="val"></span>
            <p>Subject: </p><input type="text" name="subject" value="" onkeydown="return check()">
            
            <p>Compose your message:</p><br>
            <textarea name="message" rows="20" cols="75" onkeydown="return check()" required> </textarea>
            
            <br><input type="submit" id="sub" value="send!" onsubmit="return check()">
        </form>
     
         <script type="text/javascript">
             function check()
             {
                 var form=document.getElementById("formda");
                 var get=document.getElementById("userId").value;
                 var put=document.getElementById("val");
                 var domain= "<%=(String)session.getAttribute("uuser") %>";
                 var domain1=get.substring(get.lastIndexOf('@')+1,get.lastIndexOf("."));
                 var domain2=domain.substring(domain.lastIndexOf('@')+1,domain.lastIndexOf("."));;
                 if(domain1!=domain2)
                 {
                     val.innerHTML="You cannot send email to different organization"
                     document.getElementById("sub").disabled=true;
                     console.log("yes false");
                    return false;
                 }
                 else
                 {
                     val.innerHTML="";
                     console.log("yes true");
                     return true;
                 }
             }
             </script>
    </body>
</html>
