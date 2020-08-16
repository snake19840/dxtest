package com.servlet;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


import com.clas.Equ;
import com.dao.ReturnDao;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class Fileupdata
 */
//@MultipartConfig(location = "/usr/tomcat/apache-tomcat-8.5.43/webapps/upload",maxFileSize=1024*1024*50)
@MultipartConfig(location = "/usr/tomcat/apache-tomcat-8.5.43/webapps/test/upload",maxFileSize=1024*1024*500)
//@MultipartConfig(location = "D:\\",maxFileSize=1024*1024*500)
public class FileupdataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ReturnDao dao=new ReturnDao();
		request.setCharacterEncoding("utf-8");
	    response.setContentType("text/html;charset=utf-8");
	    PrintWriter out = response.getWriter();
	    int id = Integer.valueOf(request.getParameter("id")).intValue();
	    
	   List<Equ> list=dao.retu(id);
	   System.out.println("list:"+list);
	    
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
	    upload.setFileSizeMax(524288000L);
	    upload.setSizeMax(524288000L);
	    upload.setHeaderEncoding("UTF-8");
	 
 String rootPath = "/usr/tomcat/apache-tomcat-8.5.43/webapps/dxtest/upload/"; 
	//  String rootPath = "D:\\";
	    File uploadDir = new File(rootPath);
	    if (!uploadDir.exists()) {
	      uploadDir.mkdir();
	    }
	    int MAX_SIZE = 524288000;
	    DataInputStream in = null;
	    FileOutputStream fileOut = null;
	    String contentType = request.getContentType();
	    try {
	    	if (contentType.indexOf("multipart/form-data") >= 0)
	        {
	    		in = new DataInputStream(request.getInputStream());
	            int formDataLength = request.getContentLength();
	            if (formDataLength > MAX_SIZE) {
	              out.print("上传的字节不可以超过" + MAX_SIZE + "字节");
	              return;
	            }
	            Part p = request.getPart("uploadFile");
	            long fileSize = 1024*1024*500;
	            long ll=p.getSize();
	            if (ll>fileSize) {
	            	out.println("<script charset='UTF-8' language='javascript' type='text/javascript'> alert('请上传小于50M的文件!') ;</script>");
	                
	                response.setHeader("refresh", "0.1;url=/dxtest/add.jsp"); 
	    		}else {
	    			String h = p.getHeader("content-disposition");
	    		       int fname1 = h.lastIndexOf("filename=\"") + 10;
	    		        String fname2=h.substring(fname1, h.length()-1);
	    		        fname2=fname2.substring(fname2.lastIndexOf("\\")+1);
	    		        String u=rootPath+fname2;
	    		        File fileDir = new File(rootPath);
	    		        if (!fileDir.exists()) {
	    			          fileDir.mkdirs();
	    			        }
	    		        File checkFile = new File(u);
	    		        p.write(rootPath+fname2);
	    	        	Connection	conn = com.clas.JDBCconnect.getConnection();
	    	            String sql = "update dxtest set  url=?  where id=?";
	    	            PreparedStatement ps = conn.prepareStatement(sql);
	    	            ps.setString(1, u);
	    	            ps.setInt(2, id);
	    	            ps.executeUpdate();
	    	            int row = ps.executeUpdate();
	    	            
	    	            
	    	            
	    	            if(row > 0){
	    					// 更新成输出信息
	    					out.println("<script charset='UTF-8' language='javascript' type='text/javascript'> alert('成功添加附件！') ;</script>");
	    					
	    					request.setAttribute("list", list);
	    					//response.sendRedirect("/test/index_login.jsp");// 为空跳转到loginFail.jsp（失败）
	    					//response.setHeader("refresh", "0.1;url=/dxtest/Xiugai.jsp"); 
	    					request.getRequestDispatcher("Xiugai.jsp").forward(request, response); 
	    				}
	    	        		    	            
	    	            ps.close();	    	    
	    		}
	        }
	    	else
	        {
	    		out.println("<script charset='UTF-8' language='javascript' type='text/javascript'>  alert('上传文件类型错误,请上传目录mutipart/form-data类型的文件') ;</script>");
	    		request.setAttribute("list", list);
	    		//response.setHeader("refresh", "0.1;url=/dxtest/Xiugai.jsp");
	    		request.getRequestDispatcher("Xiugai.jsp").forward(request, response); 
	        }
	    	
		} catch (Exception e) {
			// TODO: handle exception
			out.println("<script charset='UTF-8' language='javascript' type='text/javascript'>  alert('请上传小于50M文件') ;</script>");
			request.setAttribute("list", list); 
			//response.setHeader("refresh", "0.1;url=/dxtest/Xiuga.jsp");
			request.getRequestDispatcher("Xiugai.jsp").forward(request, response); 
		}
	    
	}

}
