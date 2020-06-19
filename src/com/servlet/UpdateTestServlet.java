package com.servlet;

import java.io.File;
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
import javax.servlet.http.Part;

import org.apache.commons.net.ftp.FTPClient;

import com.clas.Check_filename;
import com.clas.Equ;

import com.clas.Update;
import com.dao.ReturnDao;
import com.sun.glass.ui.SystemClipboard;

/**
 * Servlet implementation class UpdateServlet
 */
//@WebServlet("/UpdateTestServlet")
public class UpdateTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	  public UpdateTestServlet() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("Text/html");
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
		
			
			String urlHref=request.getParameter("urlHref");
			String urlLast=urlHref.substring(urlHref.lastIndexOf("/")+1);
			PrintWriter out = response.getWriter(); 
			int id=Integer.parseInt(urlHref.substring(urlHref.lastIndexOf("=")+1));
			String url=request.getParameter("url");
			String rootPath = "/usr/tomcat/apache-tomcat-8.5.43/webapps/dxtest/upload/";
			//Part part = request.getPart("url");
			//System.out.println("part:"+part);
		//	String header = part.getHeader("content-disposition");
		//	String fileName = header.substring(header.lastIndexOf("=") + 2, header.length() - 1);
		//	String storePath="/test/detest/";
		//	part.write(storePath + File.separator + fileName);
			
		
			/*
			String rootPath = "/test/dxtest/";
			File uploadDir = new File(rootPath);
			Part p = request.getPart("url");
			
			String h = p.getHeader("content-disposition");
			int fname1 = h.lastIndexOf("filename=\"") + 10;
			String fname2=h.substring(fname1, h.length()-1);
	        fname2=fname2.substring(fname2.lastIndexOf("\\")+1);
	        String u=rootPath+fname2;
	        File checkFile = new File(u);
	        if (checkFile.exists()) {
	          
	          out.println("<script charset='UTF-8' language='javascript' type='text/javascript'> alert('文件已经存在!') ;</script>");
	          response.setHeader("refresh", "0.1;url="+urlLast);
	        }
	        else {
	        	p.write(rootPath+fname2);
	        	
	        	try {
					Connection conn=com.clas.JDBCconnect.getConnection();
					
					 
				
					String sql="insert into dxtestfile(id,url) values(?,?)";
				
					PreparedStatement ps=conn.prepareStatement(sql);
			
					ps.setInt(1, id);
			
					ps.setString(2, fname2 );
					ps.executeUpdate();
				
					ps.close();
					conn.close();
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
	        	out.println("<script charset='UTF-8' language='javascript' type='text/javascript'> alert('上传文件成功') ;</script>");
				//response.sendRedirect("/test/index_login.jsp");// 为空跳转到loginFail.jsp（失败）
				response.setHeader("refresh", "0.1;url="+urlLast);
	        }
	        */
			
			
	   
			
			
			//String url=String.valueOf(request.getParameter("url"));
			
		
			String ftpFile=url.substring(url.lastIndexOf("\\")+1);
			//System.out.println("url:"+url);
			
			File srcFile = new File(url);
			
			
			File uFile=new File(url);
			/*
			String path="/dxtest/";
			
			String ftpIp="134.101.168.111";
			Integer port=21;
			String username="temp";
			String password="temp2019";
			String filePath=url;
			*/
			
		    String path="/dxtest/";
			String ftpIp="134.101.168.30";
			Integer port=21;
			String username="test";
			String password="test902";
			String filePath=url;
         
		Check_filename check_filename=new Check_filename();
		boolean flag=check_filename.check(ftpFile);
		
		
		
	
		if (flag!=true) {
				
				Update.Upload(ftpIp, username, password, srcFile, ftpFile, path);
				
			try {
				Connection conn=com.clas.JDBCconnect.getConnection();
				
				 
			
				String sql="insert into dxtestfile(id,url) values(?,?)";
			
				PreparedStatement ps=conn.prepareStatement(sql);
		
				ps.setInt(1, id);
		
				ps.setString(2, ftpFile );
				ps.executeUpdate();
			
				ps.close();
				conn.close();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			//String urlHref=request.getParameter("urlHref");
				 out.println("<script charset='UTF-8' language='javascript' type='text/javascript'> alert('上传文件成功') ;</script>");
					//response.sendRedirect("/test/index_login.jsp");// 为空跳转到loginFail.jsp（失败）
					response.setHeader("refresh", "0.1;url="+urlLast);
				
		}
		
			//Update.Upload(ftpIp, port, username, password, filePath, ftpFile);
		
		
			
			//	System.out.println(12);
			//	ReturnDao dao = new ReturnDao();
			//	System.out.println(13);
			//	List<Equ> list=dao.retu(id);
			//	System.out.println(14);
			//	 request.setAttribute("list", list);
			//	 System.out.println(15);
				 //request.getRequestDispatcher("Xugai.jsp").forward(request, response);
			//	 request.getRequestDispatcher("TestTableEdit3.jsp").forward(request, response);
				 
				
		
				else {
					
					  
					 out.println("<script charset='UTF-8' language='javascript' type='text/javascript'> alert('已经存在同名文件,请重新上传') ;</script>");
						//response.sendRedirect("/test/index_login.jsp");// 为空跳转到loginFail.jsp（失败）
						response.setHeader("refresh", "0.1;url="+urlLast);
				}
			
			
	
	}
}		
			
	

