package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
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
 * Servlet implementation class WarningServlet5
 */
@WebServlet("/WarningServlet5")
public class WarningServlet5 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
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
		//String sdate=request.getParameter("sdate");
	//	String edate=request.getParameter("edate");
		//String userid=request.getParameter("userid");
	//	String statu=request.getParameter("statu");
		String sn=request.getParameter("sn");
		String userid=request.getParameter("userid");
		String nowdate=request.getParameter("nowdate");
		String stno=request.getParameter("stno");
		String userpwd=request.getParameter("userpwd");
	   // System.out.println(sdate);
		//System.out.println(edate);
		//System.out.println(userid);
	//	System.out.println(statu);
	//	System.out.println("====");
		Gson gson = new Gson();
		//String ##Gson=gson.toJson(##); 
		//session.setAttribute("##", ##Gson);
		String	sqlv="select * from dxtestwork where stno='"+stno+"' order by nowdate,statu desc";
//		 List<Equ> list=SelectAll.SelectItem2(stno);
		 List<Equ> list= SelectAll.Warningstatu(sqlv);
		 
		List<Equ> listsn=SelectAll.SelectAllSn(sn);
		String TT="Testwork3.jsp";
		
		session.setAttribute("TT",TT);
		session.setAttribute("list_WarningServlet2",list); 
		session.setAttribute("listsn_WarningServlet2",listsn); 
		String listGson=gson.toJson(listsn); 
		session.setAttribute("listGson",listGson); 
		String WarningGsons=gson.toJson(list); 
//		System.out.println(WarningGsons);
//		System.out.println(1);
		session.setAttribute("WarningGsons",WarningGsons); 
		
		session.setAttribute("stno_AllListServlet3",stno); 
		
		 sqlv="select * from WARNINGSTATU";
			List<Equ> WarningStatu=SelectAll.Warningstatu(sqlv);
			String WarningStatuGson=gson.toJson(WarningStatu);  
			session.setAttribute("WarningStatuGsons",WarningStatuGson); 
		
		if (userpwd.equals("restore")) {
			request.getRequestDispatcher("TestWarningItem4.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("TestWarningItem4.jsp").forward(request, response);
		}
        
       // response.sendRedirect("/TestWarning3.jsp"); 
       
	}

}
