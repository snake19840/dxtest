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
import com.dao.SelItemPart;

/**
 * Servlet implementation class ReTestWarningPart
 */
@WebServlet("/ReTestWarningPart")
public class ReTestWarningPart extends HttpServlet {
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
		 HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
	    response.setContentType("text/html;charset=utf-8");
	    String sdate=(String) session.getAttribute("sdate_WarningSelect2");
	    String edate=(String) session.getAttribute("edate_WarningSelect2");
	    String statu=(String) session.getAttribute("statu_WarningSelect2");
	    
	   // System.out.println(sdate);
		//System.out.println(edate);
		//System.out.println(statu);
//	    List<Equ> list=SelectAll.SelectItemPart(sdate, edate, statu);
	    SelItemPart selItemPart=new SelItemPart();
	    List<Equ> list=selItemPart.selAll(sdate, edate);
	    
	   
	    session.setAttribute("list_WarningSelect2",list); 
	    session.setAttribute("sdate_WarningSelect2",sdate); 
	    session.setAttribute("edate_WarningSelect2",edate); 
	    session.setAttribute("statu_WarningSelect2",statu); 
	    
	    request.getRequestDispatcher("TestWarningPart.jsp").forward(request, response);
	   
	
	}

}
