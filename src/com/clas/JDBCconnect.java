package com.clas;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCconnect {
	public static  Connection getConnection(){
		// 数据库连接
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			 
	//	conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.72.128:1521:orcl","test","yujian123");
			//公司环境
		conn = DriverManager.getConnection("jdbc:oracle:thin:@134.101.168.30:1521:ORACLE1","test","test");   
			
//	conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.31.176:1521:orcloc","test","yujian123");
	//		conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.101.36:1521:orcloc","test","yujian123");
	//	conn = DriverManager.getConnection("jdbc:oracle:thin:@134.101.168.33:1521:orcl","test","nbit_901");
		//	conn = DriverManager.getConnection("jdbc:oracle:thin:@134.101.168.52:1521:orcloc","test","yujian123");
			
			//本地环境
//		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcloc","test","yujian123");
			// 创建Connection连接
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// 返回数据库连接
		return conn;
	}

	public static void close(Connection con, PreparedStatement ps, ResultSet rs) {
		// TODO Auto-generated method stub
		
	}
}
