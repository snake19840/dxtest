package com.servlet;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


import com.clas.Equ;
import com.clas.SelectAll;
import com.google.gson.Gson;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class UploadPicture5
 */
@WebServlet("/UploadPicture5")
public class UploadPicture5 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String UPLOAD_DIRECTORY = "pic_waring";
	  private static final int MEMORY_THRESHOLD = 31457280;
	  private static final int MAX_FILE_SIZE = 419430400;
	  private static final int MAX_REQUEST_SIZE = 524288000;
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
	    response.setContentType("text/html;charset=utf-8");
	    HttpSession session = request.getSession();
	    PrintWriter out = response.getWriter();
//	    out.print("<script language='javascript'>alert('账号或者密码错误！');window.location.href='../TestWarning5.jsp'</script>");
//	    out.close();
	    
	    String sn=request.getParameter("sn");
	   String message=request.getParameter("message");
	   String userid=request.getParameter("userid");
	   String edate=request.getParameter("edate");
		String sdate=request.getParameter("sdate");
		String statu=request.getParameter("statu");
		String nowdate=request.getParameter("nowdate");
		String stno=request.getParameter("stno");
		String sdate1=sdate.substring(0,10);
		String stnonew=sdate1+System.currentTimeMillis();
		String time=request.getParameter("time");
		
		nowdate=java.net.URLDecoder.decode(nowdate,"UTF-8");
		message=java.net.URLDecoder.decode(message,"UTF-8");
		statu=java.net.URLDecoder.decode(statu,"UTF-8");
		userid=java.net.URLDecoder.decode(userid,"UTF-8");
		
		
		
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
	    
	    String urlString=request.getParameter("url");
	 //   System.out.println("url:"+urlString);
//Linux与Windows改变路径切换
 //String rootPath = "/usr/tomcat/apache-tomcat-8.5.43/webapps/dxtest/pic_waring/temp/"; 
		 String rootPath = "D:/WebService/tomcat/apache-tomcat-8.5.47/webapps/dxtest/img/picture/";
	 
		 
		 File uploadDir = new File(rootPath);
	    if (!uploadDir.exists()) {
	      uploadDir.mkdir();
	    }
	    int MAX_SIZE = 104857600;
	    DataInputStream in = null;
	    FileOutputStream fileOut = null;
	    
	    String contentType = request.getContentType();
	    
	    
	    try {
	    	if (contentType.indexOf("mulFtipart/form-data") >= 0)
	        {
	          in = new DataInputStream(request.getInputStream());
	          int formDataLength = request.getContentLength();
	          if (formDataLength > MAX_SIZE) {
//	            out.print("上传的字节不可以超过" + MAX_SIZE + "字节");
	            out.print("<script language='javascript'>alert('上传的字节不可以超过" + MAX_SIZE + "字节');window.location.href='TestWarning5.jsp'</script>");
	    	    out.close();
	           
	            return;
	          }        
	    
	        }
	    	
	    	Part p = request.getPart("url");
	          long fileSize = 1024*1024*500;
	          long ll=p.getSize();
	          if (ll>fileSize) {
	          	out.print("<script language='javascript'>alert('请上传小于50M的文件!');window.location.href='TestWarning5.jsp'</script>");
	    	    out.close();
	  		}else {
	  			String h = p.getHeader("content-disposition");
	  			
	  	        int fname1 = h.lastIndexOf("filename=\"") + 10;
	  	        
	  	       // String fname2 = fname1.substring(path_idx, fname1.length());
	  	        String fname2=h.substring(fname1, h.length()-1);
	  	        fname2=fname2.substring(fname2.lastIndexOf("\\")+1);
	  	        String u=rootPath+fname2;
	  	        
	  	        File fileDir = new File(rootPath);
	  	        if (!fileDir.exists()) {
	  	          fileDir.mkdirs();
	  	        }    
	          
	  	      File checkFile = new File(u);
	  	    if (checkFile.exists()) {
		          
		          out.print("<script language='javascript'>alert('文件已经存在!');window.location.href='TestWarning5.jsp'</script>");
		    	    out.close();
		        } else {  
	  	      
	  	      
		        	p.write(rootPath+fname2);
		        String	picture="upload/img/picture/"+fname2;
		        //System.out.println(urlLine);
		        	// p.write(String.valueOf(rootPath) + fname2);
		        
		        String string1=new String( statu );
				String string2=new String( "恢复" );
		        if (string1.equals(string2)) {
				//	System.out.println("wqwqw");
					SelectAll.updata_dxtestwork2(sn, message, time, userid, nowdate, statu, picture, edate, sdate1, stnonew);
					
				}else {
					SelectAll.updata_dxtestwork(sn, message, time, userid, nowdate, statu, picture, edate, sdate1, stnonew);
				}
		        
		        
		        List<Equ> list=SelectAll.SelectAllMessage(sn);
		        
				session.setAttribute("list_WarningServlet2",list); 
		  
				out.print("<script language='javascript'>alert('成功添加了1条数据！');window.location.href='TestWarning5.jsp'</script>");
	    	    out.close();
				
		        }
	  		}
			
	    	
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
