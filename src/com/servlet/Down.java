package com.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Down
 */
@WebServlet("/Down")
public class Down extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		 String path=request.getParameter("path");
		 System.out.println("path"+path);
		 path="/usr/tomcat/apache-tomcat-8.5.43/webapps/dxtest/upload/"+path;
		 path=new String(path.getBytes("UTF-8"));
			System.out.println("path:"+path);
		     File file = new File(path);                                        //创建文件对象
		     InputStream in = new FileInputStream(file);
			
		     OutputStream os = response.getOutputStream();

		     response.addHeader("Content-Disposition", "attachment;filename="

		              + new String(file.getName().getBytes("GBK"),"iso-8859-1"));  
		     
		     response.addHeader("Content-Length", file.length() + "");

		     response.setCharacterEncoding("utf-8");

		     response.setContentType("application/octet-stream");

		     int data = 0;
		     while ((data = in.read()) != -1) {                                    //通过流向文件写数据

		         os.write(data);

		     }
		     os.close();                                                     //关闭流

		     in.close();
		     
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
