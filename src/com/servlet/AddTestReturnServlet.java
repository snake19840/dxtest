package com.servlet;

import java.beans.Statement;
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
import com.dao.ReturnDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class AddTestReturnServlet
 */
//@WebServlet("/AddTestReturnServlet")
public class AddTestReturnServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String pname=request.getParameter("pname");
		String sn=request.getParameter("sn");
		String pos=request.getParameter("pos");
		String ip=request.getParameter("ip");
		String styp=request.getParameter("styp");
		String sname=request.getParameter("sname");
		String sid=request.getParameter("sid");
		String stdate=request.getParameter("stdate");
		String use=request.getParameter("use");
		String ownname=request.getParameter("ownname");
		String proname=request.getParameter("proname");
		String manname=request.getParameter("manname");
		String agename=request.getParameter("agename");
		String mantyp=request.getParameter("mantyp");
		String did=request.getParameter("did");
		String port=request.getParameter("port");
		String cpu=request.getParameter("CPU");
		String memory=request.getParameter("memory");
		String disk=request.getParameter("disk");
		String syn=request.getParameter("syn");
		String oracle=request.getParameter("oracle");
		String oth=request.getParameter("oth");
		
		PrintWriter out = response.getWriter();
		try {
			int inti = 1;
			sn=sn.trim();
			pname=pname.trim();
		Connection	conn = com.clas.JDBCconnect.getConnection();
		String sqlR="select count(*) from DXTEST where  sn=?";
			String sql = "insert into dxtest(stdate,sn,pos,ip,styp,sname,sid,pname,use,ownname,proname,manname,agename,mantyp,did,"
					+ "port,cpu,memory,disk,syn,oracle,oth) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sqlR);
			String sqldel="delete from Dxtesttemp where rownum=1";
			ps = conn.prepareStatement(sqlR);
			PreparedStatement ps3=null;
			PreparedStatement	ps2=null;
			Gson gson = new Gson();
			 List<Equ> list = new ArrayList<Equ>(); 
			 Equ equ=new Equ();
			 String listGson=null;
			ps.setString(inti++, sn);
			ResultSet rs=ps.executeQuery();
			int count=0;
			while (rs.next()) {
			count=rs.getInt(1);
			}
			System.out.println("count="+count);
			if (count>0) {
				ps.close();
				rs.close();
				conn.close();
				out.print("1");
				out.close();
				
			}else {
				 inti = 1;
				 conn = com.clas.JDBCconnect.getConnection();
				ps2 = conn.prepareStatement(sql);
				ps2.setString(inti++, stdate);
				ps2.setString(inti++, sn);
				ps2.setString(inti++, pos);
				ps2.setString(inti++, ip);
				ps2.setString(inti++, styp);
				ps2.setString(inti++, sname);
				ps2.setString(inti++, sid);
				ps2.setString(inti++, pname);
				ps2.setString(inti++, use);
				ps2.setString(inti++, ownname);
				ps2.setString(inti++, proname);
				ps2.setString(inti++, manname);
				ps2.setString(inti++, agename);
				ps2.setString(inti++, mantyp);
				ps2.setString(inti++, did);
				ps2.setString(inti++, port);
				ps2.setString(inti++, cpu);
				ps2.setString(inti++, memory);
				ps2.setString(inti++, disk);
				ps2.setString(inti++, syn);
				ps2.setString(inti++, oracle);
				ps2.setString(inti++, oth);
				ps2.executeQuery();
				
				ps3=conn.prepareStatement(sqldel);
				ps3.executeQuery();
				ps2.close();
				ps3.close();
				
				 
				list = SelectAll.listTemp();
				session.setAttribute("listform", list);
				   String listformGson=gson.toJson(list); 
				   session.setAttribute("listformGson", listformGson);
				   List<String> typeList=SelectAll.typeList();
					 String typeListGson=gson.toJson(typeList); 
					   session.setAttribute("typeListGson", typeListGson);
				 
				out.print("2");
				out.close();
			}
			
			ps.close();
			
			rs.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	//	request.getRequestDispatcher("Testform.jsp").forward(request, response);
	}

}
