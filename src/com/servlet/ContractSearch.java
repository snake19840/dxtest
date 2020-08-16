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
import com.dao.ContractDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class ContractSearch
 */
@WebServlet("/ContractSearch")
public class ContractSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String sdate =request.getParameter("sdate");
		String edate =request.getParameter("edate");
		String message=request.getParameter("message");
		//sdate=sdate+" 00:00:00";
		//edate=edate+" 00:00:00";
		message = java.net.URLDecoder.decode(message, "UTF-8");
		
		List<Equ> contractListItemFile=ContractDao.contractSearch(sdate, edate, message);
		Gson gson = new Gson();
		String contractListItemFileGson=gson.toJson(contractListItemFile); 
		session.setAttribute("contractListItemFile", contractListItemFileGson);
		request.getRequestDispatcher("TestChakanContractItem.jsp").forward(request, response);
	}

}
