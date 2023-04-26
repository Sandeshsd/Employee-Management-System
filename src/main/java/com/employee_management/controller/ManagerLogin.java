package com.employee_management.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.employee_management.dao.ManagerDAO;
import com.employee_management.dto.Manager;
@WebServlet("/login")
public class ManagerLogin extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         
		String email=req.getParameter("managerEmail");
		String password=req.getParameter("managerPassword");
		  
		   Manager manager=  new ManagerDAO().managerLogin(email, password);
		   HttpSession session=req.getSession();
		   if(manager!=null) {
			   session.setAttribute("manager",manager);
	        req.getRequestDispatcher("dashboard.jsp").forward(req, resp);
		 }else {
			 resp.sendRedirect("managerSignup.jsp");
		 }	   
	}
}
