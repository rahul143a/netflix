package com.finalproject;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String uname= request.getParameter("email");

		HttpSession session = request.getSession();
		 Connection	con=null;
		 RequestDispatcher dispatcher;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		   	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/netflixsoft?useSSL =false","root","root");
			PreparedStatement ps=con.prepareStatement("select * from  singup where useremail = ?");
			ps.setString(1, uname);

			ResultSet rs= ps.executeQuery();
			
			if (rs.next()) {
			    session.setAttribute("name", rs.getString("useremail"));
			dispatcher =request.getRequestDispatcher("index.jsp");
			}else {
				request.setAttribute("status", "faild");
				dispatcher = request.getRequestDispatcher("netflix2.jsp");
			}
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
