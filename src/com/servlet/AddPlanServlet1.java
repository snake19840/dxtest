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
 * Servlet implementation class AddPlanServlet1
 */
@WebServlet("/AddPlanServlet1")
public class AddPlanServlet1 extends HttpServlet {
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
	//	System.out.println(1111);
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
		//System.out.println(1111);
		HttpSession session = request.getSession();
		String sdate=request.getParameter("sdate");
		String edate=request.getParameter("edate");
		String username=request.getParameter("userid");
		String statu=request.getParameter("statu");
		username=java.net.URLDecoder.decode(username,"UTF-8");
		statu=java.net.URLDecoder.decode(statu,"UTF-8");
		sdate=java.net.URLDecoder.decode(sdate,"UTF-8");
		edate=java.net.URLDecoder.decode(edate,"UTF-8");
		String userS=username;
	//	String urlr=request.getParameter("urlr");
	//	String fcid=request.getParameter("fcid");
	//sdate=(String) session.getAttribute("sdate");
//		System.out.println("===="+sdate);
//		System.out.println("===="+edate);
	//	System.out.println("===="+username);
	//	System.out.println(12345678);
		//System.out.println(urlr);
		//System.out.println(statu);
		//doGet(request, response);
		
		SelectAll.updata_dxtestworkPer(username, sdate, edate, statu);
		
		
		Gson gson=new Gson();
		List<Equ> listAllDxtestwork=SelectAll.SelectAllDxtestwork();
		String listAllDxtestworkSon=gson.toJson(listAllDxtestwork); 
	//	System.out.println(listAllDxtestworkSon);
		session.setAttribute("listAllDxtestwork", listAllDxtestworkSon);
		//response.sendRedirect(urlr);
		
//		List<Equ> listAllDxtestwork2=SelectAll.SelectAllDxtestwork2();
		Date date = new Date(System.currentTimeMillis());
		List<Equ> listAllDxtestwork2=ListDxtestwork.selAll(date);
		
		String listAllDxtestworkSon2=gson.toJson(listAllDxtestwork2); 
		session.setAttribute("listAllDxtestwork2", listAllDxtestworkSon2);
		session.setAttribute("userS", userS);
		request.getRequestDispatcher("Testindex.jsp").forward(request, response);
		
		
	}

}
