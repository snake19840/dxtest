package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.clas.Equ;

public class EquDao {

	Connection conn = null;
					 
	public List<Equ> find(int page,String stdate,String redate,String pname,String use,String ownname,String proname,
			String mantyp,String sname,String styp,String pos,String ip,String cpu,String memory,
			String disk,String syn,String sn,String sid) {
		
	    List<Equ> list = new ArrayList<Equ>(); 
	    
	    String sql =null;
	    conn = com.clas.JDBCconnect.getConnection();
	    
	    sql = "SELECT * FROM  ( SELECT A.*, ROWNUM RN  FROM (select * from dxtest where nvl(stdate,0) like ? and nvl(redate,0) like ? and nvl(pname,0) like ? "
	    		+ "and nvl(use,0) like ? and nvl(ownname,0) like ? and nvl(proname,0) like ? and nvl(mantyp,0) like ? and nvl(sname,0) like ? "
	    		+ "and nvl(styp,0) like ? and nvl(pos,0) like ? "
	    		+ "and nvl(ip,0) like ? and nvl(cpu,0) like ? and nvl(memory,0) like ? and nvl(disk,0) like ? and nvl(syn,0) like ? "
	    		+ "and nvl(sn,0) like ? and nvl(sid,0) like ? order by id desc) A  )  WHERE RN BETWEEN ? AND ?";
	    try {
	    	
	    	PreparedStatement ps = conn.prepareStatement(sql);
	    	ps.setString(1, stdate);
    		ps.setString(2, redate);
    		ps.setString(3, pname);
		    ps.setString(4, use);
		    ps.setString(5, ownname);
		    ps.setString(6, proname);
	    	ps.setString(7, mantyp);
	    	ps.setString(8, sname);
			ps.setString(9, styp);
			
			ps.setString(10, pos);
		    ps.setString(11, ip);
		    ps.setString(12, cpu);
			ps.setString(13, memory);
			ps.setString(14, disk);
			ps.setString(15, syn);
			
			ps.setString(16, sn);
			ps.setString(17, sid);
		  ps.setInt(18, (page - 1) * Equ.PAGE_SIZE + 1);
		    ps.setInt(19, page * Equ.PAGE_SIZE );
			
		    
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
    
	
	public int findCount(String stdate,String redate,String pname,String use,String ownname,String proname,
			String mantyp,String sname,String styp,String pos,String ip,String cpu,String memory,
			String disk,String syn,String sn,String sid) {
		
		int count=0 ; 
		conn = com.clas.JDBCconnect.getConnection();
		 String sql=null;
		 sql ="select count(*) from dxtest where nvl(stdate,0) like ? and nvl(redate,0) like ? and nvl(pname,0) like ? "
		 		+ "and nvl(use,0) like ? and nvl(ownname,0) like ? and nvl(proname,0) like ? and nvl(mantyp,0) like ? and nvl(sname,0) like ? "
		 		+ "and nvl(styp,0) like ? and nvl(pos,0) like ? and nvl(ip,0) like ? and nvl(cpu,0) like ? "
		 		+ "and nvl(memory,0) like ? and nvl(disk,0) like ? and nvl(syn,0) like ? and nvl(sn,0) like ? and nvl(sid,0) like ?";
		
		 
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, stdate);
    		ps.setString(2, redate);
    		ps.setString(3, pname);
		    ps.setString(4, use);
		    ps.setString(5, ownname);
		    ps.setString(6, proname);
	    	ps.setString(7, mantyp);
	    	ps.setString(8, sname);
			ps.setString(9, styp);
			
			ps.setString(10, pos);
		    ps.setString(11, ip);
		    ps.setString(12, cpu);
			ps.setString(13, memory);
			ps.setString(14, disk);
			ps.setString(15, syn);
			
			ps.setString(16, sn);
			ps.setString(17, sid);
			ResultSet rs=ps.executeQuery();
			if (rs.next())
		      {
		        count = rs.getInt(1);
		      }
			
		      rs.close();
		      conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return count;
	}
}
