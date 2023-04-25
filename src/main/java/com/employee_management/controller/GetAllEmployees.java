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
@WebServlet("/viewEmployee")
public class GetAllEmployees extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  
		
		HttpSession session = req.getSession();
		Manager manager=(Manager)session.getAttribute("manager");
		
		if(manager!=null) {
            List<Employee> employees=new EmployeeDAO().getAllEmployees(manager);
            req.setAttribute("employees", employees);
            
            req.getRequestDispatcher("viewEmployee.jsp").forward(req, resp);
	
	}else {
		resp.sendRedirect("managerLogin.jsp");
	}
	}
}
