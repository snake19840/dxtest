package com.servlet.warningItem;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
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

import oracle.net.ns.SessionAtts;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class UploadPictureItem
 */
@MultipartConfig(  maxFileSize=1024*1024*50)
@WebServlet("/UploadPictureItem")
public class UploadPictureItem extends HttpServlet {
	private static final long serialVersionUID = 1L;


	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
			resp.setContentType("Text/html");
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			Gson gson = new Gson();
			HttpSession session = req.getSession();
			
			
			PrintWriter out = resp.getWriter();
	           BufferedReader br = new BufferedReader(new InputStreamReader(req.getInputStream(),"utf-8"));
	           String line = null;
	           String  sqlv=null;
	           Part p = req.getPart("file");
	          String name=req.getParameter("name");
	          String message=req.getParameter("message");
	          String statu=req.getParameter("statu");
	          String stno=req.getParameter("stno");
	          String picture=req.getParameter("picture");
	           String h = p.getHeader("content-disposition");
//	           System.out.println(stno);
	           String rootPath = UrlDao.urlImg();
//	           System.out.println(123);
	           List<Equ> list=null;
//	           String rootPath =  "D:\\Users\\yujian\\eclipse-workspace\\dxtest\\WebContent\\upload\\img\\picture\\";
	           
	           
	           //判断文件大小M
	           int MAX_SIZE = 500*1000000;
//	           int MAX_SIZE = 12;
	          int formDataLength = req.getContentLength();
	          
	          try {
	        	  if (formDataLength > MAX_SIZE) { 
	  	            out.print("{'statu':'isOut'}");
	  	    	    out.close();
	  	            return;
	  	          }else {
	  	        	  File checkFile = new File(rootPath+name);
	  			  	    if (checkFile.exists()) {
	  				          out.print("{'statu':'isSame'}");
	  				    	    out.close();
	  				        } else {
	  				        	
	  			String sql="update dxtestwork set  picture='"+picture+"'  where  stno='"+stno+"' and message='"+message+"' and statu='"+statu+"'";
	  			boolean upfileP=	SelectAll.upfileP(sql);        	
	  				   if (upfileP) {
	  					   
	  					 p.write(rootPath+name);
	  					 String edate= (String) session.getAttribute("edate");
						  String sdate= (String) session.getAttribute("sdate");
							if (stno.equals("0")) {
								sqlv="select * from DXTESTWORK where stno='"+stno+"' and edate='"+edate+"' and sdate='"+sdate+"'  order by nowdate desc";
								 list=SelectAll.Warningstatu(sqlv);
								 
							}else {
								sqlv="select * from dxtestwork where stno='"+stno+"' order by nowdate desc";
								list=SelectAll.Warningstatu(sqlv);
							}
							String WarningGsons=gson.toJson(list);
							
							session.setAttribute("WarningGsons", WarningGsons);
			  		           out.print("{\"statu\":\"success\",\"WarningGsons\":"+WarningGsons+"}");
			  		    	    out.close();
					}  else {
						out.print("{'statu':'warn'}");
	 		    	    out.close();
					  
					}   	
	  			 }
	  			}
	        	  
	        	  
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				out.print("{'statu':'warn'}");
		    	    out.close();
			}
	         
	          
		}
}
