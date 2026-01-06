package com.ty.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/read")
public class ReadUData extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		System.out.println("-----------User Data-------------");
		
		String un = req.getParameter("uname");
		String pwd = req.getParameter("upwd");
		
		System.out.println(un);
		System.out.println(pwd);
		
		PrintWriter pw = res.getWriter();
		
		pw.print("<html>"
				+ "<body>"
				+ "<h1>User with Name : " + un  +" & password : " + pwd+ " </h1>"
				+ "</body>"
				+ "</html>");

		
	}

}
