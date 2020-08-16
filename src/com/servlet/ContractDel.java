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
import com.clas.SelectAll;
import com.dao.ContractDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class ContractDel
 */
@WebServlet("/ContractDel")
public class ContractDel extends HttpServlet {
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
//		doGet(request, response);
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession();
		String contractid=request.getParameter("contractid");
		ContractDao contractDao=new ContractDao();
		contractDao.delete(contractid);
		String sql = "delete from PLANSUB where contractid='"+contractid+"'";
		SelectAll.Del(sql);
		
		
		List<Equ> contractList=ContractDao.contractList();
		session.setAttribute("contractList", contractList);
//		request.getRequestDispatcher("TestChakanContract.jsp").forward(request, response);
		Gson gson = new Gson();
		//String ##Gson=gson.toJson(##); 
		//session.setAttribute("##", ##Gson);
		PrintWriter out = response.getWriter();
		String contractListGson=gson.toJson(contractList); 
		session.setAttribute("contractListGson", contractListGson);
		out.print("{\"statu\":1,\"contractListGson\":" + contractListGson + "}");
		out.close();
		
	}

}
