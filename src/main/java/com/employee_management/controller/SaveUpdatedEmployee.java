package com.employee_management.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.employee_management.dao.EmployeeDAO;
import com.employee_management.dto.Employee;
import com.employee_management.dto.Manager;
@WebServlet("/saveUpdatedEmployee")
public class SaveUpdatedEmployee extends HttpServlet{
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	  
    	  HttpSession session = req.getSession();
  		Manager manager=(Manager)session.getAttribute("manager");
  		
  		if(manager!=null) {
       int eId=Integer.parseInt(req.getParameter("employeeId"));          
      String ename=req.getParameter("employeeName");
      String eEmail=req.getParameter("employeeEmail");
      long ephno=Long.parseLong(req.getParameter("employeePhoneNumber"));
      String edegignation=req.getParameter("employeeDesignation");
      double eSalary=Double.parseDouble(req.getParameter("employeeSalary"));
      int eExperience=Integer.parseInt(req.getParameter("employeeExperience"));
      
      Employee employee =new  Employee();
      employee.setEmployeeId(eId);
      employee.setEmplooyeeName(ename);
      employee.setEmployeeEmail(eEmail);
      employee.setEmployeePhoneNumber(ephno);
      employee.setEmployeeDesignation(edegignation);
      employee.setEmployeeSalary(eSalary);
      employee.setEmployeeExperience(eExperience);
      
      new EmployeeDAO().updateEmployee(employee);
      
      List<Employee> employees=new EmployeeDAO().getAllEmployees(manager);
      req.setAttribute("employees", employees);
      req.getRequestDispatcher("viewEmployee.jsp").forward(req, resp);
      
      }else {
    	  resp.sendRedirect("managerLogin.jsp");
      }
      }
}
