package com.sq.test;
import org.hibernate.*;
import org.hibernate.cfg.*;
import org.junit.Test;

public class test {
	public static void main(String[]args)
    {
        try
        {
            //通过Configuration获得一个SessionFactory对象
            SessionFactory sf = new Configuration().configure().buildSessionFactory();
            //打开一个Session
            Session session= sf.openSession();
            //开始一个事务
            Transaction tx =session.beginTransaction();
            //创建一个Student对象
            Product product=new Product();
            //通过Student的setter方法改变它的属性
            //注意student_id不用我们设置
            product.setFactory("jejj");
            product.setName("wq vb ");
            product.setPrice(70.00);
            product.setRemark("null");
            
            //通过session的save()方法将Student对象保存到数据库中
            session.save(product);
            //提交事务
            tx.commit();
            //关闭会话
            session.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
	
}



