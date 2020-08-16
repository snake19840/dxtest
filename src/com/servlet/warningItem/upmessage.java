package com.servlet.warningItem;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
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
 * Servlet implementation class upmessage
 */
@WebServlet("/upmessage")
public class upmessage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		//String ##Gson=gson.toJson(##); 
		//session.setAttribute("##", ##Gson);
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream(), "utf-8"));
		String line = null;
		StringBuilder sb = new StringBuilder();
		while ((line = br.readLine()) != null) {
			sb.append(line);
		}
		Equ equ = gson.fromJson(sb.toString(), Equ.class);
		//System.out.println(bdPushID2.getA());
		String message=equ.getMessage();
		int id=equ.getId();
		String sql="update dxtestwork set  message='"+message+"'  where id='"+id+"'";
		boolean flag=SelectAll.Update(sql);
		if (flag) {
			sql=" select stno from dxtestwork where id='"+id+"' ";
			String stno=SelectAll.getKey(sql, "stno");
			sql=" select edate from dxtestwork where id='"+id+"' ";
			String edate=SelectAll.getKey(sql, "edate");
			sql=" select sdate from dxtestwork where id='"+id+"' ";
			String sdate=SelectAll.getKey(sql, "sdate");
			
			List<Equ> list=null;
			if (stno.equals("0")) {
				sql="select * from DXTESTWORK where stno='"+stno+"' and edate='"+edate+"' and sdate='"+sdate+"'  order by nowdate  desc";
				 list=SelectAll.Warningstatu(sql);
			}else {
				sql="select * from dxtestwork where stno='"+stno+"' order by nowdate desc";
				list=SelectAll.Warningstatu(sql);
			}
			String WarningGsons=gson.toJson(list);
			session.setAttribute("WarningGsons", WarningGsons);
	           out.print("{\"statu\":\"success\",\"WarningGsons\":"+WarningGsons+"}");
			out.close();
			
		}else {
			out.print("{'statu':'warn'}");
	    	out.close();
		}
		
	}

}
