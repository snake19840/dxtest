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
import com.google.gson.Gson;

/**
 * Servlet implementation class DeleteTestServlet
 */
@WebServlet("/DeleteTestServlet")
public class DeleteTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		doPost(request, response);
		
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String id=request.getParameter("id");
		System.out.println(id);
		List<Equ> list=SelectAll.delEqu(id);
		
		HttpSession session=request.getSession();
	       session.setAttribute("list", list);
	       Gson gson = new Gson();
			//String ##Gson=gson.toJson(##); 
			//session.setAttribute("##", ##Gson);
		  String listGsonAll=gson.toJson(list); 
		  session.setAttribute("listGsonAll", listGsonAll); 
	       PrintWriter out = response.getWriter();
	       out.print("{\"statu\":1,\"listGsonAll\":" + listGsonAll + "}");
		out.close();
	       
//		    request.getRequestDispatcher("TestTableEdit2.jsp").forward(request, response);
	}

}
