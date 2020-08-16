package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clas.Equ;
import com.clas.SelectAll;
import com.google.gson.Gson;

/**
 * Servlet implementation class DelUser
 */
@WebServlet("/DelUser")
public class DelUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Gson gson = new Gson();
		HttpSession session = request.getSession();
		String username=request.getParameter("username");
		boolean deluser=SelectAll.deluser(username);
		List<Equ> usersall =SelectAll.usersall();
		String usersallGson=gson.toJson(usersall); 
		session.setAttribute("usersallGson", usersallGson);
		PrintWriter out = response.getWriter();
		out.print("{");
		out.print("\"usersallGson\":");
		out.print(usersallGson+",");
		out.print("\"deluser\":"+deluser);
		out.print("}");
		out.close();
	}

}
