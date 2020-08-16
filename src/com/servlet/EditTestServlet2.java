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
 * Servlet implementation class EditTestServlet2
 */
//@WebServlet("/EditTestServlet2")
public class EditTestServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		int id = Integer.valueOf(request.getParameter("id")).intValue();
		String sid = String.valueOf(request.getParameter("sid"));
		String did = String.valueOf(request.getParameter("did"));
		String stdate = String.valueOf(request.getParameter("stdate"));
		String use = String.valueOf(request.getParameter("use"));
		String ownname = String.valueOf(request.getParameter("ownname"));
		String proname = String.valueOf(request.getParameter("proname"));
		String manname = String.valueOf(request.getParameter("manname"));
		String agename = String.valueOf(request.getParameter("agename"));
		String mantyp = String.valueOf(request.getParameter("mantyp"));
		
	
		
		
	
		try {
			Connection conn = com.clas.JDBCconnect.getConnection();
			
			String sql = "update dxtest set  sid=?,did=?,stdate=?,use=?,ownname=?,proname=?,manname=?,"
					+ "agename=?,mantyp=?  where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, sid);
			ps.setString(2, did);
			ps.setString(3, stdate);
			ps.setString(4, use);
			ps.setString(5, ownname);
			ps.setString(6, proname);
			ps.setString(7, manname);
			ps.setString(8, agename);
			ps.setString(9, mantyp);
			ps.setInt(10, id);
			 
			ps.executeUpdate();
			ps.close();
		    conn.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		ReturnDao dao = new ReturnDao();
		List<Equ> list=dao.retu(id);
		 request.setAttribute("list", list);
		 String urlHref=request.getParameter("urlHref");
		String urlLast=urlHref.substring(urlHref.lastIndexOf("/")+1);
		PrintWriter out=response.getWriter();
		// out.println("<script charset='UTF-8' language='javascript' type='text/javascript'> alert('修改成功') ;</script>");
			//response.sendRedirect("/test/index_login.jsp");// 为空跳转到loginFail.jsp（失败）
			response.setHeader("refresh", "0.1;url="+urlLast);
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
