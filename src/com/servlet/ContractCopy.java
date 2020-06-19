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
import com.clas.SelectAll;
import com.dao.ContractDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class ContractEdit
 */
@WebServlet("/ContractCopy")
public class ContractCopy extends HttpServlet {
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
		HttpSession session=request.getSession();
		String contractid=request.getParameter("contractid");
		
		String sqlv="SELECT classfamily, classson, id FROM contractclass";
		List<Equ> contClass=SelectAll.Warningstatu(sqlv);
				sqlv="SELECT  payname, classfamily FROM contractpay";
		List<Equ> contractPay=SelectAll.Warningstatu(sqlv);
		
		List<Equ> contractListItem=ContractDao.contractListItem(contractid);
		List<Equ> contractListItemFile=ContractDao.contractListItemFile(contractid);
		List<Equ> classonitem=ContractDao.classonitem(contractid);
		List<Equ> paynameitem=ContractDao.paynameitem(contractid);
		Gson gson = new Gson();
		String contractListItemGson=gson.toJson(contractListItem); 
		String contractListItemFileGson=gson.toJson(contractListItemFile);
		String classonitemGson=gson.toJson(classonitem);
		String paynameitemGson=gson.toJson(paynameitem);
		session.setAttribute("contractListItemGson", contractListItemGson);
		session.setAttribute("contractListItemFileGson", contractListItemFileGson);
		session.setAttribute("classonitemGson", classonitemGson);
		session.setAttribute("paynameitemGson", paynameitemGson);
		List<Equ> list=ContractDao.classf();
		
		List<Equ> list1=ContractDao.list1();
		List<Equ> list2=ContractDao.list2();
		List<Equ> list3=ContractDao.list3();
		String list1Gson=gson.toJson(list1); 
		String list2Gson=gson.toJson(list2); 
		String list3Gson=gson.toJson(list3);
		List<Equ> classflist=ContractDao.classf();
		session.setAttribute("list1Gson", list1Gson);
		session.setAttribute("list2Gson", list2Gson);
		session.setAttribute("list3Gson", list3Gson);
		session.setAttribute("list3Gson", list3Gson);
		String classflistGson=gson.toJson(classflist); 
		session.setAttribute("classflistGson", classflistGson);
		//session.setAttribute("contractListItem", contractListItem);
		
		
		session.setAttribute("contractid", contractid);
		String listGson=gson.toJson(list); 
		session.setAttribute("classflistGson", listGson);
		String contClassGson=gson.toJson(contClass);
		session.setAttribute("contClassGson", contClassGson);
		String contractPayGson=gson.toJson(contractPay);
		session.setAttribute("contractPayGson", contractPayGson);
		
		request.getRequestDispatcher("TestContractCopy.jsp").forward(request, response);
	}

}
