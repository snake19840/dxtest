package com.sq.test;

import java.io.Console;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.junit.Test;

import com.dao.Dxtestcontractfile;

public class Demo {
	@Test
	public void test() {
//		（1）加载hibernate核心配置文件
		//到src下面找到名称是hibernate.cfg.xml
		//在hibernate里面封装对象
		Configuration cfg = new Configuration();
		cfg.configure();
		
//		（2）创建Sessionfactory对象
		//读取hibernate核心配置文件内容，创建sessionFactory
		//在过程中，根据映射关系，在配置数据库里面把表建立好
		SessionFactory sf = cfg.buildSessionFactory();
		
//		（3）使用Sessionfactory创建session对象
		Session session = sf.openSession();
		
//		（4）开启事物
		Transaction tx = session.beginTransaction();
		
//		（5）写具体逻辑crud操作
		Dxtestcontractfile df = new Dxtestcontractfile();
		df.setCONTRACTNOWDATE("11");
		df.setCONTRACTPICTURE("FW-2020-05-24039_FW-2020-05-24039");
		//调用session里面的方法实现添加
		session.save(df);
		
//		（6）提交事务
		tx.commit();
 
//		（7）关闭资源
		session.close();
		sf.close();
	}
	
	public void upfile(String contractpicture,String plan1,String contractid) {
		Configuration cfg = new Configuration();
		cfg.configure();
		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		Dxtestcontractfile df = new Dxtestcontractfile();
		df.setCONTRACTNOWDATE(contractid);
		df.setCONTRACTPICTURE(contractpicture);
		df.setPLAN1(plan1);
		session.save(df);
		tx.commit();
		session.close();
		sf.close();
	}
	
public static void main(String[] args) {
//	Demo demo=new Demo();
//	demo.test();
	SimpleDateFormat formatYear = new SimpleDateFormat("yyyy");
	SimpleDateFormat formatMonth = new SimpleDateFormat("M");
	DecimalFormat df=new DecimalFormat("00");
	Calendar c = Calendar.getInstance();
	System.out.println( df.format(0));
}

}
