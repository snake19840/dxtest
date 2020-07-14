package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

/**
 * Servlet implementation class WarningSame
 */
@WebServlet("/WarningSame")
public class WarningSame extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Gson gson = new Gson();
		//String ##Gson=gson.toJson(##); 
		//session.setAttribute("##", ##Gson);
		String edate=request.getParameter("edate");
		String sdate=request.getParameter("sdate");
		String userid=request.getParameter("userid");
		String time=request.getParameter("time");
		
		userid=java.net.URLDecoder.decode(userid,"UTF-8");
		edate=java.net.URLDecoder.decode(edate,"UTF-8");
		sdate=java.net.URLDecoder.decode(sdate,"UTF-8");
		System.out.println(userid);
		System.out.println(1111);
	}

}
