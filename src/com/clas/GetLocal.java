package com.clas;

import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;

public class GetLocal {
	

	public  String getLocalId() {
		String a="";
	    try {
	        InetAddress addr = InetAddress.getLocalHost();
//	        System.out.println("IP地址：" + addr.getHostAddress() + "，主机名：" + addr.getHostName());
	        a=addr.getHostName();
	    } catch (UnknownHostException e) {
	        e.printStackTrace();
	    }
	    
	    return a;
	}
	
	public String getPath() {
		File directory = new File("");//参数为空 
		String courseFile = null;
		try {
			courseFile = directory.getCanonicalPath();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
//		System.out.println(courseFile); 
		return courseFile;
	}
	
	
		static GetLocal gl=new GetLocal();
		public static final String  ID=gl.getLocalId();
		public static final String  PATH=gl.getPath();
		
	
	
	public static void main(String[] args) {
//		GetLocal gl=new GetLocal();
//		String a=gl.getPath();
		System.out.println(PATH);
	}
}
