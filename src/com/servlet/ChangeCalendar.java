package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChangeCalendar
 */
@WebServlet("/ChangeCalendar")
public class ChangeCalendar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String d=request.getParameter("data");
		d=java.net.URLDecoder.decode(d, "UTF-8");
		String f="1";
		PrintWriter out = response.getWriter();
		
		out.print("{\"statu\":" + d + ",\"listChageG\":" + f + ",\"tatolGson\":" + f + "}");
		out.close();
	}

}
