package com.clas;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class JDBCOperator {
	public static Users doLogin(String name,String password){
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		Users user = null;
						
		conn = com.clas.JDBCconnect.getConnection();
	
		String sql = "select * from tb_user where tb_username = ? and tb_password = ?";//编写sql语句
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, name);
			pst.setString(2, password);
			rs = pst.executeQuery();//提交查询语句
			while(rs.next()){//遍历返回的查询结果
				user = new Users();//封装到user类
				user.setName("tb_username");
				user.setPassword("tb_password");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(conn,pst,rs);
		}
		return user;
	}
	
	public static void close(Connection conn,PreparedStatement pst,ResultSet rs){//关闭连接
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(pst!=null){
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}


	}
}
