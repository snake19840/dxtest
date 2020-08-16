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

/**
 * Servlet implementation class WarningSelect3
 */
@WebServlet("/WarningSelect3")
public class WarningSelect3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
	    response.setContentType("text/html;charset=utf-8");
	    doPost(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
	    response.setContentType("text/html;charset=utf-8");
	    String sdate=request.getParameter("sdate");
	    String edate=request.getParameter("edate");
	    String sn=request.getParameter("sn");
	    String userid=request.getParameter("userid");
	    String statu=request.getParameter("statu");
	    sdate=java.net.URLDecoder.decode(sdate,"UTF-8");
	    edate=java.net.URLDecoder.decode(edate,"UTF-8");
	    statu=java.net.URLDecoder.decode(statu,"UTF-8");
	    
	    List<Equ> list=SelectAll.SelectItem(sdate, edate, sn, statu);
	    List<Equ> listsn=SelectAll.SelectAllSn(sn);
	    HttpSession session = request.getSession();
	    session.setAttribute("list_WarningServlet2",list); 
		session.setAttribute("listsn_WarningServlet2",listsn); 
	//	session.setAttribute("edate_WarningServlet2",edate); 
		//session.setAttribute("sdate_AllListServlet3",sdate); 
	//	session.setAttribute("userid_AllListServlet3",userid); 
	//	session.setAttribute("statu_AllListServlet3",statu); 
	    
		request.getRequestDispatcher("TestWarning3.jsp").forward(request, response);
	
	}

}
