<%@page import="com.employee_management.dto.Manager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>
</head>
<body>
<style>

body{
position:relative;
background-image: linear-gradient(to right, rgba(0,0,0,0.5), rgba(0,0,0,1)),url("a1.jpg");
background-repeat: no-repeat;
background-position: centre centre;
background-size: 100% 100%;
background-attachment: fixed;
}
.form{
margin-top:6%;
background-color:#e7e4e4d1;
  width: 45%;
  height: 250px;
  background: linear-gradient(to top,rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%));
  position: absolute;
  top:26px;
  left:380px;
  border-radius: 10px;
  padding: 25px;
  text-align: centre;
}
.form h1{
font-size: 54px;
font-family:initial;
margin-left: 165px;
padding-bottom: -14px;
}
.form h3{

margin-left:185px;
padding: 25px;
}

.form a{
text-decoration: none;
margin-left: 40px;

}
.btn{
margin-left: 162px;

}
.btm{
border: 1px solid black;
border-radius: 7px;
padding:4px 7px;
background-color: #094a88;
color: #fff;
transition: 0.5s ease;
}
.btm:hover{
color:#094a88;
background-color: #fff;
}


</style>

 <%	Manager manager=(Manager)session.getAttribute("manager");
	
	if(manager!=null) {
   %>
   <div class="form">
<h1>Welcome Manager</h1>
 <h3>You can manage employee here !</h3>
 <div class="btn">
 <a class="btm" href="saveEmployee.jsp">save Employee</a>
 <a class="btm" href="viewEmployee">View Employees</a>
 </div>
 <% }else{
	  response.sendRedirect("managerLogin.jsp");
  }
  %>
</body>
</html>