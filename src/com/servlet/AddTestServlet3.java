package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clas.Equ;
import com.dao.ReturnDao;

/**
 * Servlet implementation class AddTestServlet3
 */
//@WebServlet("/AddTestServlet3")
public class AddTestServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out=response.getWriter();
		int id = Integer.valueOf(request.getParameter("id")).intValue();
		String port = String.valueOf(request.getParameter("port"));
		String cpu = String.valueOf(request.getParameter("cpu"));
		String memory = String.valueOf(request.getParameter("memory"));
		String disk = String.valueOf(request.getParameter("disk"));
		String syn = String.valueOf(request.getParameter("syn"));
		String oracle = String.valueOf(request.getParameter("oracle"));
		String oth = String.valueOf(request.getParameter("oth"));
		
		
		try {
			Connection conn = com.clas.JDBCconnect.getConnection();
			
			String sql = "update dxtesttemp set  port=?,cpu=?,memory=?,disk=?,syn=?,oracle=?,oth=?  where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, port);
			ps.setString(2, cpu);
			ps.setString(3, memory);
			ps.setString(4, disk);
			ps.setString(5, syn);
			ps.setString(6, oracle);
			ps.setString(7, oth);
			ps.setInt(8, id);
			 
			ps.executeUpdate();
			ps.close();
		    conn.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		ReturnDao dao = new ReturnDao();
		List<Equ> list=dao.retua(id);
		 request.setAttribute("list", list);
		 //request.getRequestDispatcher("Xugai.jsp").forward(request, response);
		 //request.getRequestDispatcher("Testform.jsp").forward(request, response);
		 String urlHref=request.getParameter("urlHref");
		 String urlLast=urlHref.substring(urlHref.lastIndexOf("/")+1);
		response.setHeader("refresh", "0.1;url="+urlLast);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
