package com.clas;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.sun.crypto.provider.RSACipher;

import oracle.jdbc.internal.XSPrincipal.Flag;

public class Check_filename {
	
	
		public boolean check(String filen) {
			boolean flag=false;
			
			
			try {
				Connection conn=com.clas.JDBCconnect.getConnection();
				String sql="select * from dxtestfile where url=?";
				PreparedStatement ps=conn.prepareStatement(sql);
				
				ps.setString(1, filen);
				
				ResultSet rs=ps.executeQuery();
				
				while(rs.next()) {
					if(rs.getString("url").equals(filen)) {
						flag=true;
					}
				}
				
			
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				
			}
			return flag;
			
			
			
		}
	
}
