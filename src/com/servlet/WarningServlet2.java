package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class WarningServlet2
 */
@WebServlet("/WarningServlet2")
public class WarningServlet2 extends HttpServlet {
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
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Gson gson = new Gson();
		
		String sn=request.getParameter("sn");
		List<Equ> list=SelectAll.SelectAllMessage(sn);
		List<Equ> listsn=SelectAll.SelectAllSn(sn);
		String sql="select * from dxtestwork where sn='"+sn+"' ORDER by nowdate DESC";
		List<Equ> list2=SelectAll.Warningstatu(sql);
		sql="select * from WARNINGSTATU";
		List<Equ> WarningStatu=SelectAll.Warningstatu(sql);
		String WarningStatuGson=gson.toJson(WarningStatu);  
		 
		
		
		String list2Gson=gson.toJson(list2); 
		session.setAttribute("WarningGsons",list2Gson);
		session.setAttribute("list_WarningServlet2",list); 
		String listGson=gson.toJson(listsn); 
		session.setAttribute("listGson",listGson);
		session.setAttribute("WarningStatuGsons",WarningStatuGson); 
		session.setAttribute("listsn_WarningServlet2",listsn); 
		String list_WarningServlet2Gson=gson.toJson(list); 
		session.setAttribute("list_WarningServlet2Gson",list_WarningServlet2Gson); 
		
        request.getRequestDispatcher("TestWarning3.jsp").forward(request, response);
	}

}
