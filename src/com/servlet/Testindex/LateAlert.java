package com.servlet.Testindex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
 * Servlet implementation class LateAlert
 */
@WebServlet("/LateAlert")
public class LateAlert extends HttpServlet {
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
		Gson gson=new Gson();
		
		String contractid=request.getParameter("contractid");
		String plandate1=request.getParameter("plandate1");
		String planm2=request.getParameter("planm2");
	
		
		 int LateAlert=SelectAll.LateAlert(plandate1, contractid, planm2);
		PrintWriter out = response.getWriter();
		out.print("LateAlertSuccess");
		out.close();
	//	System.out.println(dd);
		
		
	}

}
