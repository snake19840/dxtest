package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.clas.Equ;
import com.clas.EquFile;
import com.servlet.DeleteFileServlet;

public class FileDao {
	static Connection conn = null;
	
	
	public static String snFile(String url) {
		String snFile=null;
		try {
			int inti=1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql = "delete from dxtestfile where url=?";
			String sql2 = " select distinct id from (select * from dxtestfile where url=?)";
			PreparedStatement ps2 = conn.prepareStatement(sql2);
		//	System.out.println(url);
			ps2.setString(1, url);
			ResultSet rs2 = ps2.executeQuery();
			while (rs2.next()) {
		//		System.out.println("====111");
				snFile=rs2.getString(1);
				
			}
		//	System.out.println("==="+snFile);
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, url);
			ResultSet rs = ps.executeQuery();
			
			rs.close();
			rs2.close(); 
		      ps.close();
		      ps2.close();
		      conn.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return snFile;
	}
	
	public List<EquFile> files(int id) {
		List<EquFile> list=new ArrayList<EquFile>();
		try {
			conn = com.clas.JDBCconnect.getConnection();
			String sql = "select * from dxtestfile where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
		      ps.setInt(1, id);
		      ResultSet rs = ps.executeQuery();
		      while (rs.next()) {
		          EquFile equFile=new EquFile();
		          equFile.setId(rs.getInt("id"));
		          equFile.setUrl(rs.getString("url"));
		          equFile.setRedate(rs.getString("redate"));
		          list.add(equFile);
		      }
		      rs.close();
		      
		      ps.close();
		      
		      conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	
	public static void deleteFile(String url) {
		System.out.println("url"+url);
		try {
			conn=com.clas.JDBCconnect.getConnection();
			String sql="delete from dxtestfile where url=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, url);
			ps.executeUpdate();
			ps.close();
			conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
