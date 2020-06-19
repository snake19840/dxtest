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
 * Servlet implementation class Myall
 */
@WebServlet("/Myall")
public class Myall extends HttpServlet {
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
		String myu=request.getParameter("myu");
		String mya=request.getParameter("mya");
		String myp=request.getParameter("myp");
		String myn=request.getParameter("myn");
		String mye=request.getParameter("mye");
		String myad=request.getParameter("myad");
		String mye2=request.getParameter("mye2");
		String myx=request.getParameter("myx");
		String myemail=request.getParameter("myemail");
		String myid=formatter.format(date)+System.currentTimeMillis();
		String mypayb=request.getParameter("mypayb");
		String mypaya=request.getParameter("mypaya");
		String mypayz=request.getParameter("mypayz");
		String mypayh=request.getParameter("mypayh");
		String mypaye=request.getParameter("mypaye");
		String mypaya2=request.getParameter("mypaya2");
		String mypaym=request.getParameter("mypaym");
		String mypayid=myid;
		
		boolean Myall=	ContractDao.Myall(mya, myad, mye, mye2, myid, myemail, myn, myp, mypaya, mypaya2, mypayb, mypaye, mypayh, mypayid, mypaym, mypayz, myu, myx);
		if (Myall) {
			out.print("Myalltrue");
			out.close();
		}else {
			out.print("Myallfalse");
			out.close();
		}	
	}

}
