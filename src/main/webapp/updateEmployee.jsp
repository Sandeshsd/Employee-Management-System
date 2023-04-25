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
<% Employee employee= (Employee)request.getAttribute("employees"); %>

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
<input type="submit" value="update">




</form>


</body>
</html>