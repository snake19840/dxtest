package com.servlet;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;



//@MultipartConfig(location = "/usr/tomcat/apache-tomcat-8.5.43/webapps/upload",maxFileSize=1024*1024*50)
@MultipartConfig(location = "/usr/tomcat/apache-tomcat-8.5.43/webapps/dxtest/upload",maxFileSize=1024*1024*500)
//@MultipartConfig(location = "D:\\",maxFileSize=1024*1024*50)
public class UploadServlet
  extends HttpServlet
{
  private static final long serialVersionUID = 1L;

  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=utf-8");
    PrintWriter out = response.getWriter();
    if (!ServletFileUpload.isMultipartContent(request)) {
      
      PrintWriter writer = response.getWriter();
      writer.println("Error: 表单必须包含 enctype=multipart/form-data");
      writer.flush();
      
      return;
    } 
    
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
    
    String did=request.getParameter("did");
    
    DiskFileItemFactory factory = new DiskFileItemFactory();
    factory.setSizeThreshold(3145728);
    factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
    ServletFileUpload upload = new ServletFileUpload(factory);
    upload.setFileSizeMax(524288000L);
    upload.setSizeMax(52428800L);
    upload.setHeaderEncoding("UTF-8");

 
 
    String rootPath = "/usr/tomcat/apache-tomcat-8.5.43/webapps/dxtest/upload/"; 
//	String rootPath = "D:\\";
   // rootPath=rootPath.substring(rootPath.indexOf("/"),rootPath.lastIndexOf("/"));
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
	       // int  fname1=h.lastIndexOf("\\")+1;
	        //String fname1 = ap.getSubmittedFileName();
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
	          
	          out.println("<script charset='UTF-8' language='javascript' type='text/javascript'> alert('文件已经存在!') ;</script>");
	          
	          response.setHeader("refresh", "0.1;url=/dxtest/add.jsp"); 
	        } else {
	        	p.write(rootPath+fname2);
	        	// p.write(String.valueOf(rootPath) + fname2);
	        	
	        	Connection	conn = com.clas.JDBCconnect.getConnection();
	            
	        	String sql = "insert into dxtest(sid,stdate,sdate,edate,redate,pname,use,ownname,proname,manname,agename,mantyp,sname,styp,pos,ip,"
						+ "port,cpu,memory,disk,syn,oracle,sn,oth,sroot,spwd,oroot,opwd,aroot,apwd,title,url,did) "
						+ "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				// 获取PreparedStatement
	        	PreparedStatement ps = conn.prepareStatement(sql);
				// 对SQL语句中的第1个参数赋值
				/* ps.setString(1, book.getName());
				System.out.println("name："+book.getName()); */
				// 对SQL语句中的第2个参数赋值
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
				 ps.setString(32,u);ps.setString(33,did);
				
				// 执行更新操作，返回所影响的行数
				int row = ps.executeUpdate();
				
				// 判断是否更新成功
				if(row > 0){
					// 更新成输出信息
					out.println("<script charset='UTF-8' language='javascript' type='text/javascript'> alert('成功添加了1条数据！') ;</script>");
					//response.sendRedirect("/test/index_login.jsp");// 为空跳转到loginFail.jsp（失败）
					response.setHeader("refresh", "0.1;url=/dxtest/add.jsp");          				
				}
		}
        
        //ApplicationPart ap = (ApplicationPart)p;
        
        	
        }
      
      }
      else
      {

        
        out.println("<script charset='UTF-8' language='javascript' type='text/javascript'>  alert('上传文件类型错误,请上传目录mutipart/form-data类型的文件') ;</script>");
        response.setHeader("refresh", "0.1;url=/dxtest/add.jsp");
      }
    
    } catch (Exception ex) {
      //throw new ServerException(ex.getMessage());
     out.println("<script charset='UTF-8' language='javascript' type='text/javascript'>  alert('请上传小于50M文件') ;</script>");
     response.setHeader("refresh", "0.1;url=/dxtest/add.jsp");
    } 
    
    //response.setHeader("refresh", "0.1;url=/dxtest/add.jsp");
  }
}
