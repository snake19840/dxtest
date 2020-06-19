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

/**
 * Servlet implementation class ContractEdit2
 */
@WebServlet("/ContractEdit2")
public class ContractEdit2 extends HttpServlet {
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
		
		String contractid=request.getParameter("contractid");
		String contractname=request.getParameter("contractname");
		String oppunit=request.getParameter("oppunit");
		String markdate=request.getParameter("markdate");
		String ctype=request.getParameter("ctype");
		String contractnlife=request.getParameter("contractnlife");
		String myconn=request.getParameter("myconn");
		String myconnt=request.getParameter("myconnt");
		String oppconn=request.getParameter("oppconn");
		String oppconnt=request.getParameter("oppconnt");
		String camount=request.getParameter("camount");
		String tax=request.getParameter("tax");
		String myname=request.getParameter("myname");
		String oppname=request.getParameter("oppname");
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
		ContractDao contractDao=new ContractDao();
		//System.out.println("ee "+contractid);
	//	System.out.println("ee "+camount);
		contractDao.edit(contractid, contractname, oppunit, markdate, ctype, contractnlife, myconn, myconnt, oppconn, oppconnt, camount, tax, myname, oppname);
	//	System.out.println("ee "+contractid);
		List<Equ> contractListItem=ContractDao.contractListItem(contractid);
		session.setAttribute("contractListItem", contractListItem);
		session.setAttribute("contractid", contractid);
		out.print("<script language='javascript'>alert('合同修改成功!');window.location.href='TestEditContractItem.jsp'</script>");
		out.close();
	}

}
