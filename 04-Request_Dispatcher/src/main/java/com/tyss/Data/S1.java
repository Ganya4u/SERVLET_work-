package com.tyss.Data;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/s1")
public class S1 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("s1 got req");
		
		resp.getWriter().print("<h1>Welcome to S1</h1>");
		
		req.setAttribute("name", "Virat ");
		req.setAttribute("age", 37);
		
		Student student = new Student("Rohit", 40);

		req.setAttribute("stu", student);
		
		RequestDispatcher rd = req.getRequestDispatcher("s2");//pass s2 to forward the request to Servlet S2
		rd.forward(req, resp);
		
		
		

}
}
