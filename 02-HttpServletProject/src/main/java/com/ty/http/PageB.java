package com.ty.http;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/pageB")

public class PageB extends HttpServlet {
	@Override
	protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("unam");
		String pwd = req.getParameter("upw");
		
		System.out.println(name);
		System.out.println(pwd);
		
		PrintWriter pw = resp.getWriter();
		
		pw.print("<html><body><h1>" + name + ", Welcome to PageB HttpServlet</h1</body></html>");
	}

}

