package com.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sound.midi.Patch;

import org.apache.commons.net.ftp.FTPClient;

import com.clas.EquFile;
import com.dao.FileDao;
import com.dao.UrlDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class DeleteFileServlet
 */
//@WebServlet("/DeleteFileServlet")
public class DeleteFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
	PrintWriter out = response.getWriter();
	Gson gson = new Gson();
	String listG="";
	//String ##Gson=gson.toJson(##); 
	//session.setAttribute("##", ##Gson);
		HttpSession session = request.getSession();
		String aFileName =request.getParameter("path");
		String id =request.getParameter("id");
		
		String snString=null;
	String	aFileName1=java.net.URLDecoder.decode(aFileName,"UTF-8");
	//	System.out.println("===="+aFileName);
	     aFileName = new String(aFileName1.getBytes("iso8859-1"), "gbk"); 
	  String root=UrlDao.urlEqu();   
	    File file = new File(root, aFileName); //test
	//    File file = new File("D:/WebService/tomcat/apache-tomcat-8.5.47/webapps/dxtest/upload", aFileName); 
	    
	    response.setContentType("text/html;charset=GBK"); 
	   
	    if (!file.isDirectory()) { 
	    	
	      file.delete(); 
	      snString=FileDao.snFile(aFileName1);
	     
	      FileDao fileDao=new FileDao();
	      List<EquFile> list2=fileDao.files(Integer.parseInt(id));
//	      request.setAttribute("list2", list2);
			 listG=gson.toJson(list2); 
			 session.setAttribute("listG", listG);
			 out.print("{\"statu\":\"1\",\"WarningGsons\":  "+listG  +"}");
		out.close();
	   //   System.out.println("=="+snString);
//	      response.getWriter().print( "<mce:script language='javascript'><!-- alert('删除成功');window.location.href='TestTable3.jsp'; // --></mce:script>"); 
//	      response.getWriter().print("<script language='javascript'>alert('成功删除了1条数据！');window.location.href='ChakanTestServlet?id=4'</script>");
	    } else { 
	    	  out.print("{\"statu\":\"0\",\"WarningGsons\":" + listG + "}");
	  		out.close();
	    } 
				
			
	//	response.setHeader("refresh", "0.1;url=http://134.101.168.30:8080/dxtest/ChakanTestServlet?id="+id);
		//	response.setHeader("refresh", "0.1;url=http://localhost:8080/dxtest/ChakanTestServlet?id="+id);
	}
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	/*
		 * FTPUtil.connectFtpServer("134.101.168.30", 21, "test","test902", "gbk");
		 * FTPUtil ftpUtil=new FTPUtil(); deleteServerFiles(ftpUtil, deleteFiles);
		 */
		 
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		doGet(request, response);
		
		
			
		
	}

}
