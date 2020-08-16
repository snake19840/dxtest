package com.dao;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.clas.Equ;
import com.clas.JDBCconnect;

public class SelItemPart {
	
	
	
	public List<Equ> selAll(String sd,String ed) {
		List<Equ> list=new ArrayList<Equ>();
		List<String> listTemp=new ArrayList<String>();
		String tt="";
		try {
			Connection conn=JDBCconnect.getConnection();
			Statement st= conn.createStatement();
			//恢复
			String sql="select * from dxtestwork where statu<>'巡检人员' and sdate= '"+sd+"' and edate='"+ed+"' and stno='0'  order by nowdate,statu";
			ResultSet rs=st.executeQuery(sql);
			while (rs.next()) {
				Equ equ = new Equ();
/* 1136 */               equ.setMessage(rs.getString("message"));
/* 1137 */               equ.setUsername(rs.getString("username"));
/* 1138 */               equ.setUserpwd(rs.getString("userpwd"));
/* 1139 */               equ.setNowdate(rs.getString("nowdate"));
/* 1140 */               equ.setSn(rs.getString("sn"));
/* 1141 */               equ.setPos("无");
/* 1142 */               equ.setStatu(rs.getString("statu"));
/* 1143 */               equ.setPicture(rs.getString("picture"));
/* 1144 */               equ.setSdate(rs.getString("sdate"));
/* 1145 */               equ.setEdate(rs.getString("edate"));
/* 1146 */               equ.setStno(rs.getString("stno"));
/* 1147 */               equ.setTime(rs.getString("time"));
/* 1148 */               list.add(equ);
			}
			
			
//			添加故障
			sql="select DISTINCT STNO from dxtestwork where statu<>'巡检人员'  and sdate= '"+sd+"' and edate='"+ed+"' and stno!='0'";
			rs=st.executeQuery(sql);
			while (rs.next()) {
				listTemp.add(rs.getString("stno"));
			}
			for (int i = 0; i < listTemp.size(); i++) {
				tt=listTemp.get(i).substring(0,2);
				if(tt.equals("A-")){
					sql="select  * from dxtestwork where statu<>'恢复'  and STNO='"+listTemp.get(i)+"'   and TASK='0'";
				}else {
					sql="select  t1.message,t1.username,t1.userpwd,t1.nowdate,t1.sn,t2.pos,t1.statu,t1.picture,t1.sdate,t1.edate,t1.stno,t1.time from dxtestwork t1,DXTEST t2 where t1.SN=t2.SN AND t1.statu<>'恢复'  and t1.STNO= '"+listTemp.get(i)+"'  and t1.TASK='0'";
				}
				
//				
				rs=st.executeQuery(sql);
				while (rs.next()) {
					Equ equ = new Equ();
/* 1136 */               equ.setMessage(rs.getString("message"));
/* 1137 */               equ.setUsername(rs.getString("username"));
/* 1138 */               equ.setUserpwd(rs.getString("userpwd"));
/* 1139 */               equ.setNowdate(rs.getString("nowdate"));
/* 1140 */               equ.setSn(rs.getString("sn"));
						if (rs.getString("statu").equals("环境")) {
							 equ.setPos("无");
						}else {
							equ.setPos(rs.getString("pos"));
						}
/* 1141 */              
/* 1142 */               equ.setStatu(rs.getString("statu"));
/* 1143 */               equ.setPicture(rs.getString("picture"));
/* 1144 */               equ.setSdate(rs.getString("sdate"));
/* 1145 */               equ.setEdate(rs.getString("edate"));
/* 1146 */               equ.setStno(rs.getString("stno"));
/* 1147 */               equ.setTime(rs.getString("time"));
/* 1148 */               list.add(equ);
				}
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return list;
	}
	

}
