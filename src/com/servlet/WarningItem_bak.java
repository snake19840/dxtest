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
 * Servlet implementation class WarningItem
 */
@WebServlet("/WarningItem_bak")
public class WarningItem_bak extends HttpServlet {
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
		String sn=request.getParameter("sn");
		String edate=request.getParameter("edate");
		String sdate=request.getParameter("sdate");
		String userid=request.getParameter("userid");
		String message=request.getParameter("message");
		String nowdate=request.getParameter("nowdate");
	
		String TWI3=request.getParameter("TWI3");
		if (TWI3==null) {
			TWI3="";
		}
		String statu=request.getParameter("statu");
		message=java.net.URLDecoder.decode(message,"UTF-8");
		nowdate=java.net.URLDecoder.decode(nowdate,"UTF-8");
		statu=java.net.URLDecoder.decode(statu,"UTF-8");
		userid=java.net.URLDecoder.decode(userid,"UTF-8");
		 sdate=sdate.substring(0,10)+" 00:00:00";
		String stno=request.getParameter("stno");
		String string1= statu ;
		String string2="»Ö¸´";
		
		
		
		String picture="";
		if (string1.equals(string2)) {
//			System.out.println("=="+string1);
//			System.out.println(string2);
			SelectAll.updataItemRes(sn, message, userid, nowdate, statu, picture, edate, sdate, stno);
		}else {
			SelectAll.updata_dxtestworkItemAdd(sn, message, userid, nowdate, statu, picture, edate, sdate, stno);
		}
		List<Equ> list=SelectAll.SelectAllMessageItem(sn, stno);
		List<Equ> listsn=SelectAll.SelectAllSn(sn);
		Gson gson=new Gson();
        String info=gson.toJson(list);  
        session.setAttribute("list_WarningServlet2", list);
		session.setAttribute("listsn_WarningServlet2", listsn);
		session.setAttribute("jsonstr", info);
		boolean userpwd=SelectAll.userpwd(stno);
		
		if (userpwd) {
			request.getRequestDispatcher("TestWarningItem2.jsp").forward(request, response);
		}else {
			if (TWI3.equals("TWI3")) {
				request.getRequestDispatcher("TestWarningItem3.jsp").forward(request, response);
			}else {
				request.getRequestDispatcher("TestWarningItem.jsp").forward(request, response);
			}
			
		}
		  
		
	}

}
