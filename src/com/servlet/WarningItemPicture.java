package com.servlet;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


import com.clas.Equ;
import com.clas.SelectAll;
import com.dao.UrlDao;
import com.google.gson.Gson;
import com.sun.org.apache.bcel.internal.generic.Select;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class WarningItemPicture
 */
//@MultipartConfig(location = "D:/WebService/tomcat/apache-tomcat-8.5.47/webapps/dxtest/upload/img/picture",maxFileSize=1024*1024*50)
@MultipartConfig(maxFileSize=1024*1024*50)
//@MultipartConfig(location = "D:/dxtest/upload/img/picture",maxFileSize=1024*1024*50)
@WebServlet("/WarningItemPicture")
public class WarningItemPicture extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
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
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String stno=(String)session.getAttribute("stno_AllListServlet3");
		String userid=request.getParameter("userid");
		String nowdate=request.getParameter("nowdate");
		String message=request.getParameter("message");
		String sdate=request.getParameter("sdate");
		String edate=request.getParameter("edate");
		String sn=request.getParameter("sn");
		String statu=request.getParameter("statu");
		String TWI3= request.getParameter("TWI3");
		if (TWI3==null) {
			TWI3="";
		}
		System.out.println("it="+sdate);
		System.out.println("it="+edate);
		sdate=sdate.substring(0,10)+" 00:00:00";
		
		
		nowdate = java.net.URLDecoder.decode(nowdate, "UTF-8");
		message = java.net.URLDecoder.decode(message, "UTF-8");
		statu = java.net.URLDecoder.decode(statu, "UTF-8");
		userid = java.net.URLDecoder.decode(userid, "UTF-8");
		
		String string1= statu ;
		String string2="恢复";
		
		
		
		if (!ServletFileUpload.isMultipartContent(request)) {
		       
	        PrintWriter writer = response.getWriter();
	        writer.println("Error: 表单必须包含 enctype=multipart/form-data");
	        writer.flush();
	        
	        return;
	      } 
		
		 DiskFileItemFactory factory = new DiskFileItemFactory();
		    factory.setSizeThreshold(3145728);
		    factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
		    ServletFileUpload upload = new ServletFileUpload(factory);
		    upload.setFileSizeMax(419430400L);
		    upload.setSizeMax(52428800L);
		    upload.setHeaderEncoding("UTF-8");
		    String rootPath=UrlDao.urlImg();
		 //  String rootPath = "D:/WebService/tomcat/apache-tomcat-8.5.47/webapps/dxtest/upload/img/picture/";
		 //   String rootPath = "D:/dxtest/upload/img/picture/";
		    File uploadDir = new File("D:\\dxtest\\");
		    if (!uploadDir.exists()) {
		    
		      uploadDir.mkdir();
		    }
		     uploadDir = new File("D:\\dxtest\\upload\\");
		     if (!uploadDir.exists()) {
			    	
			      uploadDir.mkdir();
			    }
		     uploadDir = new File("D:\\dxtest\\upload\\img\\");
		     if (!uploadDir.exists()) {
			    uploadDir.mkdir();
			    }
		     uploadDir = new File("D:\\dxtest\\upload\\img\\picture\\");
		     if (!uploadDir.exists()) {
			    uploadDir.mkdir();
			    }
		     
		     int MAX_SIZE = 104857600;
			    DataInputStream in = null;
			    FileOutputStream fileOut = null;
			    
			    String contentType = request.getContentType();
			    try {
					if (contentType.indexOf("mulFtipart/form-data") >= 0) {
						in = new DataInputStream(request.getInputStream());
				          int formDataLength = request.getContentLength();
				          if (formDataLength > MAX_SIZE) {
				        	  out.print("<script language='javascript'>alert('上传的字节不可以超过" + MAX_SIZE + "字节');window.location.href='TestWarningItem.jsp'</script>");
					    	    out.close();
					           return;
						}
					}
					Part p = request.getPart("url");
			          long fileSize = 1024*1024*500;
			          long ll=p.getSize();
			          if (ll>fileSize) {
			        	  out.print("<script language='javascript'>alert('请上传小于50M的文件!');window.location.href='TestWarningItem.jsp'</script>");
				    	    out.close();
					}else {
						String h = p.getHeader("content-disposition");
						 int fname1 = h.lastIndexOf("filename=\"") + 10;
						 String fname2=h.substring(fname1, h.length()-1);
				  	        fname2=System.currentTimeMillis()+fname2.substring(fname2.lastIndexOf("\\")+1);
				  	        String u=rootPath+fname2;
				  	      File fileDir = new File(rootPath);
				  	    if (!fileDir.exists()) {
				  	        fileDir.mkdirs();
				  	        }
				  	  File checkFile = new File(u);
				  	  if (checkFile.exists()) {
				  		out.print("<script language='javascript'>alert('文件已经存在!');window.location.href='TestWarningItem.jsp'</script>");
			    	    out.close();
					}else {
						p.write(rootPath+fname2);
						String	picture="upload/img/picture/"+fname2;
						
						if (string1.equals(string2)) {
							//System.out.println("恢复");
							SelectAll.updataPartPic2(sn, message, userid, nowdate, statu, picture, edate, sdate, stno);
							
						}else {
							SelectAll.updataPartPic(sn, message, userid, nowdate, statu, picture, edate, sdate, stno);
						}
						
						
					
				  	List<Equ> list=SelectAll.SelectAllMessageItem(sn, stno);
					List<Equ> listsn=SelectAll.SelectAllSn(sn);
					Gson gson=new Gson();
			        String info=gson.toJson(list);  
			        session.setAttribute("list_WarningServlet2", list);
					session.setAttribute("listsn_WarningServlet2", listsn);
					session.setAttribute("jsonstr", info);
					boolean userpwd=SelectAll.userpwd(stno);
					if (userpwd) {
						
						request.getRequestDispatcher("TestWarningItem2.jsp").forward(request, response);
//						out.print(
//								"<script language='javascript'>alert('成功添加了1条数据!');window.location.href='TestWarningItem2.jsp'</script>");
//						out.close();
					}else {
						if (TWI3.equals("TWI3")) {
							request.getRequestDispatcher("TestWarningItem3.jsp").forward(request, response);
						}else {
							request.getRequestDispatcher("TestWarningItem.jsp").forward(request, response);
						}
						
//						out.print(
//								"<script language='javascript'>alert('成功添加了1条数据!');window.location.href='TestWarningItem.jsp'</script>");
//						out.close();
					}
					
				  	
					}
					
					}	
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
		
	}

}
