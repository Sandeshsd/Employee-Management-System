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

@WebServlet("/forgot")
public class ForgotPassword extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("managerEmail");
		String password=req.getParameter("managerPassword");
		String password2=req.getParameter("ManagerPassword");
		
		ManagerDAO manager=new ManagerDAO();
		int managerId=manager.resetPassword(email);
		
		if(password.equals(password2)) {
			
			if( managerId!=-1) {
			Manager man=manager.getManagerById(managerId);
			man.setManagerPassword(password);
			manager.updateManager(man);
				
				req.getRequestDispatcher("managerLogin.jsp").forward(req, resp);
			}else {
				boolean res1=true;
				resp.sendRedirect("managerSignup.jsp");
			} 
	}else {
		boolean res2=true;
	}
	}
}
