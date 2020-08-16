package com.servlet;

import java.io.IOException;
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
 * Servlet implementation class WarningPart
 */
@WebServlet("/WarningPart")
public class WarningPart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		doPost(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		//String sdate=request.getParameter("sdate");
	//	String edate=request.getParameter("edate");
		//String userid=request.getParameter("userid");
	//	String statu=request.getParameter("statu");
		String sn=request.getParameter("sn");
		String userid=request.getParameter("userid");
		String nowdate=request.getParameter("nowdate");
		String stno=request.getParameter("stno");
		String edate=request.getParameter("edate");
		String sdate=request.getParameter("sdate");
		String TT=request.getParameter("TT");
//		System.out.println(TT);
	
		if (TT==null||TT=="") {
			session.setAttribute("TT","ReturnIndex"); 
		}else {
			session.setAttribute("TT",TT); 
		}
		String aString=(String) session.getAttribute("TT");
		System.out.println(aString);
	   // System.out.println(sdate);
		//System.out.println(edate);
		//System.out.println(userid);
	//	System.out.println(statu);
	//	System.out.println("====");
		List<Equ> list=null;
		String sqlv=null;
		if (stno.equals("0")) {
			sqlv="select * from DXTESTWORK where stno='"+stno+"' and edate='"+edate+"' and sdate='"+sdate+"'  order by nowdate desc";
			 list=SelectAll.Warningstatu(sqlv);
		}else {
			sqlv="select * from dxtestwork where stno='"+stno+"' order by nowdate desc";
			list=SelectAll.Warningstatu(sqlv);
		}
		Gson gson = new Gson();
		 
		List<Equ> listsn=SelectAll.SelectAllSn(sn);
		
		boolean userpwd=SelectAll.userpwd(stno);
		
		String listGson=gson.toJson(listsn); 
		String WarningGson=gson.toJson(list);  
		String AllListGson=gson.toJson(stno);
		 sqlv="select * from WARNINGSTATU";
		List<Equ> WarningStatu=SelectAll.Warningstatu(sqlv);
		String WarningStatuGson=gson.toJson(WarningStatu);  
		session.setAttribute("WarningStatuGsons",WarningStatuGson); 
//		session.setAttribute("DxtestGsons",DxtestGson); 
		
		session.setAttribute("WarningGsons",WarningGson); 
		session.setAttribute("AllListGsons",AllListGson); 
		//session.setAttribute("##", ##Gson);
//		System.out.println(userpwd);
		session.setAttribute("list_WarningServlet2",list); 
		session.setAttribute("listGson",listGson); 
		session.setAttribute("stno_AllListServlet3",stno); 
		session.setAttribute("edate", edate);
		session.setAttribute("sdate", sdate);
		List<Equ> listAllDxtestwork=SelectAll.SelectAllDxtestwork();
		String listAllDxtestworkSon=gson.toJson(listAllDxtestwork);
		session.setAttribute("listAllDxtestwork", listAllDxtestworkSon);
		
		
		if (userpwd) {
			request.getRequestDispatcher("TestWarningItem.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("TestWarningItem.jsp").forward(request, response);
		}
        
       // response.sendRedirect("/TestWarning3.jsp"); 	
        }

}
