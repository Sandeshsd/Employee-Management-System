package com.employee_management.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.employee_management.dao.EmployeeDAO;
import com.employee_management.dto.Employee;
@WebServlet("/updateEmployee")
public class UpdateEmployee extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String employeeId=req.getParameter("employeeId");
		Employee employees=new EmployeeDAO().getEmployeeById(Integer.parseInt(employeeId));
		
		req.setAttribute("employees", employees);
		
		req.getRequestDispatcher("updateEmployee.jsp").forward(req, resp);
		
		
	}

}
