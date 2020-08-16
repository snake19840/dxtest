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
import com.sun.javafx.tk.Toolkit.Task;

/**
 * Servlet implementation class deleli
 */
@WebServlet("/deleli2")
public class deleli2 extends HttpServlet {
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
		int id =equ.getId();
		String	sql=" select stno from dxtestwork where id='"+id+"' ";
		String stno=SelectAll.getKey(sql, "stno");
		sql=" select edate from dxtestwork where id='"+id+"' ";
		String edate=SelectAll.getKey(sql, "edate");
		sql=" select sdate from dxtestwork where id='"+id+"' ";
		String sdate=SelectAll.getKey(sql, "sdate");
		sql=" select statu from dxtestwork where id='"+id+"' ";
		String statu=SelectAll.getKey(sql, "statu");
		sql=" select statu from dxtestwork where id='"+id+"' ";
		String userpwd=SelectAll.getKey(sql, "userpwd");
		sql=" select task from dxtestwork where id='"+id+"' ";
		String task=SelectAll.getKey(sql, "task");
		sql=" select sn from dxtestwork where id='"+id+"' ";
		String sn=SelectAll.getKey(sql, "sn");
		
		String userpwd2=null;
		
		
		
		 
		sql =" delete from dxtestwork where id='"+id+"'  ";
//		delete from ## where ##=?
		boolean flag=SelectAll.Del(sql);
		if (flag) {
			if (task.equals("0")) {
				if (statu.equals("»Ö¸´")) {
					sql="update dxtestwork set  userpwd='"+userpwd2+"'  where stno='"+stno+"'";
					boolean flag2=SelectAll.Update(sql);
				}else {
					sql="delete from dxtestwork where stno='"+stno+"'";
					boolean flag2=SelectAll.Del(sql);
				}
			}
			
			 sql="select * from dxtestwork where sn='"+sn+"' ORDER by nowdate DESC";
			List<Equ> list2=SelectAll.Warningstatu(sql);
			String list2Gson=gson.toJson(list2); 
			session.setAttribute("WarningGsons",list2Gson);
				 
	           out.print("{\"statu\":\"success\",\"WarningGsons\":"+list2Gson+"}");
			out.close();
			
		}else {
			out.print("{'statu':'warn'}");
	    	out.close();
		}
	}

}
