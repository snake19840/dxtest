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

/**
 * Servlet implementation class Saveli
 */
@WebServlet("/Saveli")
public class Saveli extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String nowdate=request.getParameter("nowdate");
		String message=request.getParameter("message");
		String message0=request.getParameter("message0");
		String sn=request.getParameter("sn");
		String z=request.getParameter("z");
		String[] sse=SelectAll.sse(message0, nowdate, sn);
		String stno=sse[0];
		String sdate=sse[1];
		String edate=sse[2];
		HttpSession session = request.getSession();
		SelectAll.updatamessage(nowdate, message);
		List<Equ> list=null;
		if (z.equals("TestWarning3")) {
			 list= SelectAll.SelectItemAll(sn);
		}else if (z.equals("TestWarningItem")||z.equals("TestWarningItem2")) {
			if (stno.equals("0")) {
				 list=SelectAll.sucList(stno, edate, sdate);
			}else {
				 list=SelectAll.SelectItem2(stno);
			}
		}
		
		session.setAttribute("list_WarningServlet2",list); 
		PrintWriter out = response.getWriter();
		if (z.equals("TestWarning3")) {
			request.getRequestDispatcher("TestWarning3.jsp").forward(request, response);
		}else if (z.equals("TestWarningItem")) {
			request.getRequestDispatcher("TestWarningItem.jsp").forward(request, response);
		}else if (z.equals("TestWarningItem2")) {
			request.getRequestDispatcher("TestWarningItem2.jsp").forward(request, response);
		}
		
	}
	
}
