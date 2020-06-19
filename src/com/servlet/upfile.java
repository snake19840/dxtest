package com.servlet;


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.clas.ISOtoUTF;
import com.clas.SelectAll;
import com.dao.UrlDao;
import com.google.gson.Gson;


/**
 * Servlet implementation class upfile
 */
@WebServlet("/upfile")
public class upfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 // 上传文件存储目录
   
	private static final String UPLOAD_DIRECTORY = "upload\\";
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Gson gson = new Gson();
		//String ##Gson=gson.toJson(##); 
		//session.setAttribute("##", ##Gson);
	
		DiskFileItemFactory factory = new DiskFileItemFactory();
		//System.out.println(bdPushID2.getA());
		ServletFileUpload upload = new ServletFileUpload(factory);
		String contractid="";
		String contractpicture="";
		 String plan1="";
		 String fileName=null;
		 String file=null;
		 FileItem ff=null;
         String filePath = null;
         File storeFile=null;
        PrintWriter out = response.getWriter();
         SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
         Date date = new Date(System.currentTimeMillis());
         String nowdate = formatter.format(date);
                                       
		 List<FileItem> list = null;
		 List<String> pList = new ArrayList<>();
		  String uploadPath = UrlDao.urlContract();
		try {
            upload.setHeaderEncoding("UTF-8");  
			@SuppressWarnings("rawtypes")
			List items =  upload.parseRequest(request);  
			
			@SuppressWarnings("rawtypes")
			Iterator it = items.iterator();
            while (it.hasNext()) {
            	FileItem item = (FileItem) it.next();
            	 if(item.getFieldName().equals("contractid")){//前台的参数传递的名字，
            		 contractid=item.getString(); //获得表单参数！！！！！
                     }
             	 if(item.getFieldName().equals("contractpicture")){//前台的参数传递的名字，
             		contractpicture=item.getString(); //获得表单参数！！！！！
                     }
             	 if(item.getFieldName().equals("plan1")){//前台的参数传递的名字，
             		plan1=ISOtoUTF.getIsoToUtf_8(item.getString()); //获得表单参数！！！！！
                      }
              if (item.getName()!=null) {
            	  ff=item;
            	 fileName = item.getName();
                 filePath = uploadPath +nowdate+ fileName;
                 storeFile = new File(filePath);
                 
			}
                
            }
            
//            System.out.println(plan1);
//            System.out.println(contractid);
            String sql ="select COUNT(CONTRACTPICTURE) from DXTESTCONTRACTFILE WHERE CONTRACTID='"+nowdate+ fileName+"' and PLAN1='"+plan1+"'";
            int a=SelectAll.getCount(sql);
            if (a==0) {
            	ff.write(storeFile);
            	  sql=" insert into DXTESTCONTRACTFILE (CONTRACTPICTURE,CONTRACTID,PLAN1) values('"+nowdate+ fileName+"','"+contractid+"','"+plan1+"')";
                  boolean Flag =SelectAll.insertItem(sql);
                  out.print("{\"statu\":"+Flag+",\"message\":1}");
      			out.close();
            }else {
            	out.print("{\"statu\":\"success\",\"message\":2}");
				out.close();
			}
           
           
		}catch (Exception e) {
			// TODO: handle exception
			out.print("{\"statu\":false,\"message\":3}");
			out.close();
		}
		
//		String contractid=request.getParameter("contractid");
		
//		System.out.println(contractid);
		 
	}

}
