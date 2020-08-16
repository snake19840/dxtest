package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.clas.Equ;

public class ReturnDao {

	Connection conn = null;
	
	public List<Equ> retu(int id) {
		
	
	List<Equ> list = new ArrayList<Equ>();
	 
	try {
		Connection  conn = com.clas.JDBCconnect.getConnection();
	      String sql = "select * from dxtest where id=?";
	      PreparedStatement ps = conn.prepareStatement(sql);
	      ps.setInt(1, id);
	      
	      ResultSet rs = ps.executeQuery();
	      
	      while (rs.next()) {
	          Equ equ=new Equ();
	          
	          equ.setId(rs.getInt("id"));
	          equ.setSid(rs.getString("sid"));
	          equ.setStdate(rs.getString("stdate"));
	          equ.setSdate(rs.getString("sdate"));
	          equ.setEdate(rs.getString("edate"));
	          equ.setRedate(rs.getString("redate"));
	          equ.setPname(rs.getString("pname"));
	          equ.setUse(rs.getString("use"));
	          equ.setOwnname(rs.getString("ownname"));
	          equ.setProname(rs.getString("proname"));
	          equ.setManname(rs.getString("manname"));
	          equ.setAgename(rs.getString("agename"));
	          equ.setMantyp(rs.getString("mantyp"));
	          equ.setSname(rs.getString("sname"));
	          equ.setStyp(rs.getString("styp"));
	          equ.setPos(rs.getString("pos"));
	          equ.setIp(rs.getString("ip"));
	          equ.setPort(rs.getString("port"));
	          equ.setCpu(rs.getString("cpu"));
	          equ.setMemory(rs.getString("memory"));
	          equ.setDisk(rs.getString("disk"));
	          equ.setSyn(rs.getString("syn"));
	          equ.setOracle(rs.getString("oracle"));
	          equ.setSn(rs.getString("sn"));
	          equ.setOth(rs.getString("oth"));
	          equ.setSroot(rs.getString("sroot"));
	          equ.setSpwd(rs.getString("spwd"));
	          equ.setOroot(rs.getString("oroot"));
	          equ.setOpwd(rs.getString("opwd"));
	          equ.setAroot(rs.getString("aroot"));
	          equ.setApwd(rs.getString("apwd"));
	          equ.setTitle(rs.getString("title"));
	        equ.setUrl(rs.getString("url"));
	          equ.setDid(rs.getString("did"));
	          		         

	         list.add(equ);
	         
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
	
	
	public List<Equ> retua(int id) {
		
		
		List<Equ> list = new ArrayList<Equ>();
		 
		try {
			Connection  conn = com.clas.JDBCconnect.getConnection();
		      String sql = "select * from dxtesttemp where id=?";
		      PreparedStatement ps = conn.prepareStatement(sql);
		      ps.setInt(1, id);
		      
		      ResultSet rs = ps.executeQuery();
		      
		      while (rs.next()) {
		          Equ equ=new Equ();
		          
		          equ.setId(rs.getInt("id"));
		          equ.setSid(rs.getString("sid"));
		          equ.setStdate(rs.getString("stdate"));
		 
		          equ.setPname(rs.getString("pname"));
		          equ.setUse(rs.getString("use"));
		          equ.setOwnname(rs.getString("ownname"));
		          equ.setProname(rs.getString("proname"));
		          equ.setManname(rs.getString("manname"));
		          equ.setAgename(rs.getString("agename"));
		          equ.setMantyp(rs.getString("mantyp"));
		          equ.setSname(rs.getString("sname"));
		          equ.setStyp(rs.getString("styp"));
		          equ.setPos(rs.getString("pos"));
		          equ.setIp(rs.getString("ip"));
		          equ.setPort(rs.getString("port"));
		          equ.setCpu(rs.getString("cpu"));
		          equ.setMemory(rs.getString("memory"));
		          equ.setDisk(rs.getString("disk"));
		          equ.setSyn(rs.getString("syn"));
		          equ.setOracle(rs.getString("oracle"));
		          equ.setSn(rs.getString("sn"));
		          equ.setOth(rs.getString("oth"));
	equ.setDid(rs.getString("did"));
		          		         

		         list.add(equ);
		         
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
	
	
}
