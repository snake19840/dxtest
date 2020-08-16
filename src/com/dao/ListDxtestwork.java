package com.dao;




import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.clas.Equ;
import com.clas.JDBCconnect;
import com.google.gson.Gson;


public class ListDxtestwork {
	
	List<Equ> listAllDxtestwork2=new ArrayList<Equ>();
	
	
	public static List<Equ> xunjian(List<Equ> list, String sd,String ed) {
		try {
		Connection	conn=JDBCconnect.getConnection();
		Statement	stam=conn.createStatement();
			String sql="SELECT distinct username,sdate,edate,statu FROM DXTESTWORK WHERE STATU='巡检人员' AND SDATE>'"+sd+"' AND SDATE<='"+ed+"'";
			ResultSet rs=stam.executeQuery(sql);
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setUsername(rs.getString("username"));
				equ.setEdate(rs.getString("edate"));
				equ.setSdate(rs.getString("sdate"));
				equ.setStatu(rs.getString("statu"));
				list.add(equ);
			}
			rs.close();
			stam.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	public static List<Equ> times(List<Equ> list,String sd,String ed){
		try {
			Connection	conn=JDBCconnect.getConnection();
			Statement	stam=conn.createStatement();
				String sql="SELECT distinct sdate,edate FROM DXTESTWORK WHERE STATU<>'巡检人员' AND SDATE>'"+sd+"' AND SDATE<='"+ed+"' ORDER BY SDATE";
				ResultSet rs=stam.executeQuery(sql);
				while (rs.next()) {
					Equ equ=new Equ();
					equ.setEdate(rs.getString("edate"));
					equ.setSdate(rs.getString("sdate"));
					list.add(equ);
				}
				rs.close();
				stam.close();
				conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	
	public static  List<Equ> item(List<Equ> list,String sql) {
		
		try {
			Connection	conn=JDBCconnect.getConnection();
			Statement	stam=conn.createStatement();
//				 sql="SELECT  username,sdate,edate,statu FROM DXTESTWORK WHERE STATU<>'巡检人员' AND SDATE='"+sd+"' AND edate='"+ed+"' ORDER BY NOWDATE DESC";
				ResultSet rs=stam.executeQuery(sql);
				while (rs.next()) {
					Equ equ =new Equ();
					equ.setUsername(rs.getString("username"));
					 equ.setEdate(rs.getString("edate"));
					equ.setSdate(rs.getString("sdate"));
					equ.setStatu(rs.getString("statu"));
					list.add(equ);
					break;
				}
				
				rs.close();
				stam.close();
				conn.close();
				
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
	}
	
	public static List<Equ> itemRes(List<Equ> list,String sd,String ed) {
		int count1=0;
		int count2=0;
		
		
		
		try {
			Connection	conn=JDBCconnect.getConnection();
			Statement	stam=conn.createStatement();
				String sql="select count(*) from (SELECT DISTINCT stno FROM DXTESTWORK WHERE STATU<>'巡检人员' AND STATU<>'恢复'     AND SDATE='"+sd+"' AND edate='"+ed+"')";
				ResultSet rs=stam.executeQuery(sql);
				while (rs.next()) {
					count1 = rs.getInt(1);
					break;
				}
				
				 sql="select count(*) from (SELECT DISTINCT statu,stno FROM DXTESTWORK WHERE STATU='恢复'  and (stno!='0' and stno is not null)  AND SDATE='"+sd+"' AND edate='"+ed+"')";
				 rs=stam.executeQuery(sql);
				while (rs.next()) {
					count2 = rs.getInt(1);
					break;
				}
				
				if (count2>0) {
					if (count2==count1) {
						sql="SELECT username,sdate,edate,statu FROM DXTESTWORK WHERE STATU='恢复'  and (stno!='0' and stno is not null)  AND SDATE='"+sd+"' AND edate='"+ed+"' ORDER BY NOWDATE DESC";
						 rs=stam.executeQuery(sql);
						while (rs.next()) {
							Equ equ =new Equ();
							equ.setUsername(rs.getString("username"));
							 equ.setEdate(rs.getString("edate"));
							equ.setSdate(rs.getString("sdate"));
							equ.setStatu(rs.getString("statu"));
							list.add(equ);
							break;
						}
					}
				}
				
				rs.close();
				stam.close();
				conn.close();
				
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	public static List<Equ> itemAll(List<Equ> list,String sd,String ed) {
		int count=0;
		List<Equ> listTemp=new ArrayList<Equ>();
		
		try {
			Connection	conn=JDBCconnect.getConnection();
			Statement	stam=conn.createStatement();
				String sql="select count(*) from (SELECT DISTINCT statu FROM DXTESTWORK WHERE STATU<>'巡检人员' AND SDATE='"+sd+"' AND edate='"+ed+"')";
				ResultSet rs=stam.executeQuery(sql);
				while (rs.next()) {
					count = rs.getInt(1);
					if (count==1) {
						sql="SELECT  username,sdate,edate,statu FROM DXTESTWORK WHERE STATU<>'巡检人员' AND SDATE='"+sd+"' AND edate='"+ed+"' ORDER BY NOWDATE DESC";
						list=ListDxtestwork.item(listTemp,sql);
					}else {
						sql="SELECT  username,sdate,edate,statu FROM DXTESTWORK WHERE STATU<>'巡检人员' and TASK<>'1' and STATU<>'恢复' AND SDATE='"+sd+"' AND edate='"+ed+"' ORDER BY NOWDATE DESC";
						list=ListDxtestwork.item(listTemp,sql);
					}
				}
				rs.close();
				stam.close();
				conn.close();
				
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
	}
	
	public static List<Equ> selAll(Date date){
		date=new Date();
		List<Equ> listAllDxtestwork2=new ArrayList<Equ>();
		List<Equ> list=new ArrayList<Equ>();
		String t0="2017-08-01 00:00:00";
		String t1="2030-09-01 00:00:00";
		int count=0;
		int count1=0;
		int count2=0;
		
		String sd="";
		String ed="";
		try {
			Connection	conn=JDBCconnect.getConnection();
			Statement	stam=conn.createStatement();
		
			ResultSet	rs2=null;
			ResultSet	rs3=null;
			ResultSet	rs4=null;
//			巡检
				String sql="SELECT distinct username,sdate,edate,statu FROM DXTESTWORK WHERE STATU='巡检人员' AND SDATE>'"+t0+"' AND SDATE<='"+t1+"'";
				ResultSet rs=stam.executeQuery(sql);
				while (rs.next()) {
					Equ equ=new Equ();
					equ.setUsername(rs.getString("username"));
					equ.setEdate(rs.getString("edate"));
					equ.setSdate(rs.getString("sdate"));
					equ.setStatu(rs.getString("statu"));
					listAllDxtestwork2.add(equ);
				}
				
//			每天的记录	
				 sql="SELECT distinct sdate,edate FROM DXTESTWORK WHERE STATU<>'巡检人员' AND SDATE>'"+t0+"' AND SDATE<='"+t1+"' ORDER BY SDATE";
				 rs=stam.executeQuery(sql);
				while (rs.next()) {
					Equ equ=new Equ();
					equ.setEdate(rs.getString("edate"));
					equ.setSdate(rs.getString("sdate"));
					list.add(equ);
				}
				
//				遍历记录
				for (int i = 0; i < list.size(); i++) {
					sd=list.get(i).getSdate();
					ed=list.get(i).getEdate();
					
					
//					故障
					 sql="select count(*) from (SELECT DISTINCT statu FROM DXTESTWORK WHERE STATU<>'巡检人员' AND SDATE='"+sd+"' AND edate='"+ed+"')";
					 
					 rs=stam.executeQuery(sql);
					while (rs.next()) {
						count = rs.getInt(1);
					}
					
					if (count==1) {
						sql="SELECT  username,sdate,edate,statu FROM DXTESTWORK WHERE STATU<>'巡检人员' AND SDATE='"+sd+"' AND edate='"+ed+"' ORDER BY NOWDATE DESC";
						 rs2=stam.executeQuery(sql);
						while (rs2.next()) {
							Equ equ =new Equ();
							equ.setUsername(rs2.getString("username"));
							 equ.setEdate(rs2.getString("edate"));
							equ.setSdate(rs2.getString("sdate"));
							equ.setStatu(rs2.getString("statu"));
							listAllDxtestwork2.add(equ);
							break;
						}
					}else {
						sql="SELECT  username,sdate,edate,statu FROM DXTESTWORK WHERE STATU<>'巡检人员' and TASK<>'1' and STATU<>'恢复' AND SDATE='"+sd+"' AND edate='"+ed+"' ORDER BY NOWDATE DESC";
						 rs2=stam.executeQuery(sql);
							while (rs2.next()) {
								Equ equ =new Equ();
								equ.setUsername(rs2.getString("username"));
								 equ.setEdate(rs2.getString("edate"));
								equ.setSdate(rs2.getString("sdate"));
								equ.setStatu(rs2.getString("statu"));
								listAllDxtestwork2.add(equ);
								break;
							}
					}
					
					
//						恢复
						
						
						 sql="select count(*) from (SELECT DISTINCT stno FROM DXTESTWORK WHERE STATU<>'巡检人员' AND STATU<>'恢复'     AND SDATE='"+sd+"' AND edate='"+ed+"')";
						 rs3=stam.executeQuery(sql);
						while (rs3.next()) {
							count1 = rs3.getInt(1);
							break;
						}
						
						 sql="select count(*) from (SELECT DISTINCT statu,stno FROM DXTESTWORK WHERE STATU='恢复'  and (stno!='0' and stno is not null)  AND SDATE='"+sd+"' AND edate='"+ed+"')";
						 rs3=stam.executeQuery(sql);
						while (rs3.next()) {
							count2 = rs3.getInt(1);
							break;
						}
						
						if (count2>0) {
							if (count2==count1) {
								sql="SELECT username,sdate,edate,statu FROM DXTESTWORK WHERE STATU='恢复'  and (stno!='0' and stno is not null)  AND SDATE='"+sd+"' AND edate='"+ed+"' ORDER BY NOWDATE DESC";
								 rs3=stam.executeQuery(sql);
								while (rs3.next()) {
									Equ equ =new Equ();
									equ.setUsername(rs3.getString("username"));
									 equ.setEdate(rs3.getString("edate"));
									equ.setSdate(rs3.getString("sdate"));
									equ.setStatu(rs3.getString("statu"));
									listAllDxtestwork2.add(equ);
									break;
								}
							}
						}
						
						
						
					}
				
				
				rs2.close();
				rs3.close();
				rs.close();
				stam.close();
				conn.close();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally {
				
			}
		
		
		return listAllDxtestwork2;
	}
	
	
	public static List<Equ> selAll2(Date date) {
		
		List<Equ> listAllDxtestwork2=new ArrayList<Equ>();
		String t0="2017-08-01 00:00:00";
		String t1="2030-09-01 00:00:00";
		
		
		String sd="";
		String ed="";
		 listAllDxtestwork2 =ListDxtestwork.xunjian(listAllDxtestwork2, t0, t1);
		 List<Equ> list=new ArrayList<Equ>();
		  list=ListDxtestwork.times(list, t0, t1);
		for (int i = 0; i < list.size(); i++) {
			sd=list.get(i).getSdate();
			ed=list.get(i).getEdate();
			List<Equ> listTemp=new ArrayList<Equ>();
			listTemp=ListDxtestwork.itemAll(listTemp, sd, ed);
			listAllDxtestwork2.addAll(listTemp);
			listAllDxtestwork2=ListDxtestwork.itemRes(listAllDxtestwork2, sd, ed);
		}
		String aString="";
		return listAllDxtestwork2;
	}
	
	
	public static void main(String[] args) {
		
		
		Gson gson = new Gson();
		//String #Gson=gson.toJson(#); 
		//session.setAttribute("#Gson", #Gson);
//		String listAllDxtestwork2Gson=gson.toJson(listAllDxtestwork2); 
		
		String t="Mon Aug 09 2021 00:00:00 GMT+0800 (中国标准时间)";
		
		Date date = new Date(System.currentTimeMillis());
			
//		String aString="";
		
	}

}
