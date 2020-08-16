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
 * Servlet implementation class UpdataAuthor
 */
@WebServlet("/UpdataAuthor")
public class UpdataAuthor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		//String ##Gson=gson.toJson(##); 
		//session.setAttribute("##", ##Gson);
		String username=request.getParameter("username");
		String con=request.getParameter("con");
		String conedit=request.getParameter("conedit");
		String condel=request.getParameter("condel");
		String addevent=request.getParameter("addevent");
		String levela=request.getParameter("levela");
		String day=request.getParameter("day");
	
		String sql= "update DXTESTUSER set  con='"+con+"',conedit='"+conedit+"',condel='"+condel+"',addevent='"+addevent+"',levela='"+levela+"',day='"+day+"'  where username='"+username+"'";
		boolean updataAuthor=SelectAll.Update(sql);
		
		List<Equ> usersall =SelectAll.usersall();
		String usersallGson=gson.toJson(usersall); 
		out.print("{\"updataAuthor\":"+updataAuthor+",");
		out.print("\"usersallGson\":"+usersallGson+"}");
	
		out.close();
	}

}
