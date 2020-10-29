<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Simple Mail </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        form {
            padding-left: 40%;
            background-color: cyan;
            font-family: serif;
            padding-top: 5%;
            
            
            
        }
        body{
            background-color: cyan;
        }
        h1{
            font-family: sans-serif;
        }
        #wrong{
            padding-left: 40%;
            color: red;
            text-decoration: saddlebrown;
            text-height: 4%;
        }
        
        </style>
    </head>
    <body>
        <h1 style="text-align: center"> Simple Mail </h1><br>
        <form  action="LoginTrue.jsp" method="post" >
            Email: <input type="text" name="user" value="" ><br><br>
            Password: <input type="password" name="pass"><br><br>
            <input type="submit" name="sum" value="Login">
        </form>
        
        <h2 id="wrong">Invalid Credentials</h2>
        <p style="padding-left: 40%;">New User??</p>
        <p style="padding-left: 40%;">  <a href="./register.html">click here!</a></p>
    </body>
</html>
