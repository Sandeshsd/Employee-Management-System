package com.employee_management.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.employee_management.dao.EmployeeDAO;
import com.employee_management.dao.ManagerDAO;
import com.employee_management.dto.Employee;
import com.employee_management.dto.Manager;

public class SaveEmployee extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		Manager manager=(Manager)session.getAttribute("manager");
		
		if(manager!=null) {
		String ename=req.getParameter("employeeName");
		String eEmail=req.getParameter("employeeEmail");
		long ephno=Long.parseLong(req.getParameter("employeePhoneNumber"));
		String eDesignation=req.getParameter("employeeDesignation");
		int Experience=Integer.parseInt(req.getParameter("employeeExperience"));
		
		ServletContext context=getServletContext();
		double increament =Double.parseDouble(context.getInitParameter("Increament"));
		 
		ServletConfig config= getServletConfig();
		double esalary=Double.parseDouble(config.getInitParameter(eDesignation));
		
		if(Experience>0) {
			esalary=esalary+(increament*esalary*Experience);
		}
		
		Employee employee=new Employee();
		employee.setEmplooyeeName(ename);
		employee.setEmployeeEmail(eEmail);
		employee.setEmployeePhoneNumber(ephno);
		employee.setEmployeeDesignation(eDesignation);
		employee.setEmployeeSalary(esalary);
		
	  new EmployeeDAO().saveEmployee(employee);
	   List<Employee> employees=manager.getEmployee();
	   employees.add(employee);
	   new ManagerDAO().updateManager(manager);
	  resp.sendRedirect("dashboard.jsp");
	}else {
		resp.sendRedirect("managerLogin.jsp");
	}
}
}
