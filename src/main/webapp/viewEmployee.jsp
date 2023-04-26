<%@page import="com.employee_management.dto.Manager"%>
<%@page import="com.employee_management.dto.Employee"%>
<%@page import="java.util.List"%>
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
.table{
margin: 8%;
}
.home{
text-decoration: none;
background-color: black;
color: #fff;
border-radius: 4px;
padding:5px 8px;
margin: 50px;
}
.table h2{
font-size: 40px;
}
.table th{
padding:1px 10px;
background-color: #094a88;
color: #fff;
border-top:none ;
border-radius:4px;
border-left:2px  solid #fff;
border-right:none ;
}
.table a{
text-decoration:none;
background-color: #094a88;
color:#fff ;
border-radius: 4px;
padding:5px 8px;
margin: 50px;
transition:0.5s ease;
}
a:hover{
text-decoration: none;
background-color: #fff;
color:#094a88 ;
border-radius: 5px;
}
.table td{
text-align: center;
}


</style>

   <% 	Manager manager=(Manager)session.getAttribute("manager");
	
	if(manager!=null) {
   
   List<Employee> employees = (List)(request.getAttribute("employees")) ; %>
   
   <a class="home" href="dashboard.jsp">Home</a>
<div  class="table">  
   <h1>Employee Data</h1>

<table  cellpadding="10px" cellspacing="">
  <thead>
      <tr>
         <th>Employee ID</th> 
         <th>Employee Name</th> 
         <th>Employee Email</th> 
         <th>Employee Phone number</th> 
         <th>Employee Designation</th> 
         <th>Employee Experience</th> 
         <th>Employee Salary</th> 
         <th>Update Employee</th> 
         <th>Delete Employee</th> 
      </tr>
  </thead>
   <tbody>
  <% for(Employee e:employees){ %>
         <tr>
         <td><%= e.getEmployeeId() %></td>
         <td><%= e.getEmplooyeeName() %></td>
         <td><%= e.getEmployeeEmail() %></td>
         <td><%= e.getEmployeePhoneNumber() %></td>
         <td><%= e.getEmployeeDesignation() %></td>
         <td><%= e.getEmployeeExperience() %></td>
         <td><%= e.getEmployeeSalary() %></td>
         <td><a href="updateEmployee?employeeId=<%= e.getEmployeeId() %>">update</a></td>
         <td><a href="deleteEmployee?employeeId=<%= e.getEmployeeId() %>">delete</a></td> 
         </tr>
  </tbody>
  <% } %>
  
  
</table>
</div> 
<% }else{
	  response.sendRedirect("managerLogin.jsp");
  }
  %>
</body>
</html>