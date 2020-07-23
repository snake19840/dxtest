package com.clas;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCconnect {
	public static  Connection getConnection(){
		// 閺佺増宓佹惔鎾圭箾閹猴拷
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			 
	
			//閸忣剙寰冮悳顖氼暔
//			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcloc","test","test");

			

			//閺堫剙婀撮悳顖氼暔
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcloc","test","yujian123");
			// 閸掓稑缂揅onnection鏉╃偞甯�
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// 鏉╂柨娲栭弫鐗堝祦鎼存捁绻涢幒锟�
		return conn;
	}

	public static void close(Connection con, PreparedStatement ps, ResultSet rs) {
		// TODO Auto-generated method stub
		
	        // TODO Auto-generated method stub  
	          
	        //关闭结果集  
	        try {  
	              
	            //结果集关闭方法  
	            if(rs!=null){  
	                  
	                rs.close();  
	                  
	            }  
	              
	        } catch (SQLException e) {  
	            // TODO Auto-generated catch block  
	            e.printStackTrace();  
	        }finally{  
	              
	            //关闭声明的sql语句  
	            try {  
	                  
	                //关闭声明的sql语句方法  
	                if(ps!=null){  
	                      
	                    ps.close();  
	                      
	                }  
	                  
	            } catch (SQLException e) {  
	                // TODO Auto-generated catch block  
	                e.printStackTrace();  
	            }finally{  
	                  
	                //卸载驱动  
	                try {  
	                      
	                    //驱动卸载方法  
	                    if(con!=null){  
	                          
	                        con.close();  
	                          
	                    }  
	                      
	                } catch (SQLException e) {  
	                    // TODO Auto-generated catch block  
	                    e.printStackTrace();  
	                }  
	                  
	            }  
	        }  
	      
	    } 
	
}
