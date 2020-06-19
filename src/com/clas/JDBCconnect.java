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
			 
	
			//公司环境
		conn = DriverManager.getConnection("jdbc:oracle:thin:@XXX.XXX.XXX.XXX:1521:ORACLE1","XXX","XXX");   
			

			//本地环境
//		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcloc","XXXX","XXXX");
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
