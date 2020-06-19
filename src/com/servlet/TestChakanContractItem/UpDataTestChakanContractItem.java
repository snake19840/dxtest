package com.servlet.TestChakanContractItem;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
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
 * Servlet implementation class UpDataTestChakanContractItem
 */
@WebServlet("/UpDataTestChakanContractItem")
public class UpDataTestChakanContractItem extends HttpServlet {
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
PrintWriter out = response.getWriter();
		
		String contractid=request.getParameter("contractid");
		String contractname=request.getParameter("contractname");
		String markdate=request.getParameter("markdate");
		String contractnlife=request.getParameter("contractnlife");
		String myname=request.getParameter("myname");
		String oppname=request.getParameter("oppname");
		String oppunit=request.getParameter("oppunit");
		String myu=request.getParameter("myu");
		String plan1=request.getParameter("plan1");
//		String[] plan1=request.getParameterValues("plan1");
		String oppid=request.getParameter("oppid");
		String myid=request.getParameter("myid");
	//	String[] arr = plan1.split(",");
//		System.out.println(plan1);
		SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date(System.currentTimeMillis());
//		System.out.println(formatter.format(date));
		String oppu=oppunit;
		String oppp=request.getParameter("oppp");
		String oppa=request.getParameter("oppa");
		String oppn=request.getParameter("oppn");
		String oppe=request.getParameter("oppe");
		String oppx=request.getParameter("oppx");
		String oppmail=request.getParameter("oppmail");
//		String oppid=formatter.format(date)+System.currentTimeMillis();
		String oppe2=request.getParameter("oppe2");
		String oppad=request.getParameter("oppad");
		String opppayb=request.getParameter("opppayb");
		String opppaya=request.getParameter("opppaya");
		String opppayz=request.getParameter("opppayz");
		String opppayh=request.getParameter("opppayh");
		String opppaye=request.getParameter("opppaye");
		String opppaya2=request.getParameter("opppaya2");
		String opppaym=request.getParameter("opppaym");
		String opppayid=oppid;
		
		String mya=request.getParameter("mya");
		String myp=request.getParameter("myp");
		String myn=request.getParameter("myn");
		String mye=request.getParameter("mye");
		String myad=request.getParameter("myad");
		String mye2=request.getParameter("mye2");
		String myx=request.getParameter("myx");
		String myemail=request.getParameter("myemail");
//		String myid=formatter.format(date)+System.currentTimeMillis();
		String mypayb=request.getParameter("mypayb");
		String mypaya=request.getParameter("mypaya");
		String mypayz=request.getParameter("mypayz");
		String mypayh=request.getParameter("mypayh");
		String mypaye=request.getParameter("mypaye");
		String mypaya2=request.getParameter("mypaya2");
		String mypaym=request.getParameter("mypaym");
		String camount=request.getParameter("camount");
		String planm2=request.getParameter("planm2");
//		System.out.println(planm2);
		String statu=request.getParameter("statu");
		String plandate2=request.getParameter("plandate2");
		String plandate1=request.getParameter("plandate1");
		String planm1=request.getParameter("planm1");
		
		String mypayid=myid;
		
	
		String sql="update DXTESTCONTRACT set   contractname='"+ contractname+"',	 oppunit='"+ oppunit+"',	 "
				+ "markdate='"+ markdate+"',	 contractnlife='"+ contractnlife+"',	 camount='"+ camount+"',	"
						+ " plan1='"+ plan1+"',	myname='"+myname+"',	oppname='"+oppname+"',	planm2='"+planm2+"',	"
								+ "statu='"+statu+"',	plandate2='"+plandate2+"',	plandate1='"+plandate1+"',	planm1='"+planm1+"' "
										+ " where contractid='"+contractid+"'" ;
		boolean flag=SelectAll.Update(sql);
		
		
		sql= "update CONTRACTOPP set   oppu='"+ oppu+"',	 oppp='"+ oppp+"',	 oppa='"+ oppa+"',	 oppn='"+ oppn+"',	"
				+ " oppe='"+ oppe+"',	 oppx='"+ oppx+"',	 oppmail='"+ oppmail+"',	 oppe2='"+ oppe2+"',	 "
						+ "oppad='"+ oppad+"'  where oppid='"+oppid+"'";
		 flag=SelectAll.Update(sql);
		 sql= " update OPPPAY set   opppayb='"+ opppayb+"',	 opppaya='"+ opppaya+"',	 opppayz='"+ opppayz+"',	"
		 		+ " opppayh='"+ opppayh+"',	 opppaye='"+ opppaye+"',	 opppaya2='"+ opppaya2+"',	 opppaym='"+ opppaym+"' "
		 				+ " where opppayid='"+oppid+"'";
		 flag=SelectAll.Update(sql);
		 sql="  update CONTRACTMY set   myu='"+ myu+"',	 mya='"+ mya+"',	 myp='"+ myp+"',	 myn='"+ myn+"',	 mye='"+ mye+"',	"
		 		+ " myad='"+ myad+"',	 mye2='"+ mye2+"',	 myx='"+ myx+"',	 myemail='"+ myemail+"'  where myid='"+myid+"'";
		 flag=SelectAll.Update(sql);
		 sql="  update MYPAY set   mypayb='"+ mypayb+"',	 mypaya='"+ mypaya+"',	 mypayz='"+ mypayz+"',	 mypayh='"+ mypayh+"',	"
		 		+ " mypaye='"+ mypaye+"',	 mypaya2='"+ mypaya2+"',	 mypaym='"+ mypaym+"'  where mypayid='"+myid+"'";
		 flag=SelectAll.Update(sql);
		 
		 
		
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
		
		//session.setAttribute("contractListItem", contractListItem);
		session.setAttribute("contractListItemFile", contractListItemFile);
		session.setAttribute("contractid", contractid);
		String listGson=gson.toJson(list); 
		session.setAttribute("classflistGson", listGson);
		 sql="select planm2 from dxtestcontract where contractid='"+contractid+"' ";
		String planm2new=SelectAll.getKey(sql, "planm2");
		sql="select plan1 from dxtestcontract where contractid='"+contractid+"' ";
		String pnamexString=SelectAll.getKey(sql, "plan1");
		session.setAttribute("pnamexString", pnamexString);
		session.setAttribute("planm2Gson", planm2new);
		
		
		out.print("{\"statu\":\"success\",\"pnamexString\":"+pnamexString+",\"planm2\":"+planm2new+",\"contractListItemGson\":" + contractListItemGson + "}");
		out.close();
		
		
	}

}
