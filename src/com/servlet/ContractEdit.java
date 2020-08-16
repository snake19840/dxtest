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
@WebServlet("/ContractEdit")
public class ContractEdit extends HttpServlet {
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
		String sqlv="SELECT payname,classfamily FROM contractpay";
		
		List<Equ> paynameAll=SelectAll.Warningstatu(sqlv);
		sqlv ="SELECT classfamily, classson FROM contractclass";
		List<Equ> calsssonAll=SelectAll.Warningstatu(sqlv);
		sqlv="SELECT	    id,	    contractpicture,	    contractid,	    contractsdate,	    contractedate,	    "
				+ "contractname,	    contractnowdate,	    statu,	    oppunit,	    markdate,	    contractnlife,	"
				+ "    camount,	    myconn,	    oppconn,	    myconnt,	    oppconnt,	    ctype,	    tax,	    plan1,	 "
				+ "   plan2,	    plan3,	    plan4,	    plandate4,	    plandate2,	    plandate1,	    plandate3,	    planm1,	 "
				+ "   planm2,	    planm3,	    planm4,	    sgmoney,	    initmoney,	    finmoney,	    warmoney,	    myname,	 "
				+ "   oppname,	    oppid,	    myid,	    classson	FROM	    dxtestcontract where contractid='"+contractid+"'";
		
		
		
		List<Equ> contractListItem=SelectAll.Warningstatu(sqlv);
		
		List<Equ> contractListItemFile=ContractDao.contractListItemFile(contractid);
		List<Equ> classonitem=ContractDao.classonitem(contractid);
		List<Equ> paynameitem=ContractDao.paynameitem(contractid);
		Gson gson = new Gson();
		String contractListItemGson=gson.toJson(contractListItem); 
		String contractListItemFileGson=gson.toJson(contractListItemFile);
		String classonitemGson=gson.toJson(classonitem);
		String paynameitemGson=gson.toJson(paynameitem);
		String paynameAllGson=gson.toJson(paynameAll);
		String calsssonAllGson=gson.toJson(calsssonAll);
		
		session.setAttribute("calsssonAllGson", calsssonAllGson);
		session.setAttribute("paynameAllGson", paynameAllGson);
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
		session.setAttribute("contractListItemFile", contractListItemFile);
		session.setAttribute("contractid", contractid);
		String listGson=gson.toJson(list); 
		session.setAttribute("classflistGson", listGson);
		String sql="select planm2 from dxtestcontract where contractid='"+contractid+"' ";
		String planm2=SelectAll.getKey(sql, "planm2");
		sql="select plan1 from dxtestcontract where contractid='"+contractid+"' ";
		String pnamexString=SelectAll.getKey(sql, "plan1");
		session.setAttribute("pnamexString", pnamexString);
		session.setAttribute("planm2Gson", planm2);
		
		 sql="select myid from dxtestcontract where contractid='"+contractid+"' ";
		String myid=SelectAll.getKey(sql, "myid");
		 sql="select oppid from dxtestcontract where contractid='"+contractid+"' ";
			String oppid=SelectAll.getKey(sql, "oppid");
		
		
		sqlv="SELECT	    oppu,	    oppp,	    oppa,	    oppn,	    oppe,	    oppx,	   "
				+ " oppmail,	    oppid,	    oppad,	    oppe2	FROM	    contractopp where oppid='"+oppid+"'";
		List<Equ> contractopp=SelectAll.Warningstatu(sqlv);
		sqlv="SELECT	    opppayb,	    opppaya,	    opppayz,	    opppayh,	    opppaye,"
				+ "	    opppaya2,	    opppaym,	    opppayid	FROM	    opppay where opppayid='"+oppid+"'";
		List<Equ> opppay=SelectAll.Warningstatu(sqlv);
		sqlv="SELECT	    mypayb,	    mypaya,	    mypayz,	    mypayh,	    mypaye,	    mypaya2,	   "
				+ " mypaym,	    mypayid	FROM	    mypay where mypayid='"+myid+"'";
		List<Equ> mypay=SelectAll.Warningstatu(sqlv);
		sqlv="SELECT	    myu,	    mya,	    myp,	    myn,	    mye,	    myad,	    mye2,	 "
				+ "   myx,	    myemail,	    myid	FROM	    contractmy where myid='"+myid+"'";
		List<Equ> contractmy=SelectAll.Warningstatu(sqlv);
		
		
		String contractoppGson=gson.toJson(contractopp);
		String opppayGson=gson.toJson(opppay);
		String contractmyGson=gson.toJson(contractmy);
		String mypayGson=gson.toJson(mypay);
		
		session.setAttribute("contractoppGson", contractoppGson);
		session.setAttribute("opppayGson", opppayGson);
		session.setAttribute("contractmyGson", contractmyGson);
		session.setAttribute("mypayGson", mypayGson);
		
		
		
		request.getRequestDispatcher("TestEditContractItem.jsp").forward(request, response);
	}

}
