<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">   
  <link rel="stylesheet" type="text/css" href="D:\Project\Student Record Management\WebContent\style.css">  
  <style>.login-box{
    height: 400px;
   
}</style>
</head>
<body>
    <form method ="post" action="Studentloginservlet">
    <div class="login-box">
    <img src="user.png" class="avatar">
        <h1>Student Login</h1>
            <p>Username</p>
            <input type="text" name="username" placeholder="Enter Username" required="required">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password" required="required">
            <input type="submit" name="submit" value="Login">
            <center><h1><a href="index.html">Back</a></h1></center>
     </div>   
      </form>
    </body>
</html>
