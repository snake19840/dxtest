package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
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
import com.dao.ContractDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class Classall
 */
@WebServlet("/Classall")
public class Classall extends HttpServlet {
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
		String classfamily=request.getParameter("classfamily");
		String classson=request.getParameter("classson");
		int Classall=	ContractDao.Classall(classfamily, classson);
		List<Equ> list=ContractDao.classf();
		Gson gson = new Gson();
		String listGson=gson.toJson(list); 
		session.setAttribute("classflistGson", listGson);
		
		if (Classall==1) {
			out.print("updateClassson");
			out.close();
		}else if (Classall==2) {
			out.print("classsonIsNull");
			out.close();
		}else if (Classall==3) {
			out.print("insertFS");
			out.close();
		}else if (Classall==5) {
			out.print("classsonIsSame");
			out.close();
		}else if (Classall==6) {
			out.print("classsonIsSame");
			out.close();
		}
		else {
			out.print("insertF");
			out.close();
		}
	}

}
