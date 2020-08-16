package com.dao;

import java.util.List;

import com.clas.Equ;
import com.clas.SelectAll;
import com.google.gson.Gson;

public class Class_sel {
	String sql="";
	
	
	public String selClassX(String classF,String sql,String classX) {
		
		Gson gson = new Gson();
		//String #Gson=gson.toJson(#); 
		//session.setAttribute("#Gson", #Gson);
		if (classF!="") {
//			System.out.println("有class");
			if (classX.equals("合同类别")) {
				sql="SELECT * FROM contractclass WHERE classfamily='"+classF+"'";
			}else {
				sql="SELECT * FROM CONTRACTPAY WHERE classfamily='"+classF+"'";
			}
		}else {
			if (classX.equals("合同类别")) {
				sql="SELECT * FROM contractclass";
			}else {
				sql="SELECT * FROM CONTRACTPAY ";
			}
		}
		List<Equ> classXlist=SelectAll.Warningstatu(sql);
		String classXlistGson=gson.toJson(classXlist); 
		
		return classXlistGson;
	}
	
}
