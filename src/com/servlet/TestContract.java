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
 * Servlet implementation class TestContract
 */
@WebServlet("/TestContract")
public class TestContract extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
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
		HttpSession session = request.getSession();
		Gson gson = new Gson();
		
		String sqlv="SELECT classfamily, classson, id FROM contractclass";
		List<Equ> classsonlist=SelectAll.Warningstatu(sqlv);
		sqlv="SELECT payname, classfamily FROM contractpay";
		List<Equ> classpaylist=SelectAll.Warningstatu(sqlv);
		
		List<Equ> list1=ContractDao.list1();
		List<Equ> list2=ContractDao.list2();
		List<Equ> list3=ContractDao.list3();
		String list1Gson=gson.toJson(list1); 
		String list2Gson=gson.toJson(list2); 
		String list3Gson=gson.toJson(list3);
		String classsonlistGson=gson.toJson(classsonlist);
		String classpaylistGson=gson.toJson(classpaylist);
		List<Equ> classflist=ContractDao.classf();
		session.setAttribute("list1Gson", list1Gson);
		session.setAttribute("list2Gson", list2Gson);
		session.setAttribute("list3Gson", list3Gson);
		session.setAttribute("classsonlistGson", classsonlistGson);
		session.setAttribute("classpaylistGson", classpaylistGson);
		String classflistGson=gson.toJson(classflist); 
		session.setAttribute("classflistGson", classflistGson);
		
		
		sqlv="SELECT	    oppu,	    oppp,	    oppa,	    oppn,	    oppe,	    oppx,	    oppmail,	    oppid,	    "
				+ "oppad,	    oppe2	FROM	    contractopp";
		List<Equ> contractopp=SelectAll.Warningstatu(sqlv);
		sqlv="SELECT	    opppayb,	    opppaya,	    opppayz,	    opppayh,	    opppaye,	    opppaya2,	    "
				+ "opppaym,	    opppayid	FROM	    opppay";
		List<Equ> opppay=SelectAll.Warningstatu(sqlv);
		sqlv="SELECT	    mypayb,	    mypaya,	    mypayz,	    mypayh,	    mypaye,	    mypaya2,	    mypaym,	    "
				+ "mypayid	FROM	    mypay";
		List<Equ> mypay=SelectAll.Warningstatu(sqlv);
		sqlv="SELECT	    myu,	    mya,	    myp,	    myn,	    mye,	    myad,	    mye2,	    myx,	    myemail,"
				+ "	    myid	FROM	    contractmy";
		List<Equ> contractmy=SelectAll.Warningstatu(sqlv);
		
		String contractoppGson=gson.toJson(contractopp);
		String opppayGson=gson.toJson(opppay);
		String contractmyGson=gson.toJson(contractmy);
		String mypayGson=gson.toJson(mypay);
		
		session.setAttribute("contractoppGson", contractoppGson);
		session.setAttribute("opppayGson", opppayGson);
		session.setAttribute("contractmyGson", contractmyGson);
		session.setAttribute("mypayGson", mypayGson);
		
		request.getRequestDispatcher("TestContract.jsp").forward(request, response);
	}

}
