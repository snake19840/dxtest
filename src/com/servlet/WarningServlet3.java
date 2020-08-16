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
 * Servlet implementation class WarningServlet3
 */
@WebServlet("/WarningServlet3")
public class WarningServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WarningServlet3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream(), "utf-8"));
		String line = null;
		StringBuilder sb = new StringBuilder();
		while ((line = br.readLine()) != null) {
			sb.append(line);
		}
		Gson gson = new Gson();
		//String ##Gson=gson.toJson(##); 
		//session.setAttribute("##", ##Gson);
		Equ equ = gson.fromJson(sb.toString(), Equ.class);
		//System.out.println(bdPushID2.getA());
		PrintWriter out = response.getWriter();
		String statu=equ.getStatu();
		String message=equ.getMessage();
		String sn=equ.getSn();
		String edate=equ.getEdate();
		String sdate=equ.getSdate();
		String username=equ.getUsername();
		String time=equ.getTime();
		if (sdate==null) {
			sdate="0000-00-00";
		}
		if (edate==null) {
			edate="0000-00-00";
		}
		
		
		Date date = new Date(System.currentTimeMillis());
		String sdate1=sdate.substring(0,10);
		SimpleDateFormat formatter=null;
		if (statu.equals("π ’œ")) {
			 formatter= new SimpleDateFormat("'W-'yyyyMMddHH-mmss");
		}else {
			 formatter= new SimpleDateFormat("'A-'yyyyMMddHH-mmss");
		}
		
		String stnonew=formatter.format(date);
		
		String stno="0";
//		System.out.println("sdate="+sdate);
		String picture="[]";
		String sql=null;
		boolean flag=false;
		List<Equ> list=null;
		if (statu.equals("ª÷∏¥")) {
			//System.out.println("ª÷∏¥");
			sql="insert into dxtestwork(message,username,sn,statu,picture,edate,sdate,stno,task,time) values("
					+ "'"+message+"','"+username+"','"+sn+"','"+statu+"','[]','"+edate+"','"+sdate+"','"+stno+"','0','"+time+"')";
		flag=SelectAll.insertItem(sql);
		sql="select * from DXTESTWORK where sn='"+sn+"' and edate='"+edate+"' and sdate='"+sdate+"'  order by nowdate desc";
		 list=SelectAll.Warningstatu(sql);
		}else {
			sql="insert into dxtestwork(message,username,sn,statu,picture,edate,sdate,stno,task,time) values("
					+ "'"+message+"','"+username+"','"+sn+"','"+statu+"','[]','"+edate+"','"+sdate+"','"+stnonew+"','0','"+time+"')";
			flag=SelectAll.insertItem(sql);
			sql="select * from dxtestwork where stno='"+stnonew+"' order by nowdate desc";
			list=SelectAll.Warningstatu(sql);
			stno=stnonew;
		}
		
		if (flag) {
			String WarningGson=gson.toJson(list);
			session.setAttribute("WarningGsons",WarningGson); 
			String AllListGson=gson.toJson(stno);
			session.setAttribute("AllListGsons",AllListGson); 
			
			 sql="select * from WARNINGSTATU";
				List<Equ> WarningStatu=SelectAll.Warningstatu(sql);
				String WarningStatuGson=gson.toJson(WarningStatu);  
				session.setAttribute("WarningStatuGsons",WarningStatuGson); 
				session.setAttribute("statu_AllListServlet3",statu); 
				out.print("{\"statu\":\"success\"}");
				out.close();
		}else {
			out.print("{\"statu\":\"fail\"}");
			out.close();
		}
		
       
      
	}

}
