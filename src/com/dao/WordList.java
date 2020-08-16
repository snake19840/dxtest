package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.clas.Equ;
import com.clas.JDBCconnect;

public class WordList {
	public List<Equ> selAll(String sd ,String ed) {
		List<Equ> list=new ArrayList<Equ>();
		List<Equ> listTemp=new ArrayList<Equ>();
		
		try {
			Connection conn=JDBCconnect.getConnection();
			Statement st=conn.createStatement();
			String sql="SELECT DISTINCT SDATE,EDATE FROM DXTESTWORK where sdate>'"+sd+"' and edate<='"+ed+"'";
			ResultSet rs=st.executeQuery(sql);
			while (rs.next()) {
				Equ e =new Equ();
				e.setSdate(rs.getString("sdate"));
				e.setEdate(rs.getString("edate"));
				listTemp.add(e);
			}
			for (int  i = 0;  i < list.size();  i++) {
				sd=listTemp.get(i).getSdate();
				ed=listTemp.get(i).getEdate();
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
	}
}
