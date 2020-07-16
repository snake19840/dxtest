package com.clas;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.sun.org.apache.xml.internal.security.Init;
import com.sun.xml.internal.ws.api.pipe.NextAction;

import javafx.css.PseudoClass;

public class SelectAll {
	@SuppressWarnings("resource")

	
	public static void updataT(int id,String stdate,String sn,String pos,String ip,String styp,String sname,String sid,String pname,String use,String ownname,String proname,String manname,String agename,String mantyp,String did,String port,String cpu,String memory,String disk,String syn,String oracle,String oth) {
		try {int inti = 1;
		Connection	conn = com.clas.JDBCconnect.getConnection();
			String sql = "update Dxtest set  stdate=?,sn=?,pos=?,ip=?,styp=?,sname=?,sid=?,pname=?,use=?,ownname=?,proname=?,manname=?,agename=?,mantyp=?,did=?,port=?,cpu=?,memory=?,disk=?,syn=?,oracle=?,oth=?  where id=?";
			PreparedStatement ps2 = null;
			ResultSet rs2=null;
			ps2 = conn.prepareStatement(sql);
			ps2.setString(inti++, stdate);
			ps2.setString(inti++, sn);
			ps2.setString(inti++, pos);
			ps2.setString(inti++, ip);
			ps2.setString(inti++, styp);
			ps2.setString(inti++, sname);
			ps2.setString(inti++, sid);
			ps2.setString(inti++, pname);
			ps2.setString(inti++, use);
			ps2.setString(inti++, ownname);
			ps2.setString(inti++, proname);
			ps2.setString(inti++, manname);
			ps2.setString(inti++, agename);
			ps2.setString(inti++, mantyp);
			ps2.setString(inti++, did);
			ps2.setString(inti++, port);
			ps2.setString(inti++, cpu);
			ps2.setString(inti++, memory);
			ps2.setString(inti++, disk);
			ps2.setString(inti++, syn);
			ps2.setString(inti++, oracle);
			ps2.setString(inti++, oth);
			ps2.setInt(inti++, id);
			rs2=ps2.executeQuery();
		
			ps2.close();
			rs2.close();
			
		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void uptestp(String stdate,String sn,String pos,String ip,String styp,String sname,String sid,String pname,String use,String ownname,String proname,String manname,String agename,String mantyp,String did,String port,String cpu,String memory,String disk,String syn,String oracle,String oth) {
		try {
			int inti = 1;
		Connection	conn = com.clas.JDBCconnect.getConnection();
		String sqlR="select count(*) from Dxtesttemp";
		String sqlin= "insert into Dxtesttemp(stdate,sn,pos,ip,styp,sname,sid,pname,use,ownname,proname,manname,agename,mantyp,did,port,cpu,memory,disk,syn,oracle,oth) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			String sql = "update Dxtesttemp set  stdate=?,sn=?,pos=?,ip=?,styp=?,sname=?,sid=?,pname=?,use=?,ownname=?,proname=?,manname=?,agename=?,mantyp=?,did=?,port=?,cpu=?,memory=?,disk=?,syn=?,oracle=?,oth=?  where rownum=1";
			PreparedStatement ps1 = null;
			PreparedStatement ps2 = null;
			PreparedStatement ps3 = null;
			ps1 = conn.prepareStatement(sqlR);
			ResultSet rs1=ps1.executeQuery();
			ResultSet rs2=null;
			ResultSet rs3=null;		
			int count=0;
			if (rs1.next()) {
				count=rs1.getInt("count(*)");
			}
			
			//System.out.println("count="+count);
			if (count>0) {
				inti = 1;
				conn = com.clas.JDBCconnect.getConnection();
				ps2 = conn.prepareStatement(sql);
				ps2.setString(inti++, stdate);
				ps2.setString(inti++, sn);
				ps2.setString(inti++, pos);
				ps2.setString(inti++, ip);
				ps2.setString(inti++, styp);
				ps2.setString(inti++, sname);
				ps2.setString(inti++, sid);
				ps2.setString(inti++, pname);
				ps2.setString(inti++, use);
				ps2.setString(inti++, ownname);
				ps2.setString(inti++, proname);
				ps2.setString(inti++, manname);
				ps2.setString(inti++, agename);
				ps2.setString(inti++, mantyp);
				ps2.setString(inti++, did);
				ps2.setString(inti++, port);
				ps2.setString(inti++, cpu);
				ps2.setString(inti++, memory);
				ps2.setString(inti++, disk);
				ps2.setString(inti++, syn);
				ps2.setString(inti++, oracle);
				ps2.setString(inti++, oth);
				rs2=ps2.executeQuery();
				//("update Dxtesttemp set  stdate='"+stdate+"',sn='"+sn+"',pos='"+pos+"',ip='"+ip+"',styp='"+styp+"',sname='"+sname+"',sid='"+sid+"',pname='"+pname+"',use='"+use+"',ownname='"+ownname+"',proname='"+proname+"',manname='"+manname+"',agename='"+agename+"',mantyp='"+mantyp+"',did='"+did+"',port='"+port+"',cpu='"+cpu+"',memory='"+memory+"',disk='"+disk+"',syn='"+syn+"',oracle='"+oracle+"',oth='"+oth+"'  where rownum=1");
				//System.out.println(21);
				ps2.close();
				rs2.close();
			}else {
			
				inti = 1;
				conn = com.clas.JDBCconnect.getConnection();
				ps3 = conn.prepareStatement(sqlin);
				ps3.setString(inti++, stdate);
				ps3.setString(inti++, sn);
				ps3.setString(inti++, pos);
				ps3.setString(inti++, ip);
				ps3.setString(inti++, styp);
				ps3.setString(inti++, sname);
				ps3.setString(inti++, sid);
				ps3.setString(inti++, pname);
				ps3.setString(inti++, use);
				ps3.setString(inti++, ownname);
				ps3.setString(inti++, proname);
				ps3.setString(inti++, manname);
				ps3.setString(inti++, agename);
				ps3.setString(inti++, mantyp);
				ps3.setString(inti++, did);
				ps3.setString(inti++, port);
				ps3.setString(inti++, cpu);
				ps3.setString(inti++, memory);
				ps3.setString(inti++, disk);
				ps3.setString(inti++, syn);
				ps3.setString(inti++, oracle);
				ps3.setString(inti++, oth);
				rs3=ps3.executeQuery();
			//	System.out.println("rs3="+rs3.next());
				ps3.close();
				rs3.close();
				
			}
			ps1.close();
			rs1.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static List<Equ> testformall() {
		List<Equ> list= new ArrayList<Equ>();
		try {
			int inti = 1;
		Connection	conn = com.clas.JDBCconnect.getConnection();
			String sql="select * from dxtesttemp where rownum=1";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps = conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setPname(rs.getString("pname"));
				equ.setSn (rs.getString("sn"));
				equ.setPos(rs.getString("pos"));
				equ.setIp(rs.getString("ip"));
				equ.setStyp(rs.getString("styp"));
				equ.setSname(rs.getString("sname"));
				equ.setSid (rs.getString("sid"));
				equ.setDid (rs.getString("did"));
				equ.setStdate (rs.getString("stdate"));
				equ.setUse (rs.getString("use"));
				equ.setOwnname(rs.getString("ownname"));
				equ.setProname(rs.getString("proname"));
				equ.setManname(rs.getString("manname"));
				equ.setAgename(rs.getString("agename"));
				equ.setMantyp(rs.getString("mantyp"));
				equ.setPort(rs.getString("port"));
				equ.setCpu (rs.getString("cpu"));
				equ.setMemory (rs.getString("memory"));
				equ.setDisk (rs.getString("disk"));
				equ.setSyn(rs.getString("syn"));
				equ.setOracle (rs.getString("oracle"));
				equ.setOth (rs.getString("oth"));
				list.add(equ);}
			
			
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	public static void UpPlanServlet(String sdate,String edate,String statu,String username) {
		try {
			int inti = 1;
			Connection conn = com.clas.JDBCconnect.getConnection();
			String sql = "update dxtestwork set  username=?  where sdate=? and edate=? and statu=?";
			
			//String sql = "delete from ## where ##=?";
			//String sql="select * from ## where ##=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps = conn.prepareStatement(sql);
			ps.setString(inti++, username);
			ps.setString(inti++, sdate);
			ps.setString(inti++, edate);
			ps.setString(inti++, statu);
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery("update dxtestwork set  username='"+username+"'  where sdate='"+sdate+"' and edate='"+edate+"' and statu='"+statu+"'");
			
			//while (rs.next()) {
			//	Equ equ=new Equ();
			//	equ.setName(rs.getString("name"));
			//	list.add(equ);}
			//rs.close
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static  List<String> typeList() {
		List<String> list=new ArrayList<>();
		try {
			int inti = 1;
	Connection		conn = com.clas.JDBCconnect.getConnection();
		
			String sql="select styp from dxtest";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				String a=rs.getString(1);
				if (a==null) {
					a="";
				}
				a=a.substring(0,a.indexOf("/"));
				if (a.length()==0) {
					continue;
				}
				else if (list.indexOf(a)==-1) {
					list.add(a);
				}
				else {
					continue;
				}
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
	
	public static List<Equ> usersall() {
		List<Equ> list =new ArrayList<Equ>();
		try {
			int inti = 1;
		Connection	conn = com.clas.JDBCconnect.getConnection();
			String sql = "select * from DXTESTUSER where userid is not null";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps = conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setUserid(rs.getString("userid"));
				equ.setUsername(rs.getString("username"));
				equ.setUserpwd(rs.getString("userpwd"));
				equ.setAut(rs.getInt("aut"));
				equ.setDay(rs.getString("day"));
				equ.setEdi(rs.getString("edi"));
				equ.setDel(rs.getString("del"));
				equ.setCon(rs.getString("con"));
				equ.setConedit(rs.getString("conedit"));
				equ.setCondel(rs.getString("condel"));
				equ.setAddevent(rs.getString("addevent"));
				equ.setLevela(rs.getString("levela"));
				list.add(equ);}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	public static boolean updataAuthor(String username,String con,String addevent,String levela,String day) {
		boolean a=false;
		try {
			int inti = 1;
		Connection	conn = com.clas.JDBCconnect.getConnection();
			String sql = "update DXTESTUSER set  con=?,addevent=?,levela=?,day=?  where username=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps = conn.prepareStatement(sql);
			ps.setString(inti++, con);
			ps.setString(inti++, addevent);
			ps.setString(inti++, levela);
			ps.setString(inti++, day);
			ps.setString(inti++, username);
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery();
			//while (rs.next()) {
			//	Equ equ=new Equ();
			//	equ.setName(rs.getString("name"));
			//	list.add(equ);}
			//rs.close();
			ps.close();
			conn.close();
			a=true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			a=false;
		}
		return a;
	}
	
	public static boolean updataUser(String userid,String userpwd,String username,String con,String addevent,String levela) {
		boolean a=false;
		try {
			int inti = 1;
			Connection conn = com.clas.JDBCconnect.getConnection();
			String sql = "insert into DXTESTUSER (userid,username,userpwd,aut,day,edi,del,con,addevent,levela) values(?,?,?,'2','7','1','1',?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(inti++, userid);
			ps.setString(inti++, username);
			ps.setString(inti++, userpwd);
			ps.setString(inti++, con);
			ps.setString(inti++, addevent);
			ps.setString(inti++, levela);
			ResultSet rs=ps.executeQuery();
			ps.close();
			conn.close();
			a=true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return a;
	}
	
	public static List<Equ> searchAuthor(String username) {
		List<Equ> list = new ArrayList<Equ>();
		try {int inti = 1;
	Connection	conn = com.clas.JDBCconnect.getConnection();
		
		String sql="select * from DXTESTUSER where username=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(inti++, username);
		//ps.executeUpdate();
		ResultSet rs=ps.executeQuery();
		while (rs.next()) {
			Equ equ=new Equ();
			equ.setUserid(rs.getString("userid"));
			equ.setUsername(rs.getString("username"));
			equ.setAut(rs.getInt("aut"));
			equ.setDay(rs.getString("day"));
			equ.setCon(rs.getString("con"));
			equ.setConedit(rs.getString("conedit"));
			equ.setCondel(rs.getString("condel"));
			equ.setAddevent(rs.getString("addevent"));
			equ.setLevela(rs.getString("levela"));
			list.add(equ);}
		rs.close();
		ps.close();
		conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	public static List<Equ> listTemp() {
		List<Equ> list =new ArrayList<Equ>();
		int  id=1;
		
		 try { Connection conn = com.clas.JDBCconnect.getConnection();
		  
		  String sql = "select * from dxtesttemp where rownum=1"; 
		  Statement stmt =conn.createStatement(); 
		  ResultSet rs = stmt.executeQuery(sql);
		  
		  while (rs.next()) { 
		 
		 Equ equ=new Equ();
		
		equ.setId(id); 
		equ.setSid(rs.getString("sid"));
		equ.setDid(rs.getString("did"));
		equ.setStdate(rs.getString("stdate"));
		equ.setUse(rs.getString("use"));
		equ.setOwnname(rs.getString("ownname"));
		equ.setProname(rs.getString("proname"));
		equ.setManname(rs.getString("manname"));
		equ.setAgename(rs.getString("agename"));
		equ.setMantyp(rs.getString("mantyp"));
		equ.setPort(rs.getString("port"));
		equ.setCpu(rs.getString("cpu"));
		equ.setMemory(rs.getString("memory"));
		equ.setDisk(rs.getString("disk"));
		equ.setSyn(rs.getString("syn"));
		equ.setOracle(rs.getString("oracle"));
		equ.setOth(rs.getString("oth"));
		equ.setPname(rs.getString("pname"));
		equ.setSn(rs.getString("sn"));
		equ.setPos(rs.getString("pos"));
		equ.setIp(rs.getString("ip"));
		equ.setStyp(rs.getString("styp"));
		equ.setSname(rs.getString("sname"));
		
		
		  list.add(equ); }
		  
		  rs.close();
		  conn.close();
	} catch (Exception e) {
		// TODO: handle exception
	}
		return list;
	}
	
	public static boolean insertItem(String sql) {
		boolean a=false;
		try {
		Connection	conn = com.clas.JDBCconnect.getConnection();
			//String sql = "insert into table (#,#) values(?,?)";
			 PreparedStatement	ps = conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			a=true;
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return a;
	}
	
	public static boolean Del(String sql) {
		boolean a=false;
		try {
			//String sql = "delete from ## where ##=?";
		Connection	conn = com.clas.JDBCconnect.getConnection();
			 PreparedStatement	ps = conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			a=true;
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return a;
	}
	
	public static boolean Update (String sql) {
		boolean a=false;
		try {
			//String sql = "update # set  #=?  where ##=?";
		Connection	conn = com.clas.JDBCconnect.getConnection();
			 PreparedStatement	ps = conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			a=true;
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return a;
	}
	
	public static String getKey(String sql,String key) {
		String a="";
		try {
//			select edate from dxtestwork where id=id 
			Connection conn = com.clas.JDBCconnect.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps = conn.prepareStatement(sql);
			//ps.setString(inti++, ##);
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				a=rs.getString(key);
				break;
				}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			a="";
		}
		return a;
	}
	
	public static int  getCount(String sql) {
		int a=0;
		try {
//			 sql="select COUNT(userpwd) from dxtestuser WHERE userpwd='"+userpwd+"' and username='"+username+"'";
		Connection conn = com.clas.JDBCconnect.getConnection();
		//String sql="select * from ## where ##=?";
		 PreparedStatement ps = conn.prepareStatement(sql);
		//ps.setString(inti++, ##);
		//ps.executeUpdate();
		ResultSet rs=ps.executeQuery();
		while (rs.next()) {
			a=rs.getInt(1);
			}
		rs.close();
		ps.close();
		conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return a;
	}
	
	
	public static int getRownum(String sql) {
		int a=0;
		try {
			Connection conn = com.clas.JDBCconnect.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps = conn.prepareStatement(sql);
			//ps.setString(inti++, ##);
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				a=rs.getInt("id");
				break;
				}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			a=0;
		}
		return a;
	}
	
	public static boolean deluser(String username) {
		boolean deluser=false;
		try {
			int inti = 1;
		Connection	conn = com.clas.JDBCconnect.getConnection();
			String sql = "delete from DXTESTUSER where username=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(inti++, username);
			ResultSet rs=ps.executeQuery();
			//while (rs.next()) {
			//	Equ equ=new Equ();
			//	equ.setName(rs.getString("name"));
			//	list.add(equ);}
			//rs.close();
			deluser=true;
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			deluser=false;
		}
		return deluser;
	}
	
	
	public static  List<Equ> delEqu(String id) {
		 List<Equ> list = new ArrayList<Equ>();
		try {
			int inti = 1;
		Connection	conn = com.clas.JDBCconnect.getConnection();
			String sql = "delete from DXTEST where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps = conn.prepareStatement(sql);
			ps.setString(inti++, id);
			ResultSet rs=ps.executeQuery();
			Statement stmt = conn.createStatement();
			 sql = "select * from dxtest ";
			 rs = stmt.executeQuery(sql);
			 while(rs.next()){
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
	            stmt.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	public static List<Equ> allEqus() {
		List<Equ> list =new ArrayList<>();
		try {
		Connection	conn = com.clas.JDBCconnect.getConnection();

            // 执行 SQL 查询
         Statement   stmt = conn.createStatement();
            String sql;
            //sql = "select * from dxtest order by id desc";
            sql = "select * from dxtest WHERE sname!='虚拟机'";
            ResultSet rs = stmt.executeQuery(sql);
            

            // 展开结果集数据库
            while(rs.next()){
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
		      
            stmt.close();
		      
		      conn.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	public static void deletePlan(String username,String  sdate,String  edate,String  statu) {
		try {
			int intid=1;
			Connection conn=com.clas.JDBCconnect.getConnection();
			
			String sql="delete from dxtestwork where username=? and sdate=? and edate=? and statu=? ";
			
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(intid++, username);
			ps.setString(intid++, sdate);
			ps.setString(intid++, edate);
			ps.setString(intid++, statu);
			
			ResultSet rs=ps.executeQuery();
			//ps.executeUpdate();
			ps.close();
			rs.close();
			conn.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static List<Equ> userAddListRe(String userid) {
		List<Equ> listus=new ArrayList<Equ>();
		
		try {int intid=1;
		Connection conn=com.clas.JDBCconnect.getConnection();
		String sql="select * from dxtestuser where userid=? ";
		PreparedStatement ps=null;
		ps=conn.prepareStatement(sql);
		ps.setString(intid++, userid);
		ResultSet rs=ps.executeQuery();
		
		while (rs.next()) {
			Equ equ=new Equ();
			equ.setUsername(rs.getString("username"));
			equ.setUserpwd(rs.getString("userpwd"));
			equ.setAut(rs.getInt("aut"));
			equ.setUserid(rs.getString("userid"));
			listus.add(equ);
			
		}
		rs.close();
		ps.close();
		conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			
		}
		return listus;
		
	}
	
	public static int daydf() {
		int dd=0;
		try {
			int inti = 1;
		Connection	conn = com.clas.JDBCconnect.getConnection();
		
			String sql="select day from DXTESTUSER where ##=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps = conn.prepareStatement(sql);
			//ps.setString(inti++, ##);
			//ps.executeUpdate();
			//ResultSet rs=ps.executeQuery();
			//while (rs.next()) {
			//	Equ equ=new Equ();
			//	equ.setName(rs.getString("name"));
			//	list.add(equ);}
			//rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return dd;
	}
	
	
	public static List<Equ> userAddList(String username,String userpwd ){
		List<Equ> listus=new ArrayList<Equ>();
		
		try {
			int intid=1;
			Connection conn=com.clas.JDBCconnect.getConnection();
			String sql="select * from dxtestuser where username=? and userpwd=?";
			PreparedStatement ps=null;
			ps=conn.prepareStatement(sql);
			ps.setString(intid++, username);
			ps.setString(intid++, userpwd);
			ResultSet rs=ps.executeQuery();
			
			
				
			//	System.out.println("TTTT");
				while (rs.next()) {
					Equ equ=new Equ();
					equ.setUsername(rs.getString("username"));
					equ.setUserpwd(rs.getString("userpwd"));
					equ.setAut(rs.getInt("aut"));
					equ.setUserid(rs.getString("userid"));
					equ.setDay(rs.getString("day"));
					equ.setEdi(rs.getString("edi"));
					equ.setDel(rs.getString("del"));
					equ.setCon(rs.getString("con"));
					equ.setLevela(rs.getString("levela"));
					equ.setConedit(rs.getString("conedit"));
					equ.setCondel(rs.getString("condel"));
					listus.add(equ);
					
				}
				//System.out.println(listus);
			
			
			rs.close();
			ps.close();
			conn.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return listus;
	}
	
	public int findCount(Integer count,String sdate,String edate, String statu)  {
		 
		 
		 Connection conn=com.clas.JDBCconnect.getConnection();
		
		    String sql = "select count(*) from dxtestwork where  sdate>=? and edate<? and statu= ? order by nowdate,statu desc";
		    System.out.println(sdate);
		   System.out.println(edate);
		    System.out.println(statu);
		    try {
		    	int intid=1;
		    	PreparedStatement ps=null;
				ps=conn.prepareStatement(sql);
				ps.setString(intid++, sdate);
				ps.setString(intid++, edate);
				ps.setString(intid++, statu);
				ResultSet rs=ps.executeQuery();
				
				if (rs.next()) {
					count=rs.getInt(1);
					System.out.println(count);
				}
				//System.out.println("22"+rs.getInt(1));
				
		     
		      
		      
		      rs.close();
				ps.close();
				conn.close();
				 
		    } catch (SQLException e) {
		      e.printStackTrace();
		    } 
		 
		    return count;  
		 
	}
	
	public static List<Equ> SelectItemPart2(String sn,String nowdate,String stno) {
		List<Equ> list=new ArrayList<Equ>();
		try {
			String sql="select * from dxtestwork where stno=? order by nowdate,statu desc";
			Connection conn=null;
			PreparedStatement ps=null;
			ResultSet rs=null;
			
			int intN=1;
			conn=com.clas.JDBCconnect.getConnection();
			ps=conn.prepareStatement(sql);
//			ps.setString(intN++, nowdate);
//			ps.setString(intN++, sn);
			ps.setString(intN++, stno);
			rs=ps.executeQuery();
			
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setMessage(rs.getString("message"));
				equ.setUsername(rs.getString("username"));
				equ.setUserpwd(rs.getString("userpwd"));
				equ.setNowdate(rs.getString("nowdate"));
				equ.setSn(rs.getString("sn"));
				equ.setStatu(rs.getString("statu"));
				equ.setPicture(rs.getString("picture"));
				equ.setSdate(rs.getString("sdate"));
				equ.setEdate(rs.getString("edate"));
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
	
	
	public static List<String> ston(String sdate,String edate,String statu) {
		List<String> ston=new ArrayList<String>();
		try {
			int intid=1;
			Connection conn=com.clas.JDBCconnect.getConnection();
			String sql1="select * from dxtestwork where  sdate>= ? and edate<=? and statu like ? order by nowdate,statu desc,statu desc";
			PreparedStatement ps=null;
			ps=conn.prepareStatement(sql1);
			ps.setString(intid++, sdate);
			ps.setString(intid++, edate);
			ps.setString(intid++, statu);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				
				
			    ston.add(rs.getString(11)) ;
			} 
			
			ps.close();
			rs.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		

		return ston;
	}
	
	public static List<Equ> sucList(String stno,String edate,String sdate) {
		List<Equ> sucList=new ArrayList<Equ>();
		try {
			int intid=1;
			Connection conn=com.clas.JDBCconnect.getConnection();
			String sql1="select * from dxtestwork where stno=? and edate=? and sdate=?  order by nowdate desc,statu desc";
			PreparedStatement ps=null;
			ps=conn.prepareStatement(sql1);
			ps.setString(intid++, stno);
			ps.setString(intid++, edate);
			ps.setString(intid++, sdate);
//			System.out.println("=="+stno);
			ResultSet rs=ps.executeQuery("select * from dxtestwork where stno='"+stno+"' and edate='"+edate+"' and sdate='"+sdate+"'  order by nowdate desc,statu desc");
			
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setUsername(rs.getString("username"));
				equ.setUserpwd(rs.getString("userpwd"));
				equ.setNowdate(rs.getString("nowdate"));
				equ.setSn(rs.getString("sn"));
				equ.setStatu(rs.getString("statu"));
				equ.setPicture(rs.getString("picture"));
				equ.setSdate(rs.getString("sdate"));
				equ.setEdate(rs.getString("edate"));
				equ.setStno(rs.getString("stno"));
				equ.setMessage(rs.getString("message"));
				sucList.add(equ);
				
			}
			ps.close();
			rs.close();
			conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return sucList;
	}
	
	public static boolean userpwd(String stno) {
		boolean userpwd=false;
		
		if (stno.equals("0")) {
			userpwd=true;
		}else {
			try {
				int intid=1;
				Connection conn=com.clas.JDBCconnect.getConnection();
				String sql1="select * from(select * from dxtestwork where stno=?  order by nowdate desc) where rownum=1";
				PreparedStatement ps=null;
				ps=conn.prepareStatement(sql1);
				ps.setString(intid++, stno);
//				System.out.println("=="+stno);
				ResultSet rs=ps.executeQuery();
				String pwdString=null;
				while (rs.next()) {
					pwdString = rs.getString(4);
					System.out.println(pwdString);
					if (pwdString==null) {
						pwdString="";
					}
					
				}
				if (pwdString.equals("restore")) {
//					System.out.println(pwdString);
					userpwd=true;
				}
				ps.close();
				rs.close();
				conn.close();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		
		
		
		return userpwd;
	}
	
	public static List<Equ> SelectItemPart(String sdate,String edate,String statu) {
		List<Equ> list=new ArrayList<Equ>();
		try {
			int intid=1;
			Connection conn=com.clas.JDBCconnect.getConnection();
			String sql1="select * from dxtestwork where  sdate= ? and edate=? and statu=? order by nowdate,statu";
//			String sql="select * from dxtestwork where   stno=? and task='0' and rownum=1  order by nowdate,statu";
			String sql="select * from dxtestwork where   stno=? and task='0'   and time is not null";
			String sql3="select * from dxtestwork where  sdate= ? and edate=? and stno='0'  order by nowdate,statu desc";
			PreparedStatement ps=null;
			PreparedStatement ps3=null;
			PreparedStatement ps2=null;
			ResultSet rs=null;
			ResultSet rs2=null;
			ResultSet rs3=null;
			String stno=null;
			String s0="";
			String s1="";
			boolean flag=true;
			ps=conn.prepareStatement(sql1);
			ps.setString(intid++, sdate);
			ps.setString(intid++, edate);
			ps.setString(intid++, statu);
			rs=ps.executeQuery();
			while (rs.next()) {
				stno= rs.getString(11);
				if (stno.equals("0")) {
					if (flag) {
						ps3=conn.prepareStatement(sql3);
						 intid=1;
						 ps3.setString(intid++, sdate);
						ps3.setString(intid++, edate);
						rs3=ps3.executeQuery();
						 while (rs3.next()) {
							 Equ equ=new Equ();
								equ.setMessage(rs3.getString("message"));
								equ.setUsername(rs3.getString("username"));
								equ.setUserpwd(rs3.getString("userpwd"));
								equ.setNowdate(rs3.getString("nowdate"));
								equ.setSn(rs3.getString("sn"));
								equ.setStatu(rs3.getString("statu"));
								equ.setPicture(rs3.getString("picture"));
								equ.setSdate(rs3.getString("sdate"));
								equ.setEdate(rs3.getString("edate"));
								equ.setStno(rs3.getString("stno"));
								equ.setTime(rs3.getString("time"));
								list.add(equ);}
						 flag=false;
					}
				}else {
					s1=stno;
					if (s0.equals(s1)) {
					//	System.out.println("continue");
						continue;
					}else {
						if (flag) {
							ps3=conn.prepareStatement(sql3);
							 intid=1;
							 ps3.setString(intid++, sdate);
							ps3.setString(intid++, edate);
							rs3=ps3.executeQuery();
							 while (rs3.next()) {
								 Equ equ=new Equ();
									equ.setMessage(rs3.getString("message"));
									equ.setUsername(rs3.getString("username"));
									equ.setUserpwd(rs3.getString("userpwd"));
									equ.setNowdate(rs3.getString("nowdate"));
									equ.setSn(rs3.getString("sn"));
									equ.setStatu(rs3.getString("statu"));
									equ.setPicture(rs3.getString("picture"));
									equ.setSdate(rs3.getString("sdate"));
									equ.setEdate(rs3.getString("edate"));
									equ.setStno(rs3.getString("stno"));
									equ.setTime(rs3.getString("time"));
									list.add(equ);}
							 flag=false;
						}
						s0=s1;
						intid=1;
						ps2=conn.prepareStatement(sql);
						ps2.setString(intid++, s0);
						rs2=ps2.executeQuery();
						 while (rs2.next()) {
							 Equ equ=new Equ();
								equ.setMessage(rs2.getString("message"));
								equ.setUsername(rs2.getString("username"));
								equ.setUserpwd(rs2.getString("userpwd"));
								equ.setNowdate(rs2.getString("nowdate"));
								equ.setSn(rs2.getString("sn"));
								equ.setStatu(rs2.getString("statu"));
								equ.setPicture(rs2.getString("picture"));
								equ.setSdate(rs2.getString("sdate"));
								equ.setEdate(rs2.getString("edate"));
								equ.setStno(rs2.getString("stno"));
								equ.setTime(rs2.getString("time"));
								list.add(equ);}
					}
				}
				
			}
			
			ps.close();
			 ps2.close();
			 ps3.close();
			rs2.close();
			 rs3.close();
			 rs.close();
				conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
	}
	
	public  static List<Equ> SelectItemnow(String sn,String userid,String nowdate){
		List<Equ> list=new ArrayList<Equ>();
		try {
			int intid=1;
			Connection conn=com.clas.JDBCconnect.getConnection();
			String sql="select * from dxtestwork where sn=? and nowdate= ? and usrname=?  order by nowdate,statu desc";
			PreparedStatement ps=null;
			 ps=conn.prepareStatement(sql);
				ps.setString(intid++, sn);
				ps.setString(intid++, nowdate);
				ps.setString(intid++, userid);
			
				ps.close();
				conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
	}
	
	public void UpPwd(String username,String userpwd,String userpwd1) {
		try {
				int intid=1;
			Connection conn=com.clas.JDBCconnect.getConnection();
			String sql="update DXTESTUSER set  userpwd=?  where username=? and userpwd=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(intid++, userpwd1);
			ps.setString(intid++, username);
			ps.setString(intid++, userpwd);
			ResultSet rs=ps.executeQuery();
			
			rs.close();
			ps.close();
			conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void delmessage(String nowdate,String message) {
		try {
			int inti = 1;
		Connection	conn = com.clas.JDBCconnect.getConnection();
			String sql = "delete from dxtestwork where nowdate=? and message=?";
			String sql2="select stno,statu from dxtestwork where nowdate=? and message=?";
			String sql3="update dxtestwork set  userpwd=''  where stno=?";
			PreparedStatement ps2=null;
			PreparedStatement ps=null;
			PreparedStatement ps3=null;
		//	ResultSet rs=null;
			ResultSet rs2=null;
			ResultSet rs3=null;
			String ston="";
			String statu="";
			ps2=conn.prepareStatement(sql2);
			ps2.setString(inti++, nowdate);
			ps2.setString(inti++, message);
			rs2=ps2.executeQuery();
			while (rs2.next()) {
				ston=rs2.getString(1);
				statu=rs2.getString(2);
			if (statu.equals("恢复")) {
				System.out.println("恢复+++");
				inti = 1;
				ps = conn.prepareStatement(sql);
				ps.setString(inti++, nowdate);
				ps.setString(inti++, message);
				ps.executeUpdate();
				 inti = 1;
				 ps3 = conn.prepareStatement(sql3);
				 ps3.setString(inti, ston);
				 ps3.executeUpdate();
			}else {
				inti = 1;
				ps = conn.prepareStatement(sql);
				ps.setString(inti++, nowdate);
				ps.setString(inti++, message);
				ps.executeUpdate();
			}
			}
			ps.close();
			ps2.close();
			ps3.close();
			rs2.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void updatamessage(String nowdate,String message) {
		List<Equ> list=new ArrayList<Equ>();
		try {
			int inti = 1;
			Connection 	conn = com.clas.JDBCconnect.getConnection();
			String sql = "update dxtestwork set  message=?  where nowdate=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps = conn.prepareStatement(sql);
			ps.setString(inti++, message);
			ps.setString(inti++, nowdate);
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery();
			
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
	public static String[] sse2(String message,String nowdate,String sn) {
		String[] sse=new String[3];
		try {
			int inti = 1;
		Connection	conn = com.clas.JDBCconnect.getConnection();
			String sql="select stno,sdate,edate,statu from dxtestwork where message=? and nowdate=? and sn=? and rownum=1";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps = conn.prepareStatement(sql);
			ps.setString(inti++, message);
			ps.setString(inti++, nowdate);
			ps.setString(inti++, sn);
			System.out.println(message);
			System.out.println(nowdate);
			System.out.println(sn);
			String stno=null;
			String sdate=null;
			String edate=null;
			String statu=null;
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery("select stno,sdate,edate from dxtestwork where message='"+message+"' and nowdate='"+nowdate+"' and sn='"+sn+"' and rownum=1");
		//	System.out.println(rs.next());
			while (rs.next()) {
				inti=1;
				stno =rs.getString(inti++);
				sdate=rs.getString(inti++);
				edate=rs.getString(inti++);
				statu=rs.getString(inti++);
				System.out.println(stno);
				System.out.println(sdate);
				System.out.println(edate);
				System.out.println(statu);
				inti=0;
				sse[inti++]=stno;
				sse[inti++]=sdate;
				sse[inti++]=edate;
				sse[inti++]=statu;		}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return sse;
	}
	
	
	public static String[] sse(String message,String nowdate,String sn) {
		String[] sse=new String[3];
		try {
			int inti = 1;
		Connection	conn = com.clas.JDBCconnect.getConnection();
			String sql="select stno,sdate,edate from dxtestwork where message=? and nowdate=? and sn=? and rownum=1";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps = conn.prepareStatement(sql);
			ps.setString(inti++, message);
			ps.setString(inti++, nowdate);
			ps.setString(inti++, sn);
			System.out.println(message);
			System.out.println(nowdate);
			System.out.println(sn);
			String stno=null;
			String sdate=null;
			String edate=null;
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery("select stno,sdate,edate from dxtestwork where message='"+message+"' and nowdate='"+nowdate+"' and sn='"+sn+"' and rownum=1");
		//	System.out.println(rs.next());
			while (rs.next()) {
				inti=1;
				stno =rs.getString(inti++);
				sdate=rs.getString(inti++);
				edate=rs.getString(inti++);
				System.out.println(stno);
				System.out.println(sdate);
				System.out.println(edate);
				inti=0;
				sse[inti++]=stno;
				sse[inti++]=sdate;
				sse[inti++]=edate;
						}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return sse;
	}
	
	public static List<Equ> SelectItemAll(String sn){
		List<Equ> list=new ArrayList<Equ>();
		
		try {
			int intid=1;
			
			  Connection conn=com.clas.JDBCconnect.getConnection(); 
			  String  sql="select * from dxtestwork where sn=? order by nowdate desc,statu desc";
			  
			  PreparedStatement ps=conn.prepareStatement(sql); 
			System.out.println("sn="+sn);
			ps.setString(intid++, sn.trim());
	//		  ResultSet rs=ps.executeQuery("select * from dxtestwork where sn=\'"+sn.trim()+"\' order by nowdate desc,statu desc");
			ResultSet rs=ps.executeQuery();
			  while (rs.next()) { Equ equ=new Equ();
			  equ.setMessage(rs.getString("message"));
			  equ.setUsername(rs.getString("username"));
			  equ.setUserpwd(rs.getString("userpwd"));
			  equ.setNowdate(rs.getString("nowdate")); equ.setSn(rs.getString("sn"));
			  equ.setStatu(rs.getString("statu")); equ.setPicture(rs.getString("picture"));
			  equ.setSdate(rs.getString("sdate")); equ.setEdate(rs.getString("edate"));
			  equ.setStno(rs.getString("stno"));
			  list.add(equ); }
			 
			rs.close();
			ps.close();
			conn.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	
	public static List<Equ> SelectItem2(String stno) {
		List<Equ> list=new ArrayList<Equ>();
		try {
			int intid=1;
			Connection conn=com.clas.JDBCconnect.getConnection();
			String sql1="select * from dxtestwork where stno='"+stno+"' order by nowdate,statu desc";
			PreparedStatement ps=null;
			ResultSet rs=null;
			 ps=conn.prepareStatement(sql1);
//				ps.setString(intid++, stno);
				 rs=ps.executeQuery(sql1);
				 while (rs.next()) {
						Equ equ=new Equ();
						equ.setMessage(rs.getString("message"));
						equ.setUsername(rs.getString("username"));
						equ.setUserpwd(rs.getString("userpwd"));
						equ.setNowdate(rs.getString("nowdate"));
						equ.setSn(rs.getString("sn"));
						equ.setStatu(rs.getString("statu"));
						equ.setPicture(rs.getString("picture"));
						equ.setSdate(rs.getString("sdate"));
						equ.setEdate(rs.getString("edate"));
						equ.setStno(rs.getString("stno"));
						list.add(equ);
					}
					rs.close();
					ps.close();
					conn.close();
				 
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	
	public static List<Equ> SelectItem(String sdate,String edate,String sn,String statu) {
		List<Equ> list=new ArrayList<Equ>();
		try {
			int intid=1;
			statu="%"+statu+"%";
			Connection conn=com.clas.JDBCconnect.getConnection();
			String sql1="select * from dxtestwork where sn=? and sdate>= ? and statu like ?  order by nowdate,statu desc";
			String sql2="select * from dxtestwork where sn=? and sdate>= ? and edate<=? and statu like ?  order by nowdate,statu desc";
			String sql3="select * from dxtestwork where sn=? and edate<= ? and  statu like ?  order by nowdate,statu desc";
			String sql4="select * from dxtestwork where sn=? and  statu like ?  order by nowdate,statu desc";
			PreparedStatement ps=null;
			ResultSet rs=null;
			if (sdate!=""&& edate=="") {
				System.out.println(1);
			//	System.out.println(statu);
				 ps=conn.prepareStatement(sql1);
				ps.setString(intid++, sn);
				ps.setString(intid++, sdate);
				ps.setString(intid++, statu);
				
			//	System.out.println(sdate+"a");
				 rs=ps.executeQuery("select * from dxtestwork where sn=\'"+sn.trim()+"\' and sdate>=\'"+sdate+"\' and statu like \'%"+statu.trim()+"%\'  order by nowdate,statu desc");
			}else if (sdate!=""&&edate!="") {
				System.out.println(2);
				 ps=conn.prepareStatement(sql2);
				//	System.out.println(sdate);
				//	System.out.println(edate);
				ps.setString(intid++, sn);
				ps.setString(intid++, sdate);
				ps.setString(intid++, edate);
				ps.setString(intid++, statu);
				
			 rs=ps.executeQuery("select * from dxtestwork where sn=\'"+sn.trim()+"\' and sdate>= \'"+sdate+"\' and sdate<=\'"+edate+"\' and statu like \'%"+statu.trim()+"%\' order by nowdate,statu desc");
			}else if (sdate==""&&edate!="") {
//				System.out.println(3);
				 ps=conn.prepareStatement(sql3);
				ps.setString(intid++, sn);
				ps.setString(intid++, edate);
				ps.setString(intid++, statu);
			
//				System.out.println(edate);
//				System.out.println(sn.trim());
//				System.out.println(statu.trim());
				 rs=ps.executeQuery("select * from dxtestwork where sn=\'"+sn.trim()+"\' and sdate<= \'"+edate+"\' and  statu like \'%"+statu.trim()+"%\'  order by nowdate,statu desc");
			}else {
//				System.out.println(4);
				 ps=conn.prepareStatement(sql4);
				ps.setString(intid++, sn.trim());
				ps.setString(intid++, statu.trim());
				
				rs=ps.executeQuery("select * from dxtestwork where sn=\'"+sn.trim()+"\' and  statu like \'%"+statu.trim()+"%\'  order by nowdate,statu desc");
			}
			
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setMessage(rs.getString("message"));
				equ.setUsername(rs.getString("username"));
				equ.setUserpwd(rs.getString("userpwd"));
				equ.setNowdate(rs.getString("nowdate"));
				equ.setSn(rs.getString("sn"));
				equ.setStatu(rs.getString("statu"));
				equ.setPicture(rs.getString("picture"));
				equ.setSdate(rs.getString("sdate"));
				equ.setEdate(rs.getString("edate"));
				equ.setStno(rs.getString("stno"));
				equ.setTask(rs.getString("task"));
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
	
	
	
	public static List<Equ> SelectItem5(String sdate,String edate,String sn,String statu,String stno) {
		List<Equ> list=new ArrayList<Equ>();
		try {
			int intid=1;
			statu="%"+statu+"%";
			Connection conn=com.clas.JDBCconnect.getConnection();
			String sql1="select * from dxtestwork where sn=? and sdate>= ? and statu like ? and stno=? order by nowdate,statu desc";
			String sql2="select * from dxtestwork where sn=? and sdate>= ? and edate<=? and statu like ? and stno=? order by nowdate,statu desc";
			String sql3="select * from dxtestwork where sn=? and edate<= ? and  statu like ? and stno=? order by nowdate,statu desc";
			String sql4="select * from dxtestwork where sn=? and  statu like ? and stno=? order by nowdate,statu desc";
			PreparedStatement ps=null;
			ResultSet rs=null;
			if (sdate!=""&& edate=="") {
				System.out.println(1);
			//	System.out.println(statu);
				 ps=conn.prepareStatement(sql1);
				ps.setString(intid++, sn);
				ps.setString(intid++, sdate);
				ps.setString(intid++, statu);
				ps.setString(intid++, stno);
			//	System.out.println(sdate+"a");
				 rs=ps.executeQuery("select * from dxtestwork where sn=\'"+sn.trim()+"\' and sdate>=\'"+sdate+"\' and statu like \'%"+statu.trim()+"%\' and stno=\'"+stno+"\' order by nowdate,statu desc");
			}else if (sdate!=""&&edate!="") {
				System.out.println(2);
				 ps=conn.prepareStatement(sql2);
				//	System.out.println(sdate);
				//	System.out.println(edate);
				ps.setString(intid++, sn);
				ps.setString(intid++, sdate);
				ps.setString(intid++, edate);
				ps.setString(intid++, statu);
				ps.setString(intid++, stno);
			 rs=ps.executeQuery("select * from dxtestwork where sn=\'"+sn.trim()+"\' and sdate>= \'"+sdate+"\' and sdate<=\'"+edate+"\' and statu like \'%"+statu.trim()+"%\' and stno=\'"+stno+"\'order by nowdate,statu desc");
			}else if (sdate==""&&edate!="") {
//				System.out.println(3);
				 ps=conn.prepareStatement(sql3);
				ps.setString(intid++, sn);
				ps.setString(intid++, edate);
				ps.setString(intid++, statu);
				ps.setString(intid++, stno);
//				System.out.println(edate);
//				System.out.println(sn.trim());
//				System.out.println(statu.trim());
				 rs=ps.executeQuery("select * from dxtestwork where sn=\'"+sn.trim()+"\' and sdate<= \'"+edate+"\' and  statu like \'%"+statu.trim()+"%\' and stno=\'"+stno+"\' order by nowdate,statu desc");
			}else {
//				System.out.println(4);
				 ps=conn.prepareStatement(sql4);
				ps.setString(intid++, sn.trim());
				ps.setString(intid++, statu.trim());
				ps.setString(intid++, stno);
				rs=ps.executeQuery("select * from dxtestwork where sn=\'"+sn.trim()+"\' and  statu like \'%"+statu.trim()+"%\' and stno=\'"+stno+"\' order by nowdate,statu desc");
			}
			
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setMessage(rs.getString("message"));
				equ.setUsername(rs.getString("username"));
				equ.setUserpwd(rs.getString("userpwd"));
				equ.setNowdate(rs.getString("nowdate"));
				equ.setSn(rs.getString("sn"));
				equ.setStatu(rs.getString("statu"));
				equ.setPicture(rs.getString("picture"));
				equ.setSdate(rs.getString("sdate"));
				equ.setEdate(rs.getString("edate"));
				equ.setStno(rs.getString("stno"));
				equ.setTask(rs.getString("task"));
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
	public static List<Equ> listWaring(String stno,String edate,String sdate,String message) {
		List<Equ> listWaring=new ArrayList<Equ>();
		try {
			int intid=1;
			message="%"+message+"%";
			stno="%"+stno+"%";
			Connection conn=com.clas.JDBCconnect.getConnection();
			String sql1="select * from dxtestwork where stno in (select DISTINCT stno from ( select * from dxtestwork where stno!='0'  and  (sdate>= ? and stno like ? and message like ?)))   and time is not null order by sdate";
			String sql2="select * from dxtestwork where stno in  (select DISTINCT stno from ( select * from dxtestwork where stno!='0'  and  (sdate>= ? and edate<=? and stno like ? and message like ?)))    and time is not null order by sdate";
			String sql3="select * from dxtestwork where stno in (select DISTINCT stno from ( select * from dxtestwork where stno!='0'  and  (edate<= ? and  and stno like ? and message like ?)))   and time is not null order by sdate";
			String sql4="select * from dxtestwork where stno in (select DISTINCT stno from ( select * from dxtestwork where stno!='0'  and  (stno like ? and message like ?)))  and time is not null order by sdate";
			 
		 String	s1="0";
		 String	s0="0";
			PreparedStatement ps=null;
			ResultSet rs=null;
			if (sdate!=""&& edate=="") {
				System.out.println(1);
				sdate=sdate+" 00:00:00";
			//	System.out.println(statu);
				 ps=conn.prepareStatement(sql1);
				
				 
				ps.setString(intid++, sdate);
				ps.setString(intid++, stno);
				ps.setString(intid++, message);
				
			//	System.out.println(sdate+"a");
				 rs=ps.executeQuery();
			}else if (sdate!=""&&edate!="") {
				System.out.println(2);
				 ps=conn.prepareStatement(sql2);
				//	System.out.println(sdate);
				//	System.out.println(edate);
				 sdate=sdate+" 00:00:00";
				 edate=edate+" 00:00:00";
				ps.setString(intid++, sdate);
				ps.setString(intid++, edate);
				ps.setString(intid++, stno);
				ps.setString(intid++, message);
				
			 rs=ps.executeQuery();
			}else if (sdate==""&&edate!="") {
				System.out.println(3);
				 ps=conn.prepareStatement(sql3);
				 edate=edate+" 00:00:00";
				ps.setString(intid++, edate);
				ps.setString(intid++, stno);
				ps.setString(intid++, message);
			
//				System.out.println(edate);
//				System.out.println(sn.trim());
//				System.out.println(statu.trim());
				 rs=ps.executeQuery();
			}else {
				System.out.println(4);
				 ps=conn.prepareStatement(sql4);
				 ps.setString(intid++, stno);
					ps.setString(intid++, message);
				
				rs=ps.executeQuery();
			}
			
			while (rs.next()) {
				
				Equ equ=new Equ();
				s0=rs.getString("stno");
//				System.out.println("==");
//				System.out.println(s0);
				if (s0.equals(s1)) {
//					System.out.println("1");
					continue;
				}else {
//					System.out.println("2");
					s1=s0;
					equ.setMessage(rs.getString("message"));
					equ.setUsername(rs.getString("username"));
					equ.setUserpwd(rs.getString("userpwd"));
					equ.setNowdate(rs.getString("nowdate"));
					equ.setSn(rs.getString("sn"));
					equ.setStatu(rs.getString("statu"));
					equ.setPicture(rs.getString("picture"));
					equ.setSdate(rs.getString("sdate"));
					equ.setEdate(rs.getString("edate"));
					equ.setStno(rs.getString("stno"));
					equ.setTask(rs.getString("task"));
					equ.setTime(rs.getString("time"));
					listWaring.add(equ);
				}
				
				
				
			}
			rs.close();
			ps.close();
			conn.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return listWaring;
	}
	
	public static int LateAlert(String plandate1,String contractid,String planm2) {
		int a=0;
		try {
			int inti = 1;
		Connection	conn = com.clas.JDBCconnect.getConnection();
			String sql = "update DXTESTCONTRACT set  plandate1=?, planm2=?  where contractid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(inti++, plandate1);
			ps.setString(inti++, planm2);
			ps.setString(inti++, contractid);
			ResultSet rs=ps.executeQuery();
			//while (rs.next()) {
			//	Equ equ=new Equ();
			//	equ.setName(rs.getString("name"));
			//	list.add(equ);}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return a;
	}
	
	public static List<Equ> planalertlist(String planAlertStr) {
//		System.out.println(planAlertStr);
		List<Equ> list=new ArrayList<Equ>();
		SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
		Date nowdateDate = new Date(System.currentTimeMillis());
		Date plandate1Date=null;
		 int lastday=0;
		long ms=0;
		String p1="",p2="";
				
		try {
			int inti = 1;
		Connection	conn = com.clas.JDBCconnect.getConnection();
			String sql="select camount,planm2, planm1,sgmoney,plandate1,plandate2,finmoney,contractid,contractname from DXTESTCONTRACT where plandate1<=? and (statu!='end'or statu is null)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(inti++, planAlertStr);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setPlanm1(rs.getString("planm1"));
				equ.setSgmoney(rs.getString("sgmoney"));
				equ.setPlandate1(rs.getString("plandate1"));
				equ.setPlandate2(rs.getString("plandate2"));
				p1=rs.getString("plandate1");
				p2=rs.getString("plandate2");
				if (p1==""||p1==null) {
					p1=p2;
				}
				plandate1Date = formatter.parse(p1);
				ms=plandate1Date.getTime()-nowdateDate.getTime();
				 lastday = (int) ( ms / 1000 / 60 / 60 / 24 );
				 equ.setLastday(lastday);
				equ.setFinmoney(rs.getString("finmoney"));
				equ.setContractid(rs.getString("contractid"));
				equ.setContractname(rs.getString("contractname"));
				equ.setCamount(rs.getString("camount"));
				equ.setPlanm2(rs.getString("planm2"));
				list.add(equ);}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	
	public static List<Equ> userIds() {
		List<Equ> list=new ArrayList<Equ>();
		try {
			int inti = 1;
		Connection	conn = com.clas.JDBCconnect.getConnection();
			String sql = "select userid from DXTESTUSER where userid!='蒋勇' and userid is not null";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps = conn.prepareStatement(sql);
			//ps.setString(inti++, ##);
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setUserid(rs.getString("userid"));
				list.add(equ);}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	public static List<Equ> SelectAllDxtestwork2() {
		List<Equ> listAllDxtestwork2=new ArrayList<Equ>();
		try {
			int intid=1;
			Connection conn=com.clas.JDBCconnect.getConnection();
//			String sql="select distinct username,sdate,edate,statu from (select * from dxtestwork where task is null or task='0' order by sdate desc)order by sdate  desc";
			String sql="select distinct username,sdate,edate,statu from (select * from dxtestwork where (task is null or task='0') and (statu='告警' or statu='巡检人员' or statu='故障') order by sdate desc)order by statu  desc";
			String sql2="select distinct username,sdate,edate,statu from (select * from dxtestwork where (task is null or task='0') and (statu='恢复' and stno!='0') order by sdate desc)order by sdate  desc";
			String sql3="select count(*) from ( select distinct userpwd,sdate,edate from " + 
					"(select * from dxtestwork where (task is null or task='0') and  " + 
					"(statu='告警' or statu='故障') and sdate=? and edate=?  order by sdate desc)order by sdate desc,edate)";
			String sql4="select distinct username,sdate,edate,statu from (select * from dxtestwork where stno='0') order by sdate ";
			String sql5="select count(*) from(select stno from dxtestwork where sdate=? and edate=? and stno!='0')";
			Statement statement=null;
			int count=0;
			PreparedStatement ps5=null;
			PreparedStatement ps3=null;
			ResultSet rs3=null;
			ResultSet rs5=null;
			ResultSet rs2=null;
			Statement statement2=null;
			String s0="0";
			String e0="0";
			String e1="0";
			String s1="0";
			
			statement=conn.createStatement();
			ResultSet rs=statement.executeQuery(sql);
			while (rs.next()) {
				//System.out.println(rs.getString("statu"));
				Equ equ=new Equ();
				equ.setUsername(rs.getString("username"));
				equ.setEdate(rs.getString("edate"));
				equ.setSdate(rs.getString("sdate"));
				equ.setStatu(rs.getString("statu"));
				listAllDxtestwork2.add(equ);				
			}
			statement.close();
			rs.close();
			
			 statement2=conn.createStatement();
			 rs2=statement2.executeQuery(sql2);
				 while (rs2.next()) {
						s1=rs2.getString("sdate");
						e1=rs2.getString("edate");
						if (s0.equals(s1)&&e0.equals(e1)) {
						//	System.out.println(s0);
							continue;
						}else {
							s0=s1;
							e0=e1;
							ps3=conn.prepareStatement(sql3);
							ps3.setString(1, s0);
							ps3.setString(2, e0);
							rs3=ps3.executeQuery();
							while (rs3.next()) {
								count =rs3.getInt(1);
								if (count>1) {
									continue;
								}else {
									Equ equ=new Equ();
									equ.setUsername(rs2.getString("username"));
									equ.setEdate(rs2.getString("edate"));
									equ.setSdate(rs2.getString("sdate"));
									equ.setStatu(rs2.getString("statu"));
									listAllDxtestwork2.add(equ);	
								}
							}
							ps3.close();
							rs3.close();
						}
				 }
				 statement2.close(); 
				 rs2.close();
				 
			String s10="0";
			String e10="0";
			String e11="0";
			String s11="0";
			int count1=0;
			Statement statement4=conn.createStatement();
			ResultSet rs4=statement4.executeQuery(sql4);
			while (rs4.next()) {
				s11=rs4.getString("sdate");
				e11=rs4.getString("edate");
				//System.out.println(s11);
			//	System.out.println(e11);
				if (s10.equals(s11)&&e10.equals(e11)) {
					//	System.out.println(s10);
						continue;
					}else {
						s10=s11;
						e10=e11;
						ps5=conn.prepareStatement(sql5);
						ps5.setString(1, s10);
						ps5.setString(2, e10);
						rs5=ps5.executeQuery();
					//	System.out.println(rs5.next());
						while (rs5.next()) {
							count1 =rs5.getInt(1);
						//	System.out.println(count1);
						
							if (count1!=0) {
								continue;
							}else {//System.out.println("count==0");
								Equ equ=new Equ();
								equ.setUsername(rs4.getString("username"));
								equ.setEdate(rs4.getString("edate"));
								equ.setSdate(rs4.getString("sdate"));
								equ.setStatu(rs4.getString("statu"));
								listAllDxtestwork2.add(equ);
							}
						}
						ps5.close();
						rs5.close();
				}
			}
			statement4.close();
			rs4.close();
			conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return listAllDxtestwork2;
	}
	
	public static List<Equ> typeclass() {
		List<Equ> list=new ArrayList<Equ>();
		try {
			int inti = 1;
		Connection	conn = com.clas.JDBCconnect.getConnection();
			String sql="select typeclass from typeclass ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setTypeclass(rs.getString("typeclass"));
				list.add(equ);}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	public static List<Equ> SelectAllDxtestwork() {
		List<Equ> listAllDxtestwork=new ArrayList<Equ>();
		try {
			int intid=1;
			Connection conn=com.clas.JDBCconnect.getConnection();
			String sql="select * from dxtestwork where task is null or task='0' and userpwd is null and sn!='0' order by sdate desc";
			Statement statement=null;
			statement=conn.createStatement();
			ResultSet rs=statement.executeQuery(sql);
			while (rs.next()) {
				
				Equ equ=new Equ();
				equ.setMessage(rs.getString("message"));
				equ.setUsername(rs.getString("username"));
				equ.setUserpwd(rs.getString("userpwd"));
				equ.setNowdate(rs.getString("nowdate"));
				equ.setSn(rs.getString("sn"));
				equ.setStatu(rs.getString("statu"));
				equ.setPicture(rs.getString("picture"));
				equ.setEdate(rs.getString("edate"));
				equ.setSdate(rs.getString("sdate"));
				equ.setStno(rs.getString("stno"));
				equ.setTask(rs.getString("task"));
				listAllDxtestwork.add(equ);
			}
			rs.close();
			statement.close();
			conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return listAllDxtestwork;
	}
	
	public static List<Equ> SelectAllMessageItem(String sn,String stno) {
		List<Equ> list=new ArrayList<Equ>();
		try {
			int intid=1;
			Connection conn=com.clas.JDBCconnect.getConnection();
			String sql="select * from dxtestwork where sn=? and stno=? order by nowdate,statu desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(intid++, sn);
			ResultSet rs=ps.executeQuery("select * from dxtestwork where sn=\'"+sn.trim()+"\' and stno=\'"+stno+"\' order by nowdate,statu desc");
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setMessage(rs.getString("message"));
				equ.setUsername(rs.getString("username"));
				equ.setUserpwd(rs.getString("userpwd"));
				equ.setNowdate(rs.getString("nowdate"));
				equ.setSn(rs.getString("sn"));
				equ.setStatu(rs.getString("statu"));
				equ.setPicture(rs.getString("picture"));
				equ.setEdate(rs.getString("edate"));
				equ.setSdate(rs.getString("sdate"));
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
	
	
	public static List<Equ> SelectAllMessage(String sn) {
		List<Equ> list=new ArrayList<Equ>();
		try {
			int intid=1;
			Connection conn=com.clas.JDBCconnect.getConnection();
			String sql="select * from dxtestwork where sn=? order by nowdate desc,statu desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(intid++, sn);
			ResultSet rs=ps.executeQuery("select * from dxtestwork where sn=\'"+sn.trim()+"\' order by nowdate desc,statu desc");
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setMessage(rs.getString("message"));
				equ.setUsername(rs.getString("username"));
				equ.setUserpwd(rs.getString("userpwd"));
				equ.setNowdate(rs.getString("nowdate"));
				equ.setSn(rs.getString("sn"));
				equ.setStatu(rs.getString("statu"));
				equ.setPicture(rs.getString("picture"));
				equ.setEdate(rs.getString("edate"));
				equ.setSdate(rs.getString("sdate"));
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
	
	public static void updata_dxtestworkPer(String username,String sdate,String edate,String statu) {
		try {int intid=1;
		Connection conn=com.clas.JDBCconnect.getConnection();
		
		String sql1="insert into dxtestwork(username,sdate,edate,statu) values(?,?,?,?)";
		String sql2="select * from dxtestwork where username=? and sdate=? and edate=? and statu=?";
		PreparedStatement ps1=null;
		PreparedStatement ps2=conn.prepareStatement(sql2);
		ps2.setString(intid++, username);
		ps2.setString(intid++, sdate);
		ps2.setString(intid++, edate);
		ps2.setString(intid++, statu);
		ResultSet rs=ps2.executeQuery();
		if (!rs.next()) {
			 intid=1;
		//	System.out.println(444);
			 ps1=conn.prepareStatement(sql1);
			ps1.setString(intid++, username);
			ps1.setString(intid++, sdate);
			ps1.setString(intid++, edate);
			ps1.setString(intid++, statu);
			
			
			ps1.executeUpdate();
			ps1.close();
		}else {
		//	System.out.println(666);
		}
		
		
		ps2.close();
		rs.close();
		conn.close();
		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static boolean upfileP(String sql) {
		boolean a=false;
		try {
		
		Connection	conn = com.clas.JDBCconnect.getConnection();
			PreparedStatement 	ps = conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			a=true;
			rs.close();
			ps.close();
			conn.close();
		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			a=false;
		}
		return a;
	}
	
	public static void updataItemRes(String sn,String message,String userid,String nowdate,String statu,String picture,String edate,String sdate,String stno) {
		try {
			int intid=1;
			Connection conn=com.clas.JDBCconnect.getConnection();
			String sql="insert into dxtestwork(message,username,nowdate,sn,statu,picture,edate,sdate,stno,task) values(?,?,?,?,?,?,?,?,?,?)";
			String sql2="select * from dxtestwork where stno=? and message=?";
			String sql3="update dxtestwork set  userpwd=?  where  stno=?";
			PreparedStatement ps2=conn.prepareStatement(sql2);
			ps2.setString(intid++, stno);
			ps2.setString(intid++, message);
			ResultSet rs=ps2.executeQuery();
			if (!rs.next()) {
				intid=1;
				PreparedStatement	ps=conn.prepareStatement(sql);
				ps.setString(intid++, message);
				ps.setString(intid++, userid);
				ps.setString(intid++, nowdate);
				ps.setString(intid++, sn);
				ps.setString(intid++, statu);
				ps.setString(intid++, picture);
				ps.setString(intid++, edate);
				ps.setString(intid++, sdate);
				ps.setString(intid++, stno);
				ps.setString(intid++, "0");
				ps.executeUpdate();
				intid=1;
				PreparedStatement ps3=conn.prepareStatement(sql3);
				ps3.setString(intid++, "restore");
				ps3.setString(intid++, stno);
				ps3.executeUpdate();
				ps.close();
				ps3.close();
				
			}else {
				
			}
			ps2.close();
			rs.close();
			conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	public static void updata_dxtestwork2(String sn,String message,String time,String userid,String nowdate,String statu,String picture,String edate,String sdate,String stno) {
	try {
		int intid=1;
		Connection conn=com.clas.JDBCconnect.getConnection();
		String sql="insert into dxtestwork(message,username,nowdate,sn,statu,picture,edate,sdate,stno,task,time) values(?,?,?,?,?,?,?,?,?,?,?)";
		String sql2="select * from dxtestwork where stno=? and message=?";
		String sql3="update dxtestwork set  userpwd='restore'   where  stno=?";
		//restore
		PreparedStatement ps=null;
		PreparedStatement ps2=conn.prepareStatement(sql2);
		PreparedStatement ps3=null;
		ps2.setString(intid++, stno);
		ps2.setString(intid++, message);
		ResultSet rs=ps2.executeQuery();
		if (!rs.next()) {
			intid=1;
			ps=conn.prepareStatement(sql);
			ps.setString(intid++, message);
			ps.setString(intid++, userid);
			ps.setString(intid++, nowdate);
			ps.setString(intid++, sn);
			ps.setString(intid++, statu);
			ps.setString(intid++, picture);
			ps.setString(intid++, edate);
			ps.setString(intid++, sdate);
			ps.setString(intid++, stno);
			ps.setString(intid++, "0");
			ps.setString(intid++, time);
			ps.executeUpdate();
			
			intid=1;
			ps3=conn.prepareStatement(sql3);
			ps3.setString(intid++, stno);
			ps3.executeUpdate();
			
			ps.close();
			ps3.close();
		}else {
		}
		
		ps2.close();
		rs.close();
		conn.close();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
	
	}
	
	public static void updata_dxtestworkItemAdd(String sn,String message,String userid,String nowdate,String statu,String picture,String edate,String sdate,String stno) {
		try {
			int intid=1;
			Connection conn=com.clas.JDBCconnect.getConnection();
			String sql="insert into dxtestwork(message,username,nowdate,sn,statu,picture,edate,sdate,stno,task) values(?,?,?,?,?,?,?,?,?,?)";
			String sql2="select * from dxtestwork where stno=? and message=?";
			PreparedStatement ps2=conn.prepareStatement(sql2);
			ps2.setString(intid++, stno);
			ps2.setString(intid++, message);
			ResultSet rs=ps2.executeQuery();
			if (!rs.next()) {
				intid=1;
				PreparedStatement	ps=conn.prepareStatement(sql);
				ps.setString(intid++, message);
				ps.setString(intid++, userid);
				ps.setString(intid++, nowdate);
				ps.setString(intid++, sn);
				ps.setString(intid++, statu);
				ps.setString(intid++, picture);
				ps.setString(intid++, edate);
				ps.setString(intid++, sdate);
				ps.setString(intid++, stno);
				ps.setString(intid++, "1");
				ps.executeUpdate();
				ps.close();
			}else {
				
			}
			ps2.close();
			rs.close();
			conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
	public static void updataPartPic2(String sn,String message,String userid,String nowdate,String statu,String picture,String edate,String sdate,String stno) {
		try {
			int intid=1;
			
			
			
			Connection conn=com.clas.JDBCconnect.getConnection();
			String sql="insert into dxtestwork(message,username,nowdate,sn,statu,picture,edate,sdate,stno,task) values(?,?,?,?,?,?,?,?,?,?)";
			String sql2="select * from dxtestwork where stno=? and message=?";
			String sql3="update dxtestwork set  userpwd=?  where  stno=?";
			PreparedStatement ps2=conn.prepareStatement(sql2);
			ps2.setString(intid++, stno);
			ps2.setString(intid++, message);
			ResultSet rs=ps2.executeQuery();
		//	System.out.println("if="+rs.next());
			if (!rs.next()) {
				intid=1;
		//		System.out.println("TTTTT:"+stno);
				PreparedStatement	ps=conn.prepareStatement(sql);
				ps.setString(intid++, message);
				ps.setString(intid++, userid);
				ps.setString(intid++, nowdate);
				ps.setString(intid++, sn);
				ps.setString(intid++, statu);
				ps.setString(intid++, picture);
				ps.setString(intid++, edate);
				ps.setString(intid++, sdate);
				ps.setString(intid++, stno);
				ps.setString(intid++, "0");
				ps.executeUpdate();
				
				
				intid=1;
				PreparedStatement ps3=conn.prepareStatement(sql3);
				ps3.setString(intid++, "restore");
				ps3.setString(intid++, stno);
				ps3.executeUpdate();
				ps3.close();
				ps.close();
			}else {
				
			}
			ps2.close();
			rs.close();
			conn.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
		}
	
	public static void updataPartPic (String sn,String message,String userid,String nowdate,String statu,String picture,String edate,String sdate,String stno) {
		try {
			
			int inti = 1;
			String task="1";
			Connection conn = com.clas.JDBCconnect.getConnection();
			String sql1 = "insert into dxtestwork(message,username,nowdate,sn,statu,picture,edate,sdate,stno,task) values(?,?,?,?,?,?,?,?,?,?)";
			String sql2 = "select * from dxtestwork where stno=?";
			String sql3 = "select * from dxtestwork where sn=? and username=? and sdate=? and edate=? and statu=? and message=?";
			PreparedStatement ps=null;
			PreparedStatement ps3=conn.prepareStatement(sql3);
			ps3.setString(inti++, sn);
			ps3.setString(inti++, userid);
			ps3.setString(inti++, sdate);
			ps3.setString(inti++, edate);
			ps3.setString(inti++, statu);
			ps3.setString(inti++, message);
			ResultSet rs=ps3.executeQuery();
			if (!rs.next()) {
				inti = 1;
				ps = conn.prepareStatement(sql1);
				ps.setString(inti++, message);
				ps.setString(inti++, userid);
				ps.setString(inti++, nowdate);
				ps.setString(inti++, sn);
				ps.setString(inti++, statu);
				ps.setString(inti++, picture);
				ps.setString(inti++, edate);
				ps.setString(inti++, sdate);
				ps.setString(inti++, stno);
				ps.setString(inti++, task);
				ps.executeUpdate();
				
			}else {
				
			}
			
			rs.close();	
			ps3.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	
	
	public static void updata_dxtestwork(String sn,String message,String time,String userid,String nowdate,String statu,String picture,String edate,String sdate,String stnonew) {
		if (stnonew.equals("0")) {
			try {
				int intid = 1;
				Connection	conn = com.clas.JDBCconnect.getConnection();
				String sql = "insert into dxtestwork(message,username,nowdate,sn,statu,picture,edate,sdate,stno,task,time) values(?,?,?,?,?,?,?,?,?,?,?)";
				//String sql = "delete from ## where ##=?";
				//String sql="select * from ## where ##=?";
				PreparedStatement	ps=conn.prepareStatement(sql);
				ps.setString(intid++, message);
				ps.setString(intid++, userid);
				ps.setString(intid++, nowdate);
				ps.setString(intid++, sn);
				ps.setString(intid++, statu);
				ps.setString(intid++, picture);
				ps.setString(intid++, edate);
				ps.setString(intid++, sdate);
				ps.setString(intid++, stnonew);
				ps.setString(intid++, "0");
				ps.setString(intid++, time);
				ps.executeUpdate();
				ps.close();
				conn.close();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			
			
		}else {
			try {
				int intid=1;
				Connection conn=com.clas.JDBCconnect.getConnection();
				String sql="insert into dxtestwork(message,username,nowdate,sn,statu,picture,edate,sdate,stno,task,time) values(?,?,?,?,?,?,?,?,?,?,?)";
				String sql2="select * from dxtestwork where username=? and sdate=? and edate=? and statu=?";
				//System.out.println(222);
				PreparedStatement ps2=conn.prepareStatement(sql2);
				ps2.setString(intid++, userid);
				ps2.setString(intid++, sdate);
				ps2.setString(intid++, edate);
				ps2.setString(intid++, statu);
				ResultSet rs=ps2.executeQuery("select * from dxtestwork where sn=\'"+sn+"\' and username=\'"+userid+"\' and sdate=\'"+sdate+"\' and edate=\'"+edate+"\' and statu=\'"+statu+"\' and message=\'"+message+"\'");
				if (!rs.next()) {
					
					 intid=1;
				//	System.out.println(444);
					PreparedStatement	ps=conn.prepareStatement(sql);
					ps.setString(intid++, message);
					ps.setString(intid++, userid);
					ps.setString(intid++, nowdate);
					ps.setString(intid++, sn);
					ps.setString(intid++, statu);
					ps.setString(intid++, picture);
					ps.setString(intid++, edate);
					ps.setString(intid++, sdate);
					ps.setString(intid++, stnonew);
					ps.setString(intid++, "0");
					ps.setString(intid++, time);
					ps.executeUpdate();
					ps.close();
				}else {
					//System.out.println(666);
				}
				
				
				ps2.close();
				rs.close();
				conn.close();
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		
		
		
	}
	
	
	public static List<Equ> SelectAllSn2(String sn) {
		List<Equ> listsn = new ArrayList<Equ>();
		
		try {int intsn=1;
		Connection	conn=com.clas.JDBCconnect.getConnection();
		String sql="select * from dxtest where sn=? ";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(intsn++, sn);
		 ps.execute();
		 ResultSet rs = ps.getResultSet();
		 System.out.println("==="+rs.next());
		while (rs.next()) {
			Equ equsn=new Equ();
			equsn.setId(rs.getInt("id"));
			equsn.setSid(rs.getString("sid"));
			equsn.setStdate(rs.getString("stdate"));
			equsn.setSdate(rs.getString("sdate"));
	    	equsn.setEdate(rs.getString("edate"));
	    	equsn.setRedate(rs.getString("redate"));
	    	equsn.setPname(rs.getString("pname"));
	    	equsn.setUse(rs.getString("use"));
	    	equsn.setOwnname(rs.getString("ownname"));
	    	equsn.setProname(rs.getString("proname"));
	    	equsn.setManname(rs.getString("manname"));
	    	equsn.setAgename(rs.getString("agename"));
	    	equsn.setMantyp(rs.getString("mantyp"));
	    	equsn.setSname(rs.getString("sname"));
	    	equsn.setStyp(rs.getString("styp"));
	    	equsn.setPos(rs.getString("pos"));
	    	equsn.setIp(rs.getString("ip"));
	    	equsn.setPort(rs.getString("port"));
	    	equsn.setCpu(rs.getString("cpu"));
	    	equsn.setMemory(rs.getString("memory"));
	    	equsn.setDisk(rs.getString("disk"));
	    	equsn.setSyn(rs.getString("syn"));
	    	equsn.setOracle(rs.getString("oracle"));
	    	equsn.setSn(rs.getString("sn"));
	    	equsn.setOth(rs.getString("oth"));
	    	equsn.setSroot(rs.getString("sroot"));
	    	equsn.setSpwd(rs.getString("spwd"));
	    	equsn.setOroot(rs.getString("oroot"));
	    	equsn.setOpwd(rs.getString("opwd"));
	    	equsn.setAroot(rs.getString("aroot"));
	    	equsn.setApwd(rs.getString("apwd"));
	    	equsn.setTitle(rs.getString("title"));
	    	equsn.setUrl(rs.getString("url"));
	    	equsn.setDid(rs.getString("did"));
	    	listsn.add(equsn);
		}	
		ps.close();
		rs.close();
		conn.close();
		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return listsn;
	}
	
	public static List<Equ> Warningstatu(String sqlv) {
		List<Equ> list = new ArrayList<Equ>();
		
		try {
			int inti = 1;
		Connection	conn = com.clas.JDBCconnect.getConnection();
			
			String sql=sqlv;
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			ResultSetMetaData md = rs.getMetaData();
			int columnCount = md.getColumnCount(); //Map rowData;
			while (rs.next()) {
				Equ equ=new Equ();
				
				Map<String,Object> rowData = new HashMap<String,Object>();
				for (int i = 1; i <= columnCount; i++) {
				rowData.put(md.getColumnName(i), rs.getObject(i));
				}
				equ.setRowData(rowData);
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
	
	

	public static List<Equ> SelectAllSn(String sn) {
		List<Equ> listsn = new ArrayList<Equ>();
		try {
			int intsn=1;
			sn=sn.trim();
		Connection	connsn=com.clas.JDBCconnect.getConnection();
			String sqlsn="select * from dxtest where sn=? ";
			PreparedStatement pssn = connsn.prepareStatement(sqlsn);
			pssn.setString(intsn++, sn);
			ResultSet rssn = pssn.executeQuery();
			
			
			while (rssn.next()) {
				Equ equsn=new Equ();
				equsn.setId(rssn.getInt("id"));
				equsn.setSid(rssn.getString("sid"));
				equsn.setStdate(rssn.getString("stdate"));
				equsn.setSdate(rssn.getString("sdate"));
		    	equsn.setEdate(rssn.getString("edate"));
		    	equsn.setRedate(rssn.getString("redate"));
		    	equsn.setPname(rssn.getString("pname"));
		    	equsn.setUse(rssn.getString("use"));
		    	equsn.setOwnname(rssn.getString("ownname"));
		    	equsn.setProname(rssn.getString("proname"));
		    	equsn.setManname(rssn.getString("manname"));
		    	equsn.setAgename(rssn.getString("agename"));
		    	equsn.setMantyp(rssn.getString("mantyp"));
		    	equsn.setSname(rssn.getString("sname"));
		    	equsn.setStyp(rssn.getString("styp"));
		    	equsn.setPos(rssn.getString("pos"));
		    	equsn.setIp(rssn.getString("ip"));
		    	equsn.setPort(rssn.getString("port"));
		    	equsn.setCpu(rssn.getString("cpu"));
		    	equsn.setMemory(rssn.getString("memory"));
		    	equsn.setDisk(rssn.getString("disk"));
		    	equsn.setSyn(rssn.getString("syn"));
		    	equsn.setOracle(rssn.getString("oracle"));
		    	equsn.setSn(rssn.getString("sn"));
		    	equsn.setOth(rssn.getString("oth"));
		    	equsn.setSroot(rssn.getString("sroot"));
		    	equsn.setSpwd(rssn.getString("spwd"));
		    	equsn.setOroot(rssn.getString("oroot"));
		    	equsn.setOpwd(rssn.getString("opwd"));
		    	equsn.setAroot(rssn.getString("aroot"));
		    	equsn.setApwd(rssn.getString("apwd"));
		    	equsn.setTitle(rssn.getString("title"));
		    	equsn.setUrl(rssn.getString("url"));
		    	equsn.setDid(rssn.getString("did"));
		    	listsn.add(equsn);
			}
			rssn.close();
		      pssn.close();
		      connsn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return listsn;
	}
}
