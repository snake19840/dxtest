package com.servlet.warningItem;

import java.io.BufferedReader;
import java.io.File;
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
import com.dao.UrlDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class delpic
 */
@WebServlet("/delpic")
public class delpic extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		Gson gson = new Gson();
		System.out.println(1234);
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
		
		String name=equ.getName();
		String picture=equ.getPicture();
		
		String sqlv =" update dxtestwork Set picture='"+picture+"' WHERE picture like '%"+name+"%' ";
//		String sqlv2 =" select id from dxtestwork where picture like '%"+name+"%' ";
		String sqlstno =" select stno from dxtestwork where picture like '%"+name+"%' ";
		String sqledate =" select edate from dxtestwork where picture like '%"+name+"%' ";
		String sqlsdate =" select sdate from dxtestwork where picture like '%"+name+"%' ";
		
		String stno=SelectAll.getKey(sqlstno, "stno");
		String edate=SelectAll.getKey(sqledate, "edate");
		String sdate=SelectAll.getKey(sqlsdate, "sdate");
		boolean flag=SelectAll.Update(sqlv);
		
		String rootPath = UrlDao.urlImg();
		File checkFile = new File(rootPath+name);
		checkFile.delete();
		
		if (flag) {
			List<Equ> list=null;
			if (stno.equals("0")) {
				sqlv="select * from DXTESTWORK where stno='"+stno+"' and edate='"+edate+"' and sdate='"+sdate+"'  order by nowdate  desc";
				 list=SelectAll.Warningstatu(sqlv);
				 
			}else {
				sqlv="select * from dxtestwork where stno='"+stno+"' order by nowdate desc";
				list=SelectAll.Warningstatu(sqlv);
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
