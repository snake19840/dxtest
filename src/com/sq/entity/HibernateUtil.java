package com.sq.entity;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class HibernateUtil {
	private static final ThreadLocal<Session> THREAD_LOCAL=new ThreadLocal<Session>();
	private static SessionFactory sessionFactory=null;
	static {
		try {
			Configuration cfg=new Configuration().configure();
			sessionFactory=cfg.buildSessionFactory();
		} catch (Exception e) {
			// TODO: handle exception
			System.err.println("create error");
			e.printStackTrace();
		}
	}
	//get Session
	public static Session getSession()throws HibernateException {
		Session session=(Session)THREAD_LOCAL.get();
		if (session==null||!session.isOpen()) {
			if (sessionFactory==null) {
				rebuildSessionFactory();
			}
			session=(sessionFactory!=null)? sessionFactory.openSession():null;
			THREAD_LOCAL.set(session);
		}
		return session;
	}
	
	public static void rebuildSessionFactory() {
		try {
			Configuration cfg=new Configuration().configure();
			sessionFactory=cfg.buildSessionFactory();
		} catch (Exception e) {
			// TODO: handle exception
			System.err.println("create sessionFactory error");
			e.printStackTrace();
		}
	}
	
	//get sessionFactory
	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public static void closeSession()throws HibernateException {
		Session session=(Session)THREAD_LOCAL.get();
		THREAD_LOCAL.set(null);
		if (session!=null) {
			session.close();
		}
	}
}
