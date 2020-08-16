package com.dao;

import java.sql.Connection;

import javax.xml.bind.annotation.XmlElementDecl.GLOBAL;

import com.clas.GetLocal;
import com.clas.JDBCconnect;

import net.bytebuddy.asm.Advice.This;

public class UrlDao {
	
	
	//String #Gson=gson.toJson(#); 
	//session.setAttribute("#Gson", #Gson);

//	<----------¹«Ë¾------------>
		

	
	public static String urlImg() {
		
		String	urlImg=GetLocal.PATH+"\\WebContent\\upload\\img\\picture\\";
//if (GetLocal.ID.equals("DESKTOP-94U05QV")) {
//	urlImg="D:\\Users\\yujian\\eclipse-workspace\\dxtest\\WebContent\\upload\\img\\picture\\";
//		}
//else if (GetLocal.ID.equals("")) {
//			 urlImg="D:/WebService/tomcat/apache-tomcat-8.5.47/webapps/dxtest/upload/img/picture/";
//		}
//else if (GetLocal.ID.equals("PC-20160510KFAF")) {
//	urlImg="D:/WebService/apache-tomcat-8.5.47/webapps/dxtest/upload/img/picture/";
//}
return urlImg;
	}
	
	
	public static String urlContract() {
//		String urlImg="";
		String	urlImg=GetLocal.PATH+"\\WebContent\\upload\\Contract\\";
//if (GetLocal.ID.equals("DESKTOP-94U05QV")) {
//	 urlImg="D:\\Users\\yujian\\eclipse-workspace\\dxtest";
//
//		}
//
//else if (GetLocal.ID.equals("")) {
//			 urlImg="D:/WebService/tomcat/apache-tomcat-8.5.47/webapps/dxtest/upload/Contract/";
//				
//		}
//else if (GetLocal.ID.equals("PC-20160510KFAF")) {
//	urlImg="D:/WebService/apache-tomcat-8.5.47/webapps/dxtest/upload/Contract/";
//	
//}
return urlImg;
		}
	
	
	public static String urlEqu() {
//		String urlImg="";
		String	urlImg=GetLocal.PATH+"\\WebContent\\upload\\equ\\";
//if (GetLocal.ID.equals("DESKTOP-94U05QV")) {
//	urlImg="D:\\Users\\yujian\\eclipse-workspace\\dxtest";
//		}
//
//else if (GetLocal.ID.equals("")) {
//			 urlImg="D:/WebService/tomcat/apache-tomcat-8.5.47/webapps/dxtest/upload/equ/";
//		}
//else if (GetLocal.ID.equals("PC-20160510KFAF")) {
//	urlImg="D:/WebService/apache-tomcat-8.5.47/webapps/dxtest/upload/equ/";
//}
return urlImg;
		}
//	public static void main(String[] args) {
//		
//		System.out.println(GetLocal.PATH);
//	}
	
}
