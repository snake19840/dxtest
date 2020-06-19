package com.clas;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import com.dao.ContractDao;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

public class PlanCheck {
	
	public List<Equ>  planCheck(String listStr,String contractid) {
		List<Equ> list=new ArrayList<Equ>();
		Equ equ=new Equ();
		int id=0;
		boolean flag=false;
		Gson gson = new Gson();
		if (listStr==null) {
			flag=false;
		}else {
			List<Equ> jsonListObject = gson.fromJson(listStr, new TypeToken<List<Equ>>(){}.getType());
			 for (int i = 0; i < jsonListObject.size(); i++) {
				 String statu=jsonListObject.get(i).getStatu();	
				 String payname=jsonListObject.get(i).getPayname();	
				 String paypor=jsonListObject.get(i).getPaypor();	
				 String paydate=jsonListObject.get(i).getPaydate();	
				 
				 String classson=jsonListObject.get(i).getClassson();	
				 Date paydate1=null;
				 
//				 格式化时间
				 SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
			//	当前时间
				Date nowDate = new Date(System.currentTimeMillis());
				
				 //状态判断
				 if (statu.equals("1")) {
					 flag=true;
					 id=0;
				}else {
//					时间格式化
					try {
						paydate1 = formatter.parse(paydate);
              } catch (java.text.ParseException e) {
                     // TODO Auto-generated catch block
                     e.printStackTrace();
              }
					//时间判断
					if (nowDate.before(paydate1)) {
					ContractDao contractDao=new ContractDao();
					contractDao.upDataPlanDate1(paydate, contractid);
					flag=true;
					id=1;
					break;
					}else {
						flag=false;
						id=2;
						break;
					}
				}
			}
		}
		//id=0(项目结束);id=1(时间正常);id=2(计划时间小于等于当前时间),true(正常添加修改内容)
		 equ.setId(id);
		 equ.setFlag(flag);
		 list.add(equ);
		return list;
	}
}
