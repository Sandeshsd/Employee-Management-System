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
 <% 	Manager manager=(Manager)session.getAttribute("manager");
	
	if(manager!=null) {
    %>

<form action="save" method="post">
<input type="text" placeholder="enter Employee name" name="employeeName"><br><br>
<input type="email" placeholder="enter Employee email" name="employeeEmail"><br><br>
<input type="text" placeholder="enter Employee Phone number" name="employeePhoneNumber"><br><br>
<select name="employeeDesignation" >
  <option>Frontend_developer</option>
  <option>Backend_developer</option>
  <option>Full_stack_developer</option>
  <option>customer_support</option>
  <option>Technical-support</option>
  <option>Test-engineer</option>
  <option>QA_engineer</option>
</select><br><br>
<input type="text" placeholder="enter employee experience" name="employeeExperience"><br><br>
<input type="submit" value="save">


</form>

<% }else{
	  response.sendRedirect("managerLogin.jsp");
  }
  %>
</body>
</html>