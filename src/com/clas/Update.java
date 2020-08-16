package com.clas;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Date;

import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPReply;






public class Update {

	/** 本地字符编码 */
	private static String LOCAL_CHARSET = "GBK";
	 
	// FTP协议里面，规定文件名编码为iso-8859-1
	private static String SERVER_CHARSET = "ISO-8859-1";
	
	 
	/*
	 * public static void main(String[] args){
	 * Upload("xx.xxx.xxx.xx",21,"xxxx","xxxxx","D:\\123.xls","1123.xls"); }
	 */
	
	    /**
	     * 需要的参数 依次是  ftp地址  ftp端口  ftp用户名  ftp密码 想要上传的文件路径  上传后文件的名称
	     * @param url
	     * @param port
	     * @param username
	     * @param password
	     * @param filePath
	     * @param ftpFile
	     */
	 public static boolean Upload(String ftpUrl, String userName,String password,File srcFile,String destName,String path) throws IOException {
	 
		 
		 
		 
		 destName = new String(destName.getBytes(LOCAL_CHARSET),SERVER_CHARSET);
		 
		 FTPClient ftpClient = new FTPClient();

		 FileInputStream fis = null;
		
		 boolean result = false;
		// System.out.println(5555555);
		 
		 try {
			 
			 ftpClient.connect(ftpUrl);
			 
			 if (FTPReply.isPositiveCompletion(ftpClient.getReplyCode())) {
				 if (ftpClient.login(userName, password)) {
					 if (FTPReply.isPositiveCompletion(ftpClient.sendCommand(
							 "OPTS UTF8", "ON"))){// 开启服务器对UTF-8的支持，如果服务器支持就用UTF-8编码，否则就使用本地编码（GBK）.
			 LOCAL_CHARSET = "UTF-8";
			 }
			 ftpClient.setControlEncoding(LOCAL_CHARSET);
			 ftpClient.enterLocalPassiveMode();// 设置被动模式
			
			 }}
			 
			
		// result = ftpClient.login(userName, password);
		// System.out.println("result1:"+result);
		 ftpClient.enterLocalPassiveMode();
		 //System.out.println("srcFile:"+srcFile);
		 fis = new FileInputStream(srcFile);
		
		 //更改上传目录

		 ftpClient.changeWorkingDirectory(path);
		
		 ftpClient.setBufferSize(1024);

		 ftpClient.setControlEncoding("UTF-8");
		  //ftpClient.setControlEncoding("GBK");

		 // 设置文件类型（二进制）

		 ftpClient.setFileType(FTPClient.BINARY_FILE_TYPE);

		 result = ftpClient.storeFile(destName, fis);
		// System.out.println("result:"+result);
		 
		 ftpClient.logout();	//文件上传完毕，退出登录
		 
		 return result;
		
		 } catch (NumberFormatException e) {

		 System.out.println("FTP端口配置错误:不是数字:");

		 throw e;

		 } catch (FileNotFoundException e) {

		 throw new FileNotFoundException();

		 } catch (IOException e) {

		 throw new IOException(e);

		 } finally {

		 try {

		 if(fis!=null){

		 fis.close();

		 }

		 ftpClient.disconnect();

		 } catch (IOException e) {

		 throw new RuntimeException("关闭FTP连接发生异常！", e);

		 }

		 }

		 }
	 

	
		 
	 
/*	 
	 public static void Upload2(String url,Integer port,String username,String password,String filePath,String ftpFile) {
	    	
	        FTPClient ftpClient = new FTPClient();
	        System.out.println("url:"+url);
	        FileInputStream fis = null;
	        boolean result = false;
	        
	        try {
	            ftpClient.connect(url);
	            result=    ftpClient.login(username, password);
	        
	            File srcFile = new File(filePath);
	            fis = new FileInputStream(srcFile);
	    
	            
	            String fileTimeName = String.valueOf(new Date().getTime());
	            //设置上传目录
	             //在根目录下创建003文件夹
	            ftpClient.makeDirectory("dxtest");
	             //切换工作空间到003文件夹下
	            ftpClient.changeWorkingDirectory("dxtest/");
	             //创建 文件名为 fileTimeName 的文件夹
			
			 // ftpClient.makeDirectory(fileTimeName); //切换工空间带该目录下
			//  ftpClient.changeWorkingDirectory(fileTimeName+"/"); //创建 文件名为  FF-FF-FF-FF-FF-FF 的文件夹 
			// ftpClient.makeDirectory("FF-FF-FF-FF-FF-FF");
			  //切换工空间带该目录下 ftpClient.changeWorkingDirectory("FF-FF-FF-FF-FF-FF/");
			
	            
	            ftpClient.setBufferSize(1024);
	            ftpClient.setControlEncoding("GBK");
	 
	            //设置文件类型（二进制）
	            ftpClient.setFileType(FTPClient.BINARY_FILE_TYPE);
	            ftpClient.enterLocalPassiveMode();
	            boolean flag = ftpClient.storeFile(new String(ftpFile.getBytes("UTF-8"),"iso-8859-1"),fis);
	       
	  
	            //如果文件上传成功 则再上传一个 标记文件 [也可以不要]
	            FileInputStream fis_2 = null;
	            if(flag){
	                fis_2=new FileInputStream(new File(filePath));
	                boolean flag_1 =ftpClient.storeFile(new String((ftpFile+".ok").getBytes("UTF-8"),"iso-8859-1"),fis_2);
	            }
	            fis.close();
	            fis_2.close();
	        } catch (IOException e) {
	            e.printStackTrace();
	            throw new RuntimeException("FTP客户端出错！", e);
	        } finally {
	            IOUtils.closeQuietly(fis);
	            try {
	                ftpClient.disconnect();
	            } catch (IOException e) {
	                e.printStackTrace();
	                throw new RuntimeException("关闭FTP连接发生异常！", e);
	            }
	        }
	    }
		 
*/
		 
}
		 

