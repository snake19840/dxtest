package com.servlet;

import java.io.IOException;
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
 * Servlet implementation class ReturnIndex
 */
@WebServlet("/ReturnIndex")
public class ReturnIndex extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
 

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		
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
		HttpSession session=request.getSession();
		Gson gson=new Gson();
		//String userid=request.getParameter("userid");
		String userid=(String)session.getAttribute("userid");
	//	String userid=request.getParameter("userid");
		//userid=java.net.URLDecoder.decode(userid,"UTF-8");
		List<Equ> listus=SelectAll.userAddListRe(userid);
		List<Equ> listAllDxtestwork=SelectAll.SelectAllDxtestwork();
		String listAllDxtestworkSon=gson.toJson(listAllDxtestwork); 
		List<Equ> listAllDxtestwork2=SelectAll.SelectAllDxtestwork2();
		String listAllDxtestworkSon2=gson.toJson(listAllDxtestwork2); 
		session.setAttribute("listAllDxtestwork", listAllDxtestworkSon);
		session.setAttribute("listAllDxtestwork2", listAllDxtestworkSon2);
		session.setAttribute("listus", listus);
		request.getRequestDispatcher("Testindex.jsp").forward(request, response);
		
//		doGet(request, response);
	
	}

}
