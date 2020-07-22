package com.servlet;

import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clas.SelectAll;
import com.google.gson.Gson;

/**
 * Servlet implementation class secpos
 */
@WebServlet("/secpos")
public class secpos extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Gson gson = new Gson();
		//String ##Gson=gson.toJson(##); 
		//session.setAttribute("##", ##Gson);
		SimpleDateFormat formatYear = new SimpleDateFormat("yyyy");
		SimpleDateFormat formatMonth = new SimpleDateFormat("M");
		 Calendar c = Calendar.getInstance();
		 DecimalFormat df=new DecimalFormat("00");
		 Date y=null;
		 String yy=null;
		 String mm=null;
		 int count=0;
		 int t=0;
//		 c.setTime(new Date());
//	        c.add(Calendar.YEAR, -0);
//	         y = c.getTime();
//	        String year0 = formatYear.format(y);
//		 c.setTime(new Date());
//	        c.add(Calendar.YEAR, -1);
//	         y = c.getTime();
//	        String year1 = formatYear.format(y);
//	        c.setTime(new Date());
//	        c.add(Calendar.YEAR, -2);
//	         y = c.getTime();
//	        String year2 = formatYear.format(y);
	        String sql=null;
	       
	        String[ ][ ] arr = new String[3][12];
	        for (int i = 0; i < arr.length; i++) {
				for (int j = 0; j < arr[i].length; j++) {
					c.setTime(new Date());
//				System.out.println(i);
			        c.add(Calendar.YEAR, -i);
			         y = c.getTime();
			        yy  = formatYear.format(y);
			        
			        t=j+1;
			      mm=yy+"-"+ df.format(t);
			      
			      if (i==0) {
			    	
			    	  if ((j+1)>Integer.parseInt(formatMonth.format(new Date()))) {
			    		  arr[i][j]="";
					continue;
					}
					
				}
			 
//			      System.out.println(mm);
			        sql ="SELECT COUNT (*) FROM( SELECT distinct    stno FROM dxtestwork WHERE nowdate LIKE '%"+mm+"%' and stno <> '0' and  SUBSTR(sdate,1,7) ='"+mm+"' and stno  like '%A%') ";
			        count=SelectAll.getCount(sql);
					arr[i][j]=String.valueOf(count);
				}
			}
	        String arrGson=gson.toJson(arr);
	        session.setAttribute("arrGson", arrGson);
	        
	        
	        for (int i = 0; i < arr.length; i++) {
				for (int j = 0; j < arr[i].length; j++) {
					c.setTime(new Date());
//				System.out.println(i);
			        c.add(Calendar.YEAR, -i);
			         y = c.getTime();
			        yy  = formatYear.format(y);
			        
			        t=j+1;
			      mm=yy+"-"+ df.format(t);
			      
			      if (i==0) {
			    	
			    	  if ((j+1)>Integer.parseInt(formatMonth.format(new Date()))) {
			    		  arr[i][j]="";
					continue;
					}
					
				}
			 
//			      System.out.println(mm);
			        sql ="SELECT COUNT (*) FROM( SELECT distinct    stno FROM dxtestwork WHERE nowdate LIKE '%"+mm+"%' and stno <> '0' and  SUBSTR(sdate,1,7) ='"+mm+"' and stno  like '%W%') ";
			        count=SelectAll.getCount(sql);
					arr[i][j]=String.valueOf(count);
				}
			}
	        
	        String arrGson2=gson.toJson(arr);
	        session.setAttribute("arrGson2", arrGson2);
	        
		request.getRequestDispatcher("secpos.jsp").forward(request, response);
	}

}
