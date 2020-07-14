package com.clas;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import jdk.nashorn.internal.runtime.Undefined;



public class DataSets {
	//public static String sql="select * from dxtestwork where  sn=?";
	//public static String sql="select * from dxtestwork where username=? and sn=?";
    
	
	public static String nowdate() {
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
		String dateString=dateFormat.format(new Date());
		return dateString;
	}
	public static String tomorrow() {
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
		Calendar calendar=new GregorianCalendar();
		calendar.setTime(new Date());
		calendar.add(calendar.DATE, 1);
		String dateTomString=dateFormat.format(calendar.getTime());
		return dateTomString;
	}
	public static String yesterdate() {
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
		Calendar calendar=new GregorianCalendar();
		calendar.setTime(new Date());
		calendar.roll(calendar.DATE, -1);
		String dateTomString=dateFormat.format(calendar.getTime());
		return dateTomString;
	}
	public static String anyday(int n) {
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
		Calendar calendar=new GregorianCalendar();
		calendar.setTime(new Date());
		calendar.roll(calendar.DATE, n);
		String dateTomString=dateFormat.format(calendar.getTime());
		return dateTomString;
	} 
	public static String anymonth(int n) {
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
		Calendar calendar=new GregorianCalendar();
		calendar.setTime(new Date());
		calendar.set(Calendar.DAY_OF_MONTH,1);
		calendar.roll(calendar.MONTH, n);
		String dateTomString=dateFormat.format(calendar.getTime());
		return dateTomString;
	} 
	public static String monthNow(Date n) {
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
		Calendar calendar=new GregorianCalendar();
		calendar.setTime(n);
		calendar.set(Calendar.DAY_OF_MONTH,1);
		calendar.roll(calendar.MONTH, 0);
		String dateTomString=dateFormat.format(calendar.getTime());
		return dateTomString;
	} 
	public static String monthNext(Date n) {
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
		Calendar calendar=new GregorianCalendar();
		calendar.setTime(n);
		calendar.set(Calendar.DAY_OF_MONTH,1);
		calendar.roll(calendar.MONTH, 1);
		String dateTomString=dateFormat.format(calendar.getTime());
		return dateTomString;
	} 
	
	
    public   ArrayList<Equ> list=new ArrayList<Equ>();
    public static ArrayList<Equ> getEqus(String sn,String username){
    	//System.out.println(1111);
    	ArrayList<Equ> list=new ArrayList<Equ>();
    	
        try {
        	
        	Connection  conn = com.clas.JDBCconnect.getConnection();
		      String sql = "select * from dxtest where sn=?";
		      PreparedStatement ps = conn.prepareStatement(sql);
		      ps.setString(1, sn);
			 ResultSet rs = ps.executeQuery();
	//		System.out.println(sn);
	//	     System.out.println(rs.next());
			while(rs.next())
            {
            	Equ equ=new Equ();
            	equ.setId(rs.getInt("id"));
               equ.setMessage(rs.getString("message"));
		    	equ.setUsername(rs.getString("username"));
		    	equ.setUserpwd(rs.getString("userpwd"));
		    	equ.setNowdate(rs.getString("nowdate"));
		    	//equ.setPictrue(rs.getString("pictrue"));
		    	equ.setSdate(rs.getString("sdate"));
		    	equ.setEdate(rs.getString("edate"));
		    	equ.setSn(rs.getString("sn"));
		    	list.add(equ);
            }System.out.println(list);
		//}
            
            conn.close();
            ps.close();
            rs.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }
    
    //将list转成json样式的字符串
    public static String dataJson(List<Equ> list){
        String json="[";
        for (Equ equ : list) {
            String line="{\"message\":\""+equ.getMessage()+
            	"\",\"username\":\""+equ.getUsername()+
            	"\",\"userpwd\":\""+equ.getUserpwd()+
			  "\",\"sdate\":\""+equ.getSdate()+
			  "\",\"edate\":\""+equ.getEdate()+
			  "\",\"nowdate\":\""+equ.getNowdate()+
			 "\",\"sn\":\""+equ.getSn()+
			  "\",\"id\":\""+equ.getId()+"\"},"+
			 "\r\n";
            json=json+line;
            System.out.println(7777);
        }
        json=json.substring(0, json.length()-3);
        json=json+"]";
        return json;

    }
    
    public static String dataJsonNull(){
        String json="[";
        
            String line="{\"message\":\""+""+
            	"\",\"username\":\""+""+
            	"\",\"userpwd\":\""+""+
			  "\",\"sdate\":\""+""+
			  "\",\"edate\":\""+""+
			  "\",\"nowdate\":\""+""+
			 "\",\"sn\":\""+""+
			  "\",\"id\":\""+""+"\"}"+
			 "\r\n";
            json=json+line;
           // System.out.println(8888);
        
       // json=json.substring(0, json.length()-3);
        json=json+"]";
        return json;

    }
public static void main(String[] args) {
	System.out.println(DataSets.anymonth(1));
	
	
}

}
