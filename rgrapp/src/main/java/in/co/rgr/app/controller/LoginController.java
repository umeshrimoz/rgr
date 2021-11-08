package in.co.rgr.app.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.co.rgr.app.serviceImpl.LoginServiceImpl;

/**
 * Servlet implementation class LoginController
 */
@SuppressWarnings("serial")
@WebServlet("/LoginController")
public class LoginController extends HttpServlet { 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user =request.getParameter("user");
		String pass =request.getParameter("pass"); 
		
		LoginServiceImpl ls = new LoginServiceImpl();
		
		boolean res = ls.chkAuth(user, pass);
		if(res)
			{response.sendRedirect("admin/Dashboard.jsp");	System.out.println("ok"); }
		else { response.sendRedirect("login.jsp");	System.out.println("failed"); }
		
	}

}
