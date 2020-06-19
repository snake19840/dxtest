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
 * Servlet implementation class WarningSelect2
 */
@WebServlet("/WarningSelect2")
public class WarningSelect2 extends HttpServlet {
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
	    doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//System.out.println("66666666666666");
		request.setCharacterEncoding("utf-8");
	    response.setContentType("text/html;charset=utf-8");
	   // System.out.println("====");
	    String sdate=request.getParameter("sdate");
	    String edate=request.getParameter("edate");
	    String statu=request.getParameter("statu");
	    String userid=request.getParameter("userid");
	    sdate=java.net.URLDecoder.decode(sdate,"UTF-8");
	    edate=java.net.URLDecoder.decode(edate,"UTF-8");
	    statu=java.net.URLDecoder.decode(statu,"UTF-8");
	    userid=java.net.URLDecoder.decode(userid,"UTF-8");
	//   System.out.println("userid="+userid);
	    List<Equ> list=SelectAll.SelectItemPart(sdate, edate, statu);
	  //  List<String> stonList=SelectAll.ston(sdate, edate, statu);
	    HttpSession session = request.getSession();
	    session.setAttribute("list_WarningSelect2",list); 
	    session.setAttribute("sdate_AllListServlet3",sdate); 
	    session.setAttribute("edate_WarningServlet2",edate); 
	    session.setAttribute("statu_AllListServlet3",statu); 
	    session.setAttribute("userid_AllListServlet3",userid);
	    session.setAttribute("TT","TestWarningPart.jsp");
	    request.getRequestDispatcher("TestWarningPart.jsp").forward(request, response);
	    
	}

}
