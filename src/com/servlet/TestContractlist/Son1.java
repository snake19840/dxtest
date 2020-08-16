package com.servlet.TestContractlist;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clas.Equ;
import com.dao.ContractDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class Son1
 */
@WebServlet("/Son1")
public class Son1 extends HttpServlet {
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
		String lin=request.getParameter("lin");
		String classfamily=request.getParameter("classfamily");
		List<Equ> listson=ContractDao.listson(classfamily);
		List<Equ> listpayname=ContractDao.listpayname(classfamily);
		Gson gson = new Gson();
		String listsonGson=gson.toJson(listson); 
		String listpaynameGson=gson.toJson(listpayname); 
		//session.setAttribute("##", ##Gson);
		out.print(listsonGson);
		out.print(listpaynameGson);
		out.print("&&"+lin);
		out.close();
		
	}

}
