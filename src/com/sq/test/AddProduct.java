package com.sq.test;
import org.hibernate.Session;
import com.sq.entity.HibernateUtil;

public class AddProduct {
	public static void main(String[] args) {
		Session session=null;
		Product product=new Product();
		product.setName("Java Web");
		product.setPrice(79.00);
		product.setFactory("Ã÷ÈÕ");
		product.setRemark("no one");
		//Hibernate
		try {
			session=HibernateUtil.getSession();
			session.beginTransaction();
			session.save(product);
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
			session.getTransaction().rollback();
			System.out.println("error");
			e.printStackTrace();
		}finally {
			HibernateUtil.closeSession();
		}
	}
	
}
