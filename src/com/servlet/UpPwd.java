package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clas.SelectAll;

/**
 * Servlet implementation class UpPwd
 */
@WebServlet("/UpPwd")
public class UpPwd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		doPost(request, response);
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession();
		String username=request.getParameter("username");
		String userpwd=request.getParameter("userpwd0");
		String userpwd1=request.getParameter("userpwd1");
		
	//	System.out.println(username);
	//	System.out.println(userpwd);
	//	System.out.println(userpwd1);
		SelectAll selectAll=new SelectAll();
		selectAll.UpPwd(username, userpwd, userpwd1);
		session.setAttribute("loginId", "n");
	//	session.setAttribute("userpwd", userpwd1);
	//	request.getRequestDispatcher("TestUsers.jsp").forward(request, response);
		PrintWriter out = response.getWriter();
		out.print("1");
		out.close();
	}

}
