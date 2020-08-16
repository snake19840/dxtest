package com.servlet.TestContractlist;

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
 * Servlet implementation class List1
 */
@WebServlet("/List1")
public class List1 extends HttpServlet {
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
		String oppid=request.getParameter("oppid");
		List<Equ> opplayout=ContractDao.opplayout(oppid);
		Gson gson = new Gson();
		String opplayoutGson=gson.toJson(opplayout); 
		//session.setAttribute("opplayoutGson", opplayoutGson);
	//	System.out.println(oppid);
		PrintWriter out = response.getWriter();
		out.print(opplayoutGson);
		out.close();
	}

}
