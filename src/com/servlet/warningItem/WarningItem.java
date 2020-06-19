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
 * Servlet implementation class WarningItem
 */
@WebServlet("/WarningItem")
public class WarningItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Gson gson = new Gson();
		//String ##Gson=gson.toJson(##); 
		//session.setAttribute("##", ##Gson);
		PrintWriter out = response.getWriter();
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream(), "utf-8"));
		String line = null;
		StringBuilder sb = new StringBuilder();
		while ((line = br.readLine()) != null) {
			sb.append(line);
		}
		Equ equ = gson.fromJson(sb.toString(), Equ.class);
		//System.out.println(bdPushID2.getA());
		
		String sn=equ.getSn();
		String edate=equ.getEdate();
		String sdate=equ.getSdate();
		String username=equ.getUsername();
		String message=equ.getMessage();
		String nowdate=equ.getNowdate();
		String statu=equ.getStatu();
		String stno=equ.getStno();
	
//		System.out.println(statu);
//		System.out.println(sn);
//		System.out.println(edate);
//		System.out.println(sdate);
//		System.out.println(username);
//		System.out.println(message);
//		System.out.println(nowdate);
		int task;
		String userpwd = null;
		if (statu.equals("»Ö¸´")) {
			task=0;
			userpwd="restore";
		}else {
			task=1;
		}
		String sql="insert into dxtestwork(message,username,nowdate,sn,statu,picture,edate,sdate,stno,task) values("+
		"'"+message+"','"+username+"','"+nowdate+"','"+sn+"','"+statu+"','[]','"+edate+"','"+sdate+"','"+stno+"','"+task+"')";
		boolean falg=SelectAll.Update(sql);
		
		if (falg) {
			if (statu.equals("»Ö¸´")) {
				sql="update dxtestwork set  userpwd='"+userpwd+"'  where stno='"+stno+"'";
				boolean flag2= SelectAll.Update(sql);
			}
			 
			sql="select * from dxtestwork where stno='"+stno+"' order by nowdate desc";
			List<Equ> list=SelectAll.Warningstatu(sql);
			String WarningGsons=gson.toJson(list);
			session.setAttribute("WarningGsons", WarningGsons);
	        out.print("{\"statu\":\"success\",\"WarningGsons\":"+WarningGsons+",\"task\":"+task+"}");
	  	    out.close();
		
}  else {
out.print("{'statu':'warn'}");
 out.close();
}
		
		
//		SelectAll.updataItemRes(sn, message, userid, nowdate, statu, picture, edate, sdate, stno);
//		SelectAll.updata_dxtestworkItemAdd(sn, message, userid, nowdate, statu, picture, edate, sdate, stno);
		
		
		  
		
	}

}
