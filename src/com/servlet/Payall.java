package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class Payall
 */
@WebServlet("/Payall")
public class Payall extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		List<Equ> list=ContractDao.classf();
		Gson gson = new Gson();
		String listGson=gson.toJson(list); 
		session.setAttribute("classflistGson", listGson);
		String payname=request.getParameter("payname");
		String classfamily=request.getParameter("classfamily");
		int Payall=	ContractDao.Payall(classfamily, payname);
		if (Payall==1) {
			out.print("PayallSuccess");
			out.close();
		}else {
			out.print("PayallSame");
			out.close();
		}
			
	}

}
