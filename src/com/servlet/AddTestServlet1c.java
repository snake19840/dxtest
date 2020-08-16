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
import javax.servlet.http.HttpSession;

import com.clas.Equ;
import com.dao.ReturnDao;

/**
 * Servlet implementation class AddTestServlet1c
 */
//@WebServlet("/AddTestServlet1c")
public class AddTestServlet1c extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//HttpSession session = request.getSession();
		int id = Integer.valueOf(request.getParameter("id")).intValue();
		
		 
		String pname="",sn="",pos="//",ip="//",styp="/",sname="";
		/*
		 * session.removeAttribute(sn); session.removeAttribute(pname);
		 * session.removeAttribute(pos); session.removeAttribute(ip);
		 * session.removeAttribute(styp); session.removeAttribute(sname);
		 */
		
		//System.out.println((String)session.getAttribute("sn"));
		
		
		
		try {
			Connection conn = com.clas.JDBCconnect.getConnection();
			
			String sql = "update dxtesttemp set  pname=?,sn=?,pos=?,ip=?,styp=?,sname=?  where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, pname);
			ps.setString(2, sn);
			ps.setString(3, pos);
			ps.setString(4, ip);
			ps.setString(5, styp);
			ps.setString(6, sname);
			ps.setInt(7, id);
			 
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
		// request.getRequestDispatcher("Testform.jsp").forward(request, response);
		 String urlHref=request.getParameter("urlHref");
		 String urlLast=urlHref.substring(urlHref.lastIndexOf("/")+1);
		 PrintWriter out=response.getWriter();
		//  out.println("<script charset='UTF-8' language='javascript' type='text/javascript'> alert('暂存成功') ;</script>");
		 //response.sendRedirect("/test/index_login.jsp");// 为空跳转到loginFail.jsp（失败）
		 response.setHeader("refresh", "0.1;url="+urlLast);
		 //request.getRequestDispatcher("url="+urlLast).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
