package com.servlet;

import java.io.DataInputStream;
import java.io.File;
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
import com.dao.ContractDao;
import com.dao.UrlDao;
import com.google.gson.Gson;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


/**
 * Servlet implementation class UpDataContractFile
 */
//@MultipartConfig(location = "/usr/tomcat/apache-tomcat-8.5.43/webapps/pic_waring",maxFileSize=1024*1024*50)
//Linux与Windows改变路径切换
//@MultipartConfig(location = "/usr/tomcat/apache-tomcat-8.5.43/webapps/dxtest/pic_waring/temp",maxFileSize=1024*1024*500)
//@MultipartConfig(location = "D:/UpDataContractFile",maxFileSize=1024*1024*50)
//@MultipartConfig(location = "D:/TEST",maxFileSize=1024*1024*50)
//@MultipartConfig(location = "D:/WebService/tomcat/apache-tomcat-8.5.47/webapps/dxtest/upload/Contract",maxFileSize=1024*1024*50)
@MultipartConfig(maxFileSize=1024*1024*50)
@WebServlet("/UpDataContractFile")
public class UpDataContractFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
  

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
		HttpSession session = request.getSession();
		PrintWriter out=response.getWriter();
		String contractid=(String)session.getAttribute("contractid");
		List<Equ> contractListItem=null;
		//System.out.println("contractid="+contractid);
		String paynameString=request.getParameter("payname1")  ;
	   System.out.println("paynameString="+paynameString);
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


//String rootPath = "D:/WebService/tomcat/apache-tomcat-8.5.47/webapps/dxtest/upload/Contract/";
//String rootPath = "D:/dxtest/upload/Contract/";
String rootPath=UrlDao.urlContract();
//File uploadDir = new File(rootPath);
//if (!uploadDir.exists()) {
//  uploadDir.mkdir();
File uploadDir = new File("D:\\dxtest\\");
if (!uploadDir.exists()) {

  uploadDir.mkdir();
}
 uploadDir = new File("D:\\dxtest\\upload\\");
 if (!uploadDir.exists()) {
    	
      uploadDir.mkdir();
    }
 uploadDir = new File("D:\\dxtest\\upload\\Contract\\");
 if (!uploadDir.exists()) {
    uploadDir.mkdir();
    }



//}
int MAX_SIZE = 104857600;
String contentType = request.getContentType();
DataInputStream in = null;

	try {
		if (contentType.indexOf("mulFtipart/form-data") >= 0)
        { 
          in = new DataInputStream(request.getInputStream());
          int formDataLength = request.getContentLength();
          if (formDataLength > MAX_SIZE) {
        	 
//            out.print("上传的字节不可以超过" + MAX_SIZE + "字节");
            out.print("<script language='javascript'>alert('上传的字节不可以超过" + MAX_SIZE + "字节');window.location.href='TestWarning3.jsp'</script>");
    	    out.close();
           
            return;
          }        
    
        }
		
		Part p = request.getPart("url");
        long fileSize = 1024*1024*500;
        long ll=p.getSize();
        if (ll>fileSize) {out.print("<script language='javascript'>alert('请上传小于50M的文件!');window.location.href='TestChakanContractItem.jsp'</script>");
	    out.close();
		}else {
			String h = p.getHeader("content-disposition");
  			
  	        int fname1 = h.lastIndexOf("filename=\"") + 10;
  	      String fname2=h.substring(fname1, h.length()-1);
	        fname2=contractid+"-"+fname2.substring(fname2.lastIndexOf("\\")+1);
	        String u=rootPath+fname2;
	      //  System.out.println(u);
	        File fileDir = new File(rootPath);
	        if (!fileDir.exists()) {
	        fileDir.mkdirs();
	        }
	        File checkFile = new File(u);
	        if (checkFile.exists()) {
	  	    	//System.out.println("文件已经存在");
		          out.print("<script language='javascript'>alert('文件已经存在!');window.location.href='TestChakanContractItem.jsp'</script>");
		    	    out.close();
		        }else {  
		        	p.write(rootPath+fname2);
		        	
		        	String contractpicture=fname2;
		        	ContractDao contractDao=new ContractDao();
		        	contractDao.upPicture(contractid, contractpicture,paynameString);
		        	List<Equ> contractListItemFile=ContractDao.contractListItemFile(contractid);
		        	Gson gson = new Gson();
		    		String contractListItemFileGson=gson.toJson(contractListItemFile); 
		    		session.setAttribute("contractListItemFile", contractListItemFileGson);
//		        	contractListItem=ContractDao.contractListItem(contractid);
//		        	session.setAttribute("contractListItem", contractListItem);
		        	out.print("<script language='javascript'>alert('成功添加了1条数据！');window.location.href='TestChakanContractItem.jsp'</script>");
		    	    out.close();
		        }
			
		}
        	
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
		
		
	}

}
