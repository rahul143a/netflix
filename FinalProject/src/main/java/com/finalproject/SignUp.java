package com.finalproject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/register")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String uname=request.getParameter("firstname");
		String uemail=request.getParameter("email");
		String umobile=request.getParameter("phone");
		String upwd=request.getParameter("password");
		RequestDispatcher dispatcher;
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/netflixsoft?useSSL =false","root","root");
			PreparedStatement ps=con.prepareStatement("insert into singup(username,useremail,userphone,userpassword) values(?,?,?,?)");
			ps.setString(1, uname);
			ps.setString(2, uemail);
			ps.setString(3, umobile);
			ps.setString(4, upwd);
			
			int rowCount=ps.executeUpdate();
			dispatcher = request.getRequestDispatcher("signin.jsp");
			if (rowCount>0) {
				request.setAttribute("status", "success");
			
			}else {
				request.setAttribute("status", "failed");
			}
                    dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}

}
