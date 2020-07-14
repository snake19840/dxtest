package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class Changesize
 */
@WebServlet("/Changesize")
public class Changesize extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		int m =Integer.parseInt(request.getParameter("m"));
		int n =Integer.parseInt(request.getParameter("n"));
		String id=request.getParameter("id");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		int a=m*n;
		int b=m*n-m;
		Gson gson = new Gson();
		//String ##Gson=gson.toJson(##); 
		//session.setAttribute("##", ##Gson);
		String sdate=request.getParameter("sdate");
		String edate=request.getParameter("edate");
		String now=request.getParameter("nowdate");
		String control=request.getParameter("control");
		String content=request.getParameter("content");
	
		String sql="";
		String sql2="";
		String aString="";
		boolean f=true;
		if (control.equals("edit")) {
		sql = "update dxtestchage set  content='"+content+"'  where now='"+now+"'";
		f=SelectAll.Update(sql);
		}else if (control.equals("del")) {
			sql = "delete from dxtestchage where now='"+now+"'";
			f=SelectAll.Del(sql);
		}
		
		 sql2="select COUNT(id) from c ";
		if (sdate=="" && edate=="") {
			sql="select * from (select rownum r,t.* from (SELECT * FROM dxtestchage "
					+ "WHERE id='"+id+"' ORDER by  now desc) t where rownum<="+a+" ) where r>"+b+"";
			sql2="select COUNT(id) from (SELECT * FROM dxtestchage "
					+ "WHERE id='"+id+"' ORDER by  now desc) ";
		}else if (sdate!="" && edate=="") {
			sql="select * from (select rownum r,t.* from (SELECT * FROM dxtestchage "
					+ "WHERE id='"+id+"' and chagedate>='"+sdate+"' ORDER by  now desc) t where rownum<="+a+" ) where r>"+b+"";
			sql2="select COUNT(id) from (SELECT * FROM dxtestchage "
					+ "WHERE id='"+id+"' and chagedate>='"+sdate+"' ORDER by  now desc) "; 
		}else if (sdate=="" && edate!="") {
			sql="select * from (select rownum r,t.* from (SELECT * FROM dxtestchage "
					+ "WHERE id='"+id+"' and chagedate<='"+edate+"'  ORDER by  now desc) t where rownum<="+a+" ) where r>"+b+"";
			sql2="select COUNT(id) from (select rownum r,t.* from (SELECT * FROM dxtestchage "
					+ "WHERE id='"+id+"' and chagedate<='"+edate+"'  ORDER by  now desc) ";
		}else {
			sql="select * from (select rownum r,t.* from (SELECT * FROM dxtestchage "
					+ "WHERE id='"+id+"' and chagedate<='"+edate+"' and  chagedate>='"+sdate+"' ORDER by  now desc) t where rownum<="+a+" ) where r>"+b+"";
			sql2="select COUNT(id) from (SELECT * FROM dxtestchage "
					+ "WHERE id='"+id+"' and chagedate<='"+edate+"' and  chagedate>='"+sdate+"' ORDER by  now desc) ";
		}
		
	     int tatol =SelectAll.getCount(sql2);
	
//		  sql="SELECT * FROM dxtestchage WHERE id='"+equ.getId()+"' ORDER by  now desc";
		  List<Equ> listChage=SelectAll.Warningstatu(sql);
			request.setAttribute("listChage", listChage);
			String listChageG=gson.toJson(listChage); 
		session.setAttribute("listChageG", listChageG);
		  request.setAttribute("tatol", tatol);
		  String tatolGson=gson.toJson(tatol); 
		  session.setAttribute("tatolGson", tatolGson);
		 out.print("{\"statu\":"+f+",\"listChageG\":" + listChageG + ",\"tatolGson\":" + tatolGson + "}");  
			out.close();
		
	}

}
