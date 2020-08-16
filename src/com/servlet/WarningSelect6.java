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
 * Servlet implementation class WarningSelect6
 */
@WebServlet("/WarningSelect6")
public class WarningSelect6 extends HttpServlet {
	private static final long serialVersionUID = 1L;

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
		request.setCharacterEncoding("utf-8");
	    response.setContentType("text/html;charset=utf-8");
	    String sdate=request.getParameter("sdate");
	    String edate=request.getParameter("edate");
	    String stno=request.getParameter("stno");
	    String message=request.getParameter("message");
	   
	    Gson gson=new Gson();
	    HttpSession session = request.getSession();
	    String userid=(String)session.getAttribute("userid");
	    message=java.net.URLDecoder.decode(message,"UTF-8");
//	    System.out.println(sdate);
//	    System.out.println(edate);
//	    System.out.println(stno);
//	    System.out.println(message);
	   
	    
	    
	    List<Equ> listWaring=SelectAll.listWaring(stno, edate, sdate, message);
	    String listWaringSon=gson.toJson(listWaring);
	    session.setAttribute("listWaringSon", listWaringSon);
	 
	  //  System.out.println(listWaringSon);
	    request.getRequestDispatcher("Testwork3.jsp").forward(request, response);
	    
	    
	}

}
