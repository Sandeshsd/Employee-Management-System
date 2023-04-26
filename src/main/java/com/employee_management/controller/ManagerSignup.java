package com.employee_management.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.employee_management.dao.ManagerDAO;
import com.employee_management.dto.Manager;
@WebServlet("/signup")
public class ManagerSignup extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("managerName");
		String email=req.getParameter("managerEmail");
		String password=req.getParameter("managerPassword");
		
		Manager manager=new Manager();
		manager.setManagerName(name);
		manager.setManagerEmail(email);
		manager.setManagerPassword(password);
		
		new ManagerDAO().managerSignUp(manager);
	   
		req.getRequestDispatcher("managerLogin.jsp").forward(req, resp);
	}

}
