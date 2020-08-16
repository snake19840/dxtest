package com.clas;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Date;

import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPReply;






public class Update {

	/** �����ַ����� */
	private static String LOCAL_CHARSET = "GBK";
	 
	// FTPЭ�����棬�涨�ļ�������Ϊiso-8859-1
	private static String SERVER_CHARSET = "ISO-8859-1";
	
	 
	/*
	 * public static void main(String[] args){
	 * Upload("xx.xxx.xxx.xx",21,"xxxx","xxxxx","D:\\123.xls","1123.xls"); }
	 */
	
	    /**
	     * ��Ҫ�Ĳ��� ������  ftp��ַ  ftp�˿�  ftp�û���  ftp���� ��Ҫ�ϴ����ļ�·��  �ϴ����ļ�������
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
							 "OPTS UTF8", "ON"))){// ������������UTF-8��֧�֣����������֧�־���UTF-8���룬�����ʹ�ñ��ر��루GBK��.
			 LOCAL_CHARSET = "UTF-8";
			 }
			 ftpClient.setControlEncoding(LOCAL_CHARSET);
			 ftpClient.enterLocalPassiveMode();// ���ñ���ģʽ
			
			 }}
			 
			
		// result = ftpClient.login(userName, password);
		// System.out.println("result1:"+result);
		 ftpClient.enterLocalPassiveMode();
		 //System.out.println("srcFile:"+srcFile);
		 fis = new FileInputStream(srcFile);
		
		 //�����ϴ�Ŀ¼

		 ftpClient.changeWorkingDirectory(path);
		
		 ftpClient.setBufferSize(1024);

		 ftpClient.setControlEncoding("UTF-8");
		  //ftpClient.setControlEncoding("GBK");

		 // �����ļ����ͣ������ƣ�

		 ftpClient.setFileType(FTPClient.BINARY_FILE_TYPE);

		 result = ftpClient.storeFile(destName, fis);
		// System.out.println("result:"+result);
		 
		 ftpClient.logout();	//�ļ��ϴ���ϣ��˳���¼
		 
		 return result;
		
		 } catch (NumberFormatException e) {

		 System.out.println("FTP�˿����ô���:��������:");

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

		 throw new RuntimeException("�ر�FTP���ӷ����쳣��", e);

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
	            //�����ϴ�Ŀ¼
	             //�ڸ�Ŀ¼�´���003�ļ���
	            ftpClient.makeDirectory("dxtest");
	             //�л������ռ䵽003�ļ�����
	            ftpClient.changeWorkingDirectory("dxtest/");
	             //���� �ļ���Ϊ fileTimeName ���ļ���
			
			 // ftpClient.makeDirectory(fileTimeName); //�л����ռ����Ŀ¼��
			//  ftpClient.changeWorkingDirectory(fileTimeName+"/"); //���� �ļ���Ϊ  FF-FF-FF-FF-FF-FF ���ļ��� 
			// ftpClient.makeDirectory("FF-FF-FF-FF-FF-FF");
			  //�л����ռ����Ŀ¼�� ftpClient.changeWorkingDirectory("FF-FF-FF-FF-FF-FF/");
			
	            
	            ftpClient.setBufferSize(1024);
	            ftpClient.setControlEncoding("GBK");
	 
	            //�����ļ����ͣ������ƣ�
	            ftpClient.setFileType(FTPClient.BINARY_FILE_TYPE);
	            ftpClient.enterLocalPassiveMode();
	            boolean flag = ftpClient.storeFile(new String(ftpFile.getBytes("UTF-8"),"iso-8859-1"),fis);
	       
	  
	            //����ļ��ϴ��ɹ� �����ϴ�һ�� ����ļ� [Ҳ���Բ�Ҫ]
	            FileInputStream fis_2 = null;
	            if(flag){
	                fis_2=new FileInputStream(new File(filePath));
	                boolean flag_1 =ftpClient.storeFile(new String((ftpFile+".ok").getBytes("UTF-8"),"iso-8859-1"),fis_2);
	            }
	            fis.close();
	            fis_2.close();
	        } catch (IOException e) {
	            e.printStackTrace();
	            throw new RuntimeException("FTP�ͻ��˳���", e);
	        } finally {
	            IOUtils.closeQuietly(fis);
	            try {
	                ftpClient.disconnect();
	            } catch (IOException e) {
	                e.printStackTrace();
	                throw new RuntimeException("�ر�FTP���ӷ����쳣��", e);
	            }
	        }
	    }
		 
*/
		 
}
		 

