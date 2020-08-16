package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.clas.Equ;

/**
 * Servlet implementation class AddBookServlet
 */
//@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		Equ equ=new Equ();
		PrintWriter out=response.getWriter();
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String sid=request.getParameter("sid");
	    String stdate=request.getParameter("stdate");
	    String sdate=request.getParameter("sdate");
	    String edate=request.getParameter("edate");
	    String redate=request.getParameter("redate");
	    String pname=request.getParameter("pname");
	    String use=request.getParameter("use");
	    String ownname=request.getParameter("ownname");
	 
	    
	    String proname=request.getParameter("proname");
	    String manname=request.getParameter("manname");
	    String agename=request.getParameter("agename");
	    
	    String mantyp=request.getParameter("mantyp");
	    String sname=request.getParameter("sname");
	    String styp=request.getParameter("styp");
	    String pos=request.getParameter("pos");
	    String ip=request.getParameter("ip");
	    String port=request.getParameter("port");
	    String cpu=request.getParameter("cpu");
	    String memory=request.getParameter("memory");
	    String disk=request.getParameter("disk");
	    String syn=request.getParameter("syn");
	    String oracle=request.getParameter("oracle");
	    String sn=request.getParameter("sn");
	    String oth=request.getParameter("oth");
	    String sroot=request.getParameter("sroot");
	    String spwd=request.getParameter("spwd");
	    String oroot=request.getParameter("oroot");
	    String opwd=request.getParameter("opwd");
	    String aroot=request.getParameter("aroot");
	    String apwd=request.getParameter("apwd");
	    String title=request.getParameter("title");
	    String url=request.getParameter("url");
	    String did=request.getParameter("did");

		
	    
		try {
			
			Connection conn = null;
			conn = com.clas.JDBCconnect.getConnection();
		
			
			// ���ͼ����Ϣ��SQL���
			String sql = "insert into dxtest(sid,stdate,sdate,edate,redate,pname,use,ownname,proname,manname,agename,mantyp,sname,styp,pos,ip,"
					+ "port,cpu,memory,disk,syn,oracle,sn,oth,sroot,spwd,oroot,opwd,aroot,apwd,title,url,did) "
					+ "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			// ��ȡPreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// ��SQL����еĵ�1��������ֵ
			/* ps.setString(1, book.getName());
			System.out.println("name��"+book.getName()); */
			// ��SQL����еĵ�2��������ֵ
			ps.setString(1,sid);
			
			 ps.setString(2,stdate); ps.setString(3,sdate); ps.setString(4,edate);
			 ps.setString(5,redate); ps.setString(6,pname); ps.setString(7,use);
			 ps.setString(8,ownname); ps.setString(9,proname); ps.setString(10,manname);
			 ps.setString(11,agename); ps.setString(12,mantyp); ps.setString(13,sname);
			 ps.setString(14,styp); ps.setString(15,pos); ps.setString(16,ip);
			 ps.setString(17,port); ps.setString(18,cpu); ps.setString(19,memory);
			 ps.setString(20,disk); ps.setString(21,syn); ps.setString(22,oracle);
			 ps.setString(23,sn); ps.setString(24,oth); ps.setString(25,sroot);
			 ps.setString(26,spwd); ps.setString(27,oroot); ps.setString(28,opwd);
			 ps.setString(29,aroot); ps.setString(30,apwd); ps.setString(31,title);
			 ps.setString(32,url);ps.setString(33,did);
			 
			 
			// ִ�и��²�����������Ӱ�������
			int row = ps.executeUpdate();
			// �ж��Ƿ���³ɹ�
			if(row > 0){
				// ���³������Ϣ
				out.println("<script charset='UTF-8' language='javascript' type='text/javascript'> alert('成功添加1条数据') ;</script>");
				//response.sendRedirect("/test/index_login.jsp");// Ϊ����ת��loginFail.jsp��ʧ�ܣ�
				response.setHeader("refresh", "0.1;url=/dxtest/add.jsp");
				
			}
			// �ر�PreparedStatement���ͷ���Դ
			ps.close();
			// �ر�Connection���ͷ���Դ
			conn.close();
		} catch (Exception e) {
			out.println("<script charset='UTF-8' language='javascript' type='text/javascript'> alert('信息添加失败') ;</script>");
			//response.sendRedirect("/test/index_login.jsp");// Ϊ����ת��loginFail.jsp��ʧ�ܣ�
			response.setHeader("refresh", "0.1;url=/dxtest/add.jsp");
			
			e.printStackTrace();
		}
		
		
		/* request.getRequestDispatcher("e_add.jsp").forward(request, response); */
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	 protected void doPost(HttpServletRequest request, HttpServletResponse
	 response) throws ServletException, IOException { // TODO Auto-generatedmethod stub
	 
	response.setContentType("Text/html"); request.setCharacterEncoding("UTF-8");
	  response.setCharacterEncoding("UTF-8"); doGet(request, response); 
		/* doGet(request, response); */ 
	 }
}
