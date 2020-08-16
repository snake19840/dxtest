<%@page import="com.dao.UrlDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*,java.io.*"    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

//String path="D:\\FW-2019-08-21394.jpg";

    //String path="/usr/tomcat/apache-tomcat-8.5.43/webapps/upload/FW-2019-08-21413.jpg";
     String path=request.getParameter("contractpicture"); //获取用于文件保存地址
//	System.out.println("path1:"+path1);
     path=java.net.URLDecoder.decode(path,"UTF-8");
   //linux
   //   path="/usr/tomcat/apache-tomcat-8.5.43/webapps/dxtest/upload/"+path;
   //test2
 //   path="/usr/tomcat/apache-tomcat-8.5.43/webapps/dxtest/upload/"+path;
   //windows
    //path="D:\\TEST\\"+path;
   String root=UrlDao.urlContract();
   path=root+path; 
   
 //  path="D:/dxtest/upload/Contract/"+path; 
  //windows
   path=new String(path.getBytes("GBK"));
  //linux
//  path=new String(path.getBytes("UTF-8"));
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

%>


</body>
</html>