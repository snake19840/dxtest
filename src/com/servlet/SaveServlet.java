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

import com.clas.Equ;
import com.dao.EquDao;
import com.dao.ReturnDao;





public class SaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		int id = Integer.valueOf(request.getParameter("id")).intValue();
		
		String sid = String.valueOf(request.getParameter("sid"));
		
		String stdate = String.valueOf(request.getParameter("stdate"));
		String sdate = String.valueOf(request.getParameter("sdate"));
		String edate = String.valueOf(request.getParameter("edate"));
		String redate = String.valueOf(request.getParameter("redate"));
		String pname = String.valueOf(request.getParameter("pname"));
		String use = String.valueOf(request.getParameter("use"));
		String ownname = String.valueOf(request.getParameter("ownname"));
		String proname = String.valueOf(request.getParameter("proname"));
		String manname = String.valueOf(request.getParameter("manname"));
		String agename = String.valueOf(request.getParameter("agename"));
		String mantyp = String.valueOf(request.getParameter("mantyp"));
		String sname = String.valueOf(request.getParameter("sname"));
		String styp = String.valueOf(request.getParameter("styp"));
		String pos = String.valueOf(request.getParameter("pos"));
		String ip = String.valueOf(request.getParameter("ip"));
		System.out.println("ip"+ip);
		String port = String.valueOf(request.getParameter("port"));
		String cpu = String.valueOf(request.getParameter("cpu"));
		String memory = String.valueOf(request.getParameter("memory"));
		String disk = String.valueOf(request.getParameter("disk"));
		String syn = String.valueOf(request.getParameter("syn"));
		String oracle = String.valueOf(request.getParameter("oracle"));
		String sn = String.valueOf(request.getParameter("sn"));
		String oth = String.valueOf(request.getParameter("oth"));
		String sroot = String.valueOf(request.getParameter("sroot"));
		String spwd = String.valueOf(request.getParameter("spwd"));
		String oroot = String.valueOf(request.getParameter("oroot"));
		String opwd = String.valueOf(request.getParameter("opwd"));
		String aroot = String.valueOf(request.getParameter("aroot"));
		String apwd = String.valueOf(request.getParameter("apwd"));
		String title = String.valueOf(request.getParameter("title"));
		String url = String.valueOf(request.getParameter("url"));
		String did = String.valueOf(request.getParameter("did"));


		
		

		try {
			Connection conn = com.clas.JDBCconnect.getConnection();
			
			String sql = "update dxtest set  sid=?,stdate=?,sdate=?,edate=?,redate=?,pname=?,use=?,ownname=?,"
					+ "proname=?,manname=?,agename=?,mantyp=?,sname=?,styp=?,pos=?,ip=?,port=?,cpu=?,memory=?,"
					+ "disk=?,syn=?,oracle=?,sn=?,oth=?,sroot=?,spwd=?,oroot=?,opwd=?,aroot=?,apwd=?,title=?,url=?,did=?  where id=?";
	
		
		
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, sid);
			ps.setString(2, stdate);
			ps.setString(3, sdate);
			ps.setString(4, edate);
			ps.setString(5, redate);
			ps.setString(6, pname);
			ps.setString(7, use);
			ps.setString(8, ownname);
			ps.setString(9, proname);
			ps.setString(10, manname);
			ps.setString(11, agename);
			ps.setString(12, mantyp);
			ps.setString(13, sname);
			ps.setString(14, styp);
			ps.setString(15, pos);
			ps.setString(16, ip);
			ps.setString(17, port);
			ps.setString(18, cpu);
			ps.setString(19, memory);
			ps.setString(20, disk);
			ps.setString(21, syn);
			ps.setString(22, oracle);
			ps.setString(23, sn);
			ps.setString(24, oth);
			ps.setString(25, sroot);
			ps.setString(26, spwd);
			ps.setString(27, oroot);
			ps.setString(28, opwd);
			ps.setString(29, aroot);
			ps.setString(30, apwd);
			ps.setString(31, title);
			ps.setString(32, url);
			ps.setString(33, did);
			ps.setInt(34, id);
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
		 //request.getRequestDispatcher("Xugai.jsp").forward(request, response);
		 request.getRequestDispatcher("Chaxun.jsp").forward(request, response);
	}

}
