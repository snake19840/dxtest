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
 * Servlet implementation class Changetitle
 */
@WebServlet("/Changetitle")
public class Changetitle extends HttpServlet {
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
		String sd=request.getParameter("sd");
		String ed=request.getParameter("ed");
		String us=request.getParameter("us");
		us=java.net.URLDecoder.decode(us,"UTF-8");
		
		String sql="update DXTESTWORK set USERNAME='"+us+"' where SDATE='"+sd+"'and EDATE='"+ed+"' and STATU='—≤ºÏ»À‘±'";
		boolean f=SelectAll.Update(sql);
		
//		List<Equ> listAllDxtestwork2=SelectAll.SelectAllDxtestwork2();
		Date date = new Date(System.currentTimeMillis());
		List<Equ> listAllDxtestwork2=ListDxtestwork.selAll(date);
		
		Gson gson = new Gson();
		//String #Gson=gson.toJson(#); 
		//session.setAttribute("#Gson", #Gson);
		HttpSession session = request.getSession();
		String listAllDxtestworkSon2=gson.toJson(listAllDxtestwork2); 
		session.setAttribute("listAllDxtestwork2", listAllDxtestworkSon2);
		request.getRequestDispatcher("Testindex.jsp").forward(request, response);
	}

}
