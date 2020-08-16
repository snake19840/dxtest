package com.servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clas.DataSets;
import com.clas.Equ;
import com.clas.IsDigit;
import com.google.gson.Gson;




/**
 * Servlet implementation class DataServlet1
 */
@WebServlet("/DataServlet1")
public class DataServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8"); 
        response.setContentType("text/html;charset=utf-8"); 
        response.setCharacterEncoding("utf-8"); 
		doPost(request, response);

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8"); 
        response.setContentType("text/html;charset=utf-8"); 
        response.setCharacterEncoding("utf-8"); 
        

        String username = String.valueOf(request.getParameter("username"));
        String sn = String.valueOf(request.getParameter("sn"));
       // System.out.println(1);
        Connection conn = null;
        Statement stmt = null;
        PrintWriter out = response.getWriter();
        // 设置响应内容类型
        
        //PrintWriter out = response.getWriter();
        
        
        try {
        	int intId=1;
            String sql;
			conn = com.clas.JDBCconnect.getConnection();
			
			/*
			stmt = conn.createStatement();
			 sql = "select * from dxtestwork";
			 ResultSet rs = stmt.executeQuery(sql);
			*/
			 sql = "select * from dxtestwork where sn=?";
			 PreparedStatement ps = conn.prepareStatement(sql);
			 ps.setString(intId++,sn );
			 ResultSet rs = ps.executeQuery();
			 
			 
			 // 执行 SQL 查询
           //sql = "select * from dxtest order by id desc";
           
          /*  
            if (IsDigit.isInt(sn)==false) {
            	ps.setString(intId++, sn);
			}else {
				int intSn=Integer.parseInt(sn);
				ps.setInt(intId++, 11);
			}*/
          
            
        /*
			 * Statement stmt=null; List<Equ> list = new ArrayList<Equ>(); try { Connection
			 * conn = com.clas.JDBCconnect.getConnection();
			 * 
			 * // 执行 SQL 查询 stmt = (Statement) conn.createStatement(); String sql; //sql =
			 * "select * from dxtest order by id desc"; sql = "select * from dxtest ";
			 * ResultSet rs = stmt.executeQuery(sql);
			 */
            List<Equ> list = new ArrayList<Equ>(); 
            Equ equ =null;
           
           String message,username1,userpwd,nowdate,sn1;
           
           while (rs.next()){
  		    	  equ=new Equ();
  		    	equ.setId(rs.getInt("id"));
  		    	if (rs.getString("message")==null) {
  		    		message="";
				}else {
					 message=rs.getString("message");
				}
  		    	equ.setMessage(message);
  		    	
  		    	if (rs.getString("username")==null) {
  		    		username1="";
				}else {
					username1=rs.getString("username");
				}
  			      equ.setUsername(username1);
  			      
  			    if (rs.getString("userpwd")==null) {
  			    	userpwd="";
				}else {
					userpwd=rs.getString("userpwd");
				}
  			      equ.setUserpwd(userpwd);
  			      
  			    if (rs.getString("nowdate")==null) {
  			    	nowdate="";
				}else {
					nowdate=rs.getString("nowdate");
				}
  			      equ.setNowdate(nowdate);
  			
  			      
  			    if (rs.getString("sn")==null) {
  			    	sn1="";
				}else {
					sn1=rs.getString("sn");
				}
  		
  			      equ.setSn(sn1);
  			
  			    	System.out.println("用户对象:"+equ);
  			    	list.add(equ);
  			    
  			    }
             
              Gson gson=new Gson();
		         String info=gson.toJson(list);  
		         System.out.println(info);
		       
		         out.write(info);
		         rs.close();
		      
		    //  ps.close();
		      conn.close();
		      
		      
		      
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
       //DataSets dataSets=new DataSets();
        
      
    //   request.setAttribute("list", list);
		 request.getRequestDispatcher("TestWarning3.jsp").forward(request, response);
		
	//	doPost(request, response);
	}
        
        
		
	}


