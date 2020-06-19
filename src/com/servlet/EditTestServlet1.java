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
import com.dao.ReturnDao;

/**
 * Servlet implementation class EditTestServlet1
 */

public class EditTestServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
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
		/*
		 * int id = Integer.valueOf(request.getParameter("id")).intValue(); String sn =
		 * String.valueOf(request.getParameter("sn"));
		 */
		HttpSession session = request.getSession();
	
		
		
		//System.out.println(pname);
		//String sn=String.valueOf(request.getAttribute("sn"));
	//	String pos=String.valueOf(request.getAttribute("pos"));
	//	String styp=String.valueOf(request.getAttribute("styp"));
	//	String sname=String.valueOf(request.getAttribute("sname"));
	//	String id=String.valueOf(request.getAttribute("id"));
	//	String ip=String.valueOf(request.getAttribute("ip"));
	//	String pname=String.valueOf(request.getAttribute("pname"));
		
		String sn=request.getParameter("sn");
		String styp=request.getParameter("styp");
		String sname=request.getParameter("sname");
		String id=request.getParameter("id");
		String ip=request.getParameter("ip");
		String pname=request.getParameter("pname");
		String pos=request.getParameter("pos");
		
		
	//	String pos=String.valueOf(request.getAttribute("pos"));
	//	String styp=String.valueOf(request.getAttribute("styp"));
	//	String sname=String.valueOf(request.getAttribute("sname"));
	//	String id=String.valueOf(request.getAttribute("id"));
	//	String ip=String.valueOf(request.getAttribute("ip"));
	//	String pname=String.valueOf(request.getAttribute("pname"));
		
	//	String urlHref=(String)request.getAttribute("urlHref");
		
	
		
		/*
		 * System.out.println(pname); System.out.println(sname); System.out.println(sn);
		 * System.out.println(id); System.out.println(styp); System.out.println(pos);
		 */
		 // System.out.println(urlHref);

		
		
		
		try {
			Connection conn = com.clas.JDBCconnect.getConnection();
			
			String sql = "update dxtest set  pname=?,sn=?,pos=?, ip=?,styp=?,sname=?  where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			int i=1;
			ps.setString(i++, pname);
			ps.setString(i++, sn);
			ps.setString(i++, pos);
			ps.setString(i++, ip);
			ps.setString(i++, styp); 
			ps.setString(i++, sname);
			ps.setString(i++, id);
			ps.executeUpdate();
			ps.close();
		    conn.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		ReturnDao dao = new ReturnDao();
		int intid=Integer.parseInt(id);
		
		List<Equ> list=dao.retu(intid);
		 request.setAttribute("list", list);
		
	//	String urlLast=urlHref.substring(urlHref.lastIndexOf("/")+1);
		PrintWriter out=response.getWriter();
		// out.println("<script charset='UTF-8' language='javascript' type='text/javascript'> alert('修改成功') ;</script>");
			//response.sendRedirect("/test/index_login.jsp");// 为空跳转到loginFail.jsp（失败）
		//	response.setHeader("refresh", "0.1;url="+urlLast);
		 request.getRequestDispatcher("TestTableEdit3.jsp").forward(request, response);
		// response.sendRedirect("/dxtest/EditTestServlet");
		
		
		
	}

}
