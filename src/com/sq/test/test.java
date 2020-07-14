package com.sq.test;
import org.hibernate.*;
import org.hibernate.cfg.*;
import org.junit.Test;

public class test {
	public static void main(String[]args)
    {
        try
        {
            //ͨ��Configuration���һ��SessionFactory����
            SessionFactory sf = new Configuration().configure().buildSessionFactory();
            //��һ��Session
            Session session= sf.openSession();
            //��ʼһ������
            Transaction tx =session.beginTransaction();
            //����һ��Student����
            Product product=new Product();
            //ͨ��Student��setter�����ı���������
            //ע��student_id������������
            product.setFactory("jejj");
            product.setName("wq vb ");
            product.setPrice(70.00);
            product.setRemark("null");
            
            //ͨ��session��save()������Student���󱣴浽���ݿ���
            session.save(product);
            //�ύ����
            tx.commit();
            //�رջỰ
            session.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
	
}



