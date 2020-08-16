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
//		��1������hibernate���������ļ�
		//��src�����ҵ�������hibernate.cfg.xml
		//��hibernate�����װ����
		Configuration cfg = new Configuration();
		cfg.configure();
		
//		��2������Sessionfactory����
		//��ȡhibernate���������ļ����ݣ�����sessionFactory
		//�ڹ����У�����ӳ���ϵ�����������ݿ�����ѱ�����
		SessionFactory sf = cfg.buildSessionFactory();
		
//		��3��ʹ��Sessionfactory����session����
		Session session = sf.openSession();
		
//		��4����������
		Transaction tx = session.beginTransaction();
		
//		��5��д�����߼�crud����
		Dxtestcontractfile df = new Dxtestcontractfile();
		df.setCONTRACTNOWDATE("11");
		df.setCONTRACTPICTURE("FW-2020-05-24039_FW-2020-05-24039");
		//����session����ķ���ʵ�����
		session.save(df);
		
//		��6���ύ����
		tx.commit();
 
//		��7���ر���Դ
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
