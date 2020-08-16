package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clas.Equ;
import com.clas.SelectAll;
import com.dao.Class_sel;
import com.google.gson.Gson;

/**
 * Servlet implementation class classEdit
 */
@WebServlet("/classEdit")
public class classEdit extends HttpServlet {
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
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		//String #Gson=gson.toJson(#); 
		//session.setAttribute("#Gson", #Gson);
		String sql="";
		String classF=request.getParameter("classF");
		String classX=request.getParameter("classX");
//		System.out.println(classF);
//		System.out.println(classX);
		Class_sel class_sel=new Class_sel();
		String classXlistGson=class_sel.selClassX(classF, sql, classX);
		
		
		
//		System.out.println(111);
		out.print("{\"statu\":" + "1" + ",\"classXlist\":" + classXlistGson + ",\"tatolGson\":" + "3" + "}");
		out.close();
	}

}
