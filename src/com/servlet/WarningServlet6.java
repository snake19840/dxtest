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
 * Servlet implementation class WarningServlet6
 */
@WebServlet("/WarningServlet6")
public class WarningServlet6 extends HttpServlet {
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
		String stno=request.getParameter("stno");
		String message=request.getParameter("message");
		String nowdate=request.getParameter("nowdate");
		String statu=request.getParameter("statu");
		message=java.net.URLDecoder.decode(message,"UTF-8");
		nowdate=java.net.URLDecoder.decode(nowdate,"UTF-8");
		statu=java.net.URLDecoder.decode(statu,"UTF-8");
		userid=java.net.URLDecoder.decode(userid,"UTF-8");
		String time=request.getParameter("time");
		
		String picture="";
		SelectAll.updata_dxtestwork2(sn, message, time, userid, nowdate, statu, picture, edate, sdate, stno);
		List<Equ> list=SelectAll.SelectAllMessage(sn);
		List<Equ> listsn=SelectAll.SelectAllSn(sn);
		session.setAttribute("list_WarningServlet2", list);
		session.setAttribute("listsn_WarningServlet2", listsn);
		Gson gson=new Gson();
        String info=gson.toJson(list);  
        session.setAttribute("jsonstr", info);
        request.getRequestDispatcher("/TestWarning3.jsp").forward(request, response);
		
	}

}
