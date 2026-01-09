package com.task.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.task.conn.Connection_Pool;

@WebServlet("/login")
public class Login extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String pwd = req.getParameter("password");
		
		Connection con = Connection_Pool.giveConnection();
		
		

		
		try {
			
			
			String fetch = "SELECT * FROM users WHERE email=? AND password=?";
			PreparedStatement pstm = con.prepareStatement(fetch);
			pstm.setString(1, email.trim()); // trim to avoid spaces
			pstm.setString(2, pwd.trim());
			
			System.out.println("Login attempt -> email: '" + email + "' password: '" + pwd + "'");
			
			ResultSet rs = pstm.executeQuery();
			
			if(rs.next()) {
				 // Get user data from DB
			    String username = rs.getString("username");
			    String emailDB = rs.getString("email");
			    
			    // Store in session
			    HttpSession session = req.getSession();
			    session.setAttribute("username", username);
			    session.setAttribute("email", emailDB);
			    
				// login succ -> home page
				 resp.sendRedirect("std_profile.jsp");
			}else {
				RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
				req.setAttribute("error", "Invalid Credentials");
				rd.forward(req, resp);
			}}catch (NumberFormatException e) {
			    req.setAttribute("error", "Password must be numeric");
			    req.getRequestDispatcher("login.jsp").forward(req, resp);
			
		} catch (SQLException e) {
			RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
			req.setAttribute("error", "Invalid Credentials");
			rd.forward(req, resp);
		}
		
	}

}
