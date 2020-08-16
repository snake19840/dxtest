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
import com.google.gson.Gson;

/**
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
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
		String ed = request.getParameter("ed");
		
		String sql="SELECT NOWDATE,USERID,USERNAME,EDITS FROM DXTESTLOG WHERE NOWDATE>='"+sd+"' and NOWDATE<='"+ed+"' ORDER BY NOWDATE DESC";
		List<Equ> list=SelectAll.Warningstatu(sql);
		
		Gson gson = new Gson();
		String listTextGson=gson.toJson(list); 
		
		PrintWriter out = response.getWriter();
		
		boolean f=true;
		out.print("{\"statu\":" + f + ",\"listTextGson\":" + listTextGson + "}");
		out.close();
		
	}

}
