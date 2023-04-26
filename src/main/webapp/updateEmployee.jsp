<%@page import="com.employee_management.dto.Employee"%>
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
height:500px;
margin-top:5%;
margin-left: 42%; 
padding:30px;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
transition:0.5s ease;
}
.form:hover{
background-color: #fff;
}
.form h3{
margin:15px;
padding:5px;
font-size:200%;
}
.form input{
width:292px;
height:30px;
border-bottom: 2px solid black;
border-left: none;
border-right: none;
border-top: none; 
border-radius: 7px;
}
.form select{
width:300px;
height:30px;
border-bottom: 2px solid black;
border-left: none;
border-right: none;
border-top: none; 
border-radius: 7px;
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

<% Employee employee= (Employee)request.getAttribute("employees"); %>

<div class="form">
<h3>Update Employee</h3>
<form action="saveUpdatedEmployee" method="post">

<input type="text" name="employeeId"  readonly="readonly" value="<%= employee.getEmployeeId() %>"><br><br>
<input type="text" name="employeename" placeholder="enter employee name" value="<%= employee.getEmplooyeeName() %>"><br><br>
<input type="email" placeholder="enter Employee email" name="employeeEmail" value="<%= employee.getEmployeeEmail() %>"><br><br>
<input type="text" placeholder="enter Employee Phone number" name="employeePhoneNumber" value="<%= employee.getEmployeePhoneNumber() %>"><br><br>
<input type="text" placeholder="enter employee salary" name="employeeSalary" value="<%= employee.getEmployeeSalary() %>"><br><br>
<select name="employeeDesignation" value="<%= employee.getEmployeeDesignation() %>">
  <option>Frontend_developer</option>
  <option>Backend_developer</option>
  <option>Full_stack_developer</option>
  <option>customer_support</option>
  <option>Technical-support</option>
  <option>Test-engineer</option>
  <option>QA_engineer</option>
</select><br><br>
<input type="text" placeholder="enter employee experience" name="employeeExperience" value="<%= employee.getEmployeeExperience() %>"><br><br>
<input class="btn" type="submit" value="update">




</form>

</div>
</body>
</html>