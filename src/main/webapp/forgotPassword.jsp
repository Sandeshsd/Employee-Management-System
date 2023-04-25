<%@page import="java.util.List"%>
<%@page import="com.employee_management.dto.Manager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>
body{
background-image: linear-gradient(to right, rgba(0,0,0,0.5), rgba(0,0,0,1)),url("a2.jpg");
background-repeat: no-repeat;
background-position: centre centre;
background-size: 100% 100%;
background-attachment: fixed;
}
.form{
background-color:#fbf2f2e0;
border:0.5px solid black;
width:300px;
height:350px;
margin-top:10%;
margin-left: 42%; 
padding:30px;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
transition:0.5s ease;
}
.form:hover{
background-color: #fff;
}
.form h1{
margin:8px;
padding:25px;
font-size:210%;
}

.form input{
width:292px;
height:30px;
margin-top: 10px;
}
.btn{
background-color: #10c815;
color: #fff;
font-size: 15px;
font-weight: bold;
border: none;
margin:4px;
transition:1s ease;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.btn:hover{
background-color: #10c815;
color: #fff;
}



</style>
<div class="form">
      <h1>Reset Password</h1>
      <form action="forgot" method="post">   
      <input type="email" placeholder="enter email" name="managerEmail"><br><br>
      <input type="password" placeholder="Enter password" name="managerPassword"><br><br>
      <input type="password" placeholder="ReEnter password" name="ManagerPassword"><br><br>
      <input class="btn" type="submit" value="Reset">
      </form>
      </div>
</body>
</html>