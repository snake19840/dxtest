package com.clas;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCconnect {
	public static  Connection getConnection(){
		// ���ݿ�����
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			 
	//	conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.72.128:1521:orcl","test","yujian123");
			//��˾����
		conn = DriverManager.getConnection("jdbc:oracle:thin:@134.101.168.30:1521:ORACLE1","test","test");   
			
//	conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.31.176:1521:orcloc","test","yujian123");
	//		conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.101.36:1521:orcloc","test","yujian123");
	//	conn = DriverManager.getConnection("jdbc:oracle:thin:@134.101.168.33:1521:orcl","test","nbit_901");
		//	conn = DriverManager.getConnection("jdbc:oracle:thin:@134.101.168.52:1521:orcloc","test","yujian123");
			
			//���ػ���
//		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcloc","test","yujian123");
			// ����Connection����
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// �������ݿ�����
		return conn;
	}

	public static void close(Connection con, PreparedStatement ps, ResultSet rs) {
		// TODO Auto-generated method stub
		
	}
}
