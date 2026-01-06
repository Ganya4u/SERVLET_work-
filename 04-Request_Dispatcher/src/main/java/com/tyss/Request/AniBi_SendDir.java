package com.tyss.Request;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AniBi")
public class AniBi_SendDir extends HttpServlet {
	
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	System.out.println("AniBi servlet triggered");
	
	String msg = req.getParameter("src");
	
	resp.getWriter().print("<h1>This is AniBi_SendDir</h1>");
	
	if(msg.equalsIgnoreCase("Animal")) {
		resp.sendRedirect("animal");// url of Animal servlet
	}else if (msg.equalsIgnoreCase("Bird")) {
		resp.sendRedirect("bird");
		
	} else {
		resp.sendRedirect("https://www.wikipedia.org/");
	}
	
	
}

}
