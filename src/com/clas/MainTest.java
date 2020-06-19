package com.clas;

import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;





public class MainTest {

	
	
		public static void main(String[] args) {
			String listStr="[{\"payname\":\"2\",\"paypor\":\"1\",\"paydate\":\"2020-01-8\",\"classson\":\"选择子类\",\"statu\":\"1\"},{\"payname\":\"4\",\"paypor\":\"25\",\"paydate\":\"2020-01-8\",\"classson\":\"1\",\"statu\":\"1\"},{\"payname\":\"4\",\"paypor\":\"25\",\"paydate\":\"2020-02-28\",\"classson\":\"1\",\"statu\":\"0\"}]";
			String contractid ="45";
			PlanCheck planCheck=new PlanCheck();
			Gson gson = new Gson();
			List<Equ> list= gson.fromJson(listStr, new TypeToken<List<Equ>>(){}.getType());
			System.out.println(list.get(0));
			list.get(0).setStatu("0");
			System.out.println(list.get(0));
			/*
			List<Equ> list=new ArrayList<Equ>();
			for (int i = 0; i < 3; i++) {
				Equ equ=new Equ();
				equ.setApwd("你好");
				equ.setAgename("早上");
				list.add(equ);
			}
			SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
			Date date = new Date(System.currentTimeMillis());
		String	nowdate="2019-05-04";
		System.out.println(date);
			
			          try {
						date = formatter.parse(nowdate);
					} catch (java.text.ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}   
			         
			 
		
		System.out.println(date);	
			String	plandate=formatter.format(new Date(date.getTime()+2*86400000));
			Date b = null;
			try {
				b = formatter.parse(plandate);
			} catch (java.text.ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	//		plandate
	//		date.before(b)
		boolean a=	b.before(date);
				
				Gson gson = new Gson();
		//		String nowdatelGson=gson.toJson(nowdatel); 
				
				
				
//				Calendar rightNow = Calendar.getInstance();
//				rightNow.setTime(dt);
//				rightNow.add(Calendar.YEAR,-1);//日期减1年
//				rightNow.add(Calendar.MONTH,3);//日期加3个月
//				rightNow.add(Calendar.DAY_OF_YEAR,10);//日期加10天
//				rightNow.add(Calendar.SECOND,60);//日期加60秒天
//				Date dt1=rightNow.getTime();
//				String reStr = sdf.format(dt1);
				System.out.println( a);
	
		*/
			

			
//			System.out.println(nowdateDate);
//			System.out.println(nowdateStr);
//			
//			System.out.println(planAlertStr);
			
			
		
		}
		}
	


