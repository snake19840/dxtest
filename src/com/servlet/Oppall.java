package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ContractDao;

/**
 * Servlet implementation class Oppall
 */
@WebServlet("/Oppall")
public class Oppall extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date(System.currentTimeMillis());
//		System.out.println(formatter.format(date));
		String oppu=request.getParameter("oppu");
		String oppp=request.getParameter("oppp");
		String oppa=request.getParameter("oppa");
		String oppn=request.getParameter("oppn");
		String oppe=request.getParameter("oppe");
		String oppx=request.getParameter("oppx");
		String oppmail=request.getParameter("oppmail");
		String oppid=formatter.format(date)+System.currentTimeMillis();
		String oppe2=request.getParameter("oppe2");
		String oppad=request.getParameter("oppad");
		String opppayb=request.getParameter("opppayb");
		String opppaya=request.getParameter("opppaya");
		String opppayz=request.getParameter("opppayz");
		String opppayh=request.getParameter("opppayh");
		String opppaye=request.getParameter("opppaye");
		String opppaya2=request.getParameter("opppaya2");
		String opppaym=request.getParameter("opppaym");
		String opppayid=oppid;
		
//		System.out.println(oppu);
//		System.out.println(opppayid);
	boolean Oppall=	ContractDao.Oppall(oppa, oppad, oppe, oppe2, oppid, oppmail, oppn, oppp, oppu, oppx, opppaya, opppaya2, opppayb, opppaye, opppayh, opppayid, opppaym, opppayz);
	if (Oppall) {
		out.print("Oppalltrue");
		out.close();
	}else {
		out.print("Oppallfalse");
		out.close();
	}	
	
	}

}
