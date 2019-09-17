package com.zch;

import java.io.IOException;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet {

	public void doPost(HttpServletRequest req,HttpServletResponse response) throws IOException {
		
		String name = req.getParameter("name");
		String pwd = req.getParameter("pwd");
		
		Person p = new Person(name,pwd);
		
		HttpSession s = req.getSession();
		s.setAttribute("p", p);
		

		response.sendRedirect(req.getContextPath()+"/index.jsp");
	}
}
