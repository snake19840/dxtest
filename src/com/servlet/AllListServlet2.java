package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clas.Equ;
import com.clas.EquFile;
import com.dao.FileDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class AllListServlet2
 */
//@WebServlet("/AllListServlet2")
public class AllListServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllListServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				//response.getWriter().append("Served at: ").append(request.getContextPath());
				
				response.setContentType("Text/html");
				request.setCharacterEncoding("UTF-8");
				response.setCharacterEncoding("UTF-8");
				Connection conn = null;
		        Statement stmt = null;
		        // 设置响应内容类型
		        
		        //PrintWriter out = response.getWriter();
		        List<Equ> list = new ArrayList<Equ>(); 
		        
		        try {
		        	
		            conn = com.clas.JDBCconnect.getConnection();

		            // 执行 SQL 查询
		            stmt = conn.createStatement();
		            String sql;
		            //sql = "select * from dxtest order by id desc";
		            sql = "select * from dxtest ";
		            ResultSet rs = stmt.executeQuery(sql);
		            
		            // 展开结果集数据库
		            while(rs.next()){
		            	Equ equ=new Equ();
				        equ.setId(rs.getInt("id"));
				        equ.setSid(rs.getString("sid"));
				    	equ.setStdate(rs.getString("stdate"));
				    	equ.setSdate(rs.getString("sdate"));
				    	equ.setEdate(rs.getString("edate"));
				    	equ.setRedate(rs.getString("redate"));
				    	equ.setPname(rs.getString("pname"));
				    	equ.setUse(rs.getString("use"));
				    	equ.setOwnname(rs.getString("ownname"));
				    	equ.setProname(rs.getString("proname"));
				    	equ.setManname(rs.getString("manname"));
				    	equ.setAgename(rs.getString("agename"));
				    	equ.setMantyp(rs.getString("mantyp"));
				    	equ.setSname(rs.getString("sname"));
				    	equ.setStyp(rs.getString("styp"));
				    	equ.setPos(rs.getString("pos"));
				    	equ.setIp(rs.getString("ip"));
				    	equ.setPort(rs.getString("port"));
				    	equ.setCpu(rs.getString("cpu"));
				    	equ.setMemory(rs.getString("memory"));
				    	equ.setDisk(rs.getString("disk"));
				    	equ.setSyn(rs.getString("syn"));
				    	equ.setOracle(rs.getString("oracle"));
				    	equ.setSn(rs.getString("sn"));
				    	equ.setOth(rs.getString("oth"));
				    	equ.setSroot(rs.getString("sroot"));
				    	equ.setSpwd(rs.getString("spwd"));
				    	equ.setOroot(rs.getString("oroot"));
				    	equ.setOpwd(rs.getString("opwd"));
				    	equ.setAroot(rs.getString("aroot"));
				    	equ.setApwd(rs.getString("apwd"));
				    	equ.setTitle(rs.getString("title"));
				    	equ.setUrl(rs.getString("url"));
				    	equ.setDid(rs.getString("did"));

				        list.add(equ);
		            }
		            rs.close();
		            stmt.close();
				      conn.close();
		        	
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
				
		       HttpSession session=request.getSession();
		       session.setAttribute("list", list);
		       
		       Gson gson = new Gson();
				//String ##Gson=gson.toJson(##); 
				//session.setAttribute("##", ##Gson);
			  String listGsonAll=gson.toJson(list); 
			  session.setAttribute("listGsonAll", listGsonAll); 
		        
			    request.getRequestDispatcher("TestTableEdit2.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
