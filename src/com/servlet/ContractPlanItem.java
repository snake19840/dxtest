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
 * Servlet implementation class ContractPlanItem
 */
@WebServlet("/ContractPlanItem")
public class ContractPlanItem extends HttpServlet {
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
		String TT=request.getParameter("TT");
		List<Equ> contractPlanItem=ContractDao.contractPlanItem(contractid);
		HttpSession session = request.getSession();
		session.setAttribute("contractPlanItem", contractPlanItem);
		session.setAttribute("TT", TT);
		Gson gson = new Gson();
//		List<Equ> contractListItem=ContractDao.contractListItem(contractid);
		List<Equ> contractListItemFile=ContractDao.contractListItemFile(contractid);
		List<Equ> classonitem=ContractDao.classonitem(contractid);
		List<Equ> paynameitem=ContractDao.paynameitem(contractid);
		List<Equ> list=ContractDao.classf();
//		String contractListItemGson=gson.toJson(contractListItem); 
		String classonitemGson=gson.toJson(classonitem);
		String paynameitemGson=gson.toJson(paynameitem);
		String listGson=gson.toJson(list); 
		String contractListItemFileGson=gson.toJson(contractListItemFile); 
		
		session.setAttribute("contractid", contractid);
		session.setAttribute("classflistGson", listGson);
		session.setAttribute("contractListItemFile", contractListItemFileGson);
//		session.setAttribute("contractListItemGson", contractListItemGson);
		session.setAttribute("classonitemGson", classonitemGson);
		session.setAttribute("paynameitemGson", paynameitemGson);
//		session.setAttribute("contractListItem", contractListItem);
		
		
		
		String sqlv="SELECT	    id,	    contractpicture,	    contractid,	    contractsdate,	    contractedate,	    "
				+ "contractname,	    contractnowdate,	    statu,	    oppunit,	    markdate,	    contractnlife,	"
				+ "    camount,	    myconn,	    oppconn,	    myconnt,	    oppconnt,	    ctype,	    tax,	    plan1,	"
				+ "    plan2,	    plan3,	    plan4,	    plandate4,	    plandate2,	    plandate1,	    plandate3,	    planm1,	  "
				+ "  planm2,	    planm3,	    planm4,	    sgmoney,	    initmoney,	    finmoney,	    warmoney,	    myname,	 "
				+ "   oppname,	    oppid,	    myid,	    classson	FROM	    dxtestcontract where contractid='"+contractid+"'";
		List<Equ> contractListItem=SelectAll.Warningstatu(sqlv);
		

		String sql="select plan1 from dxtestcontract where contractid='"+contractid+"' ";
		String pnamexString=SelectAll.getKey(sql, "plan1");
		 sql="select planm2 from dxtestcontract where contractid='"+contractid+"' ";
		String planm2=SelectAll.getKey(sql, "planm2");
		 sql="select oppid from dxtestcontract where contractid='"+contractid+"' ";
		String oppid=SelectAll.getKey(sql, "oppid");
		 sql="select myid from dxtestcontract where contractid='"+contractid+"' ";
		String myid=SelectAll.getKey(sql, "myid");
		
	
		sqlv="SELECT	    myu,	    mya,	    myp,	    myn,	    mye,	   "
				+ " myad,	    mye2,	    myx,	    myemail,	    myid	FROM	    contractmy where myid='"+myid+"'";
		List<Equ> contractmyItem=SelectAll.Warningstatu(sqlv);
		sqlv="SELECT	    mypayb,	    mypaya,	    mypayz,	    mypayh,	    mypaye,	    mypaya2,	    mypaym,	    mypayid	FROM	    mypay where mypayid='"+myid+"'";
		List<Equ> mypayItem=SelectAll.Warningstatu(sqlv);
		sqlv="SELECT	    oppu,	    oppp,	    oppa,	    oppn,	    oppe,	    oppx,	    oppmail,	    "
				+ "oppid,	    oppad,	    oppe2	FROM	    contractopp where oppid='"+oppid+"'";
		List<Equ> contractoppItem=SelectAll.Warningstatu(sqlv);
		sqlv="SELECT	    opppayb,	    opppaya,	    opppayz,	    opppayh,	    opppaye,	  "
				+ "  opppaya2,	    opppaym,	    opppayid	FROM	    opppay where opppayid='"+oppid+"'";
		List<Equ> opppayItem=SelectAll.Warningstatu(sqlv);
		
		String contractListItemGson=gson.toJson(contractListItem); 
//		String classonitemGson=gson.toJson(classonitem);
//		String paynameitemGson=gson.toJson(paynameitem);
//		String listGson=gson.toJson(list);
		String contractmyItemg=gson.toJson(contractmyItem);
		String mypayItemg=gson.toJson(mypayItem);
		String contractoppItemg=gson.toJson(contractoppItem);
		String opppayItemg=gson.toJson(opppayItem);
//		String contractListItemFileGson=gson.toJson(contractListItemFile); 
		session.setAttribute("contractListItemGson", contractListItemGson);
		session.setAttribute("contractmyItemg", contractmyItemg);
		session.setAttribute("mypayItemg", mypayItemg);
		session.setAttribute("contractoppItemg", contractoppItemg);
		session.setAttribute("opppayItemg", opppayItemg);
		session.setAttribute("pnamexString", pnamexString);
		session.setAttribute("planm2Gson", planm2);
		session.setAttribute("contractid", contractid);
		request.getRequestDispatcher("ContractPlan.jsp").forward(request, response);
		
	}

}
