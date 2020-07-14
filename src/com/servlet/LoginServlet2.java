package com.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clas.Equ;
import com.clas.SelectAll;
import com.google.gson.Gson;

/**
 * Servlet implementation class LoginServlet2
 */
@WebServlet("/LoginServlet2")
public class LoginServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    
        // TODO Auto-generated constructor stub
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Gson gson=new Gson();
		PrintWriter out = response.getWriter();
		
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream(), "utf-8"));
		String line = null;
		StringBuilder sb = new StringBuilder();
		while ((line = br.readLine()) != null) {
			sb.append(line);
		}
		Equ equ = gson.fromJson(sb.toString(), Equ.class);
		//System.out.println(bdPushID2.getA());
		
		String username=equ.getUsername();
		String userpwd=equ.getUserpwd();

		String sql="select COUNT(username) from dxtestuser WHERE username='"+username+"'";
		int count_username=SelectAll.getCount(sql);
			 sql="select COUNT(userpwd) from dxtestuser WHERE userpwd='"+userpwd+"' and username='"+username+"'";
			 int count_userpwd=SelectAll.getCount(sql);
		
//			 String sqlv="select * from dxtestuser where username='"+username+"' and userpwd='"+userpwd+"'";
//			 List<Equ> listus0=SelectAll.Warningstatu(sqlv);
			
			 List<Equ> listus=SelectAll.userAddList(username, userpwd);
				int dd=0;
				String loginId="n";
				SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
				Date nowdateDate = new Date(System.currentTimeMillis());
				//String nowdateStr=formatter.format(nowdateDate);
				String planAlertStr=null;
				String info="";
			 
//		System.out.println(count_userpwd);
		if (count_username>0) {
			if (count_userpwd>0) {
				
				dd=Integer.parseInt(listus.get(0).getDay());
//				System.out.println(dd);
				planAlertStr=formatter.format(new Date(nowdateDate.getTime()+dd*86400000));
				session.setAttribute("listus", listus);
			//	System.out.println("ture");
				info="";
				loginId="y";
				session.setAttribute("loginId", loginId);
				session.setAttribute("info", info);
			//	session.setAttribute("username", username);
				List<Equ> typeclass=SelectAll.typeclass();
				List<Equ> listAllDxtestwork=SelectAll.SelectAllDxtestwork();
				List<Equ> listAllDxtestwork2=SelectAll.SelectAllDxtestwork2();
				List<Equ> userIds=SelectAll.userIds();
				
//				System.out.println(planAlertStr);
				//合同提示列表
				
				
				List<Equ> planalertlist=SelectAll.planalertlist(planAlertStr);
				String listAllDxtestworkSon=gson.toJson(listAllDxtestwork); 
				String listAllDxtestworkSon2=gson.toJson(listAllDxtestwork2); 
				String planalertlistGson=gson.toJson(planalertlist);
//				System.out.println(planalertlistGson);
//				request.setAttribute("planalertlistGson", planalertlistGson);
				String listusGson=gson.toJson(listus);
				session.setAttribute("listusGson", listusGson);
				String typeclassGson=gson.toJson(typeclass); 
				String userIdsGson=gson.toJson(userIds); 
				
				session.setAttribute("planalertlistGson", planalertlistGson);
				session.setAttribute("userIdsGson", userIdsGson);
				session.setAttribute("typeclassGson", typeclassGson);
				session.setAttribute("listAllDxtestwork", listAllDxtestworkSon);
				session.setAttribute("listAllDxtestwork2", listAllDxtestworkSon2);
				out.print("{\"statu\":\"success\",\"planalertlistGson\":" + planalertlistGson + "}");
				out.close();
				
			}else {
				out.print("{\"statu\":\"userpwd_error\"}");
				out.close();
			}
		}else {
			out.print("{\"statu\":\"username_error\"}");
			out.close();
		}
	}
}
