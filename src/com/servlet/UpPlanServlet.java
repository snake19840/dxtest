package com.servlet;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clas.Equ;
import com.clas.SelectAll;
import com.dao.ListDxtestwork;
import com.google.gson.Gson;

/**
 * Servlet implementation class UpPlanServlet
 */
@WebServlet("/UpPlanServlet")
public class UpPlanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
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
		//doGet(request, response);
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String sdate=request.getParameter("sdate");
		String edate=request.getParameter("edate");
		String username=request.getParameter("userid");
		String statu=request.getParameter("statu");
		HttpSession session = request.getSession();
		statu = java.net.URLDecoder.decode(statu, "UTF-8");
		username = java.net.URLDecoder.decode(username, "UTF-8");
		sdate = java.net.URLDecoder.decode(sdate, "UTF-8");
		edate = java.net.URLDecoder.decode(edate, "UTF-8");
		sdate=sdate.trim();
		edate=edate.trim();
		statu=statu.trim();
		
		
		
		SelectAll.UpPlanServlet(sdate, edate, statu, username);
		
//		List<Equ> listAllDxtestwork2=SelectAll.SelectAllDxtestwork2();
		Date date = new Date(System.currentTimeMillis());
		List<Equ> listAllDxtestwork2=ListDxtestwork.selAll(date);
		
		
		Gson gson = new Gson();
		String listAllDxtestworkSon2=gson.toJson(listAllDxtestwork2); 
		session.setAttribute("listAllDxtestwork2", listAllDxtestworkSon2);
		request.getRequestDispatcher("Testindex.jsp").forward(request, response);
		//String ##Gson=gson.toJson(##); 
		//session.setAttribute("##", ##Gson);
	}

}
