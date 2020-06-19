package com.servlet.Testindex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.text.ParseException;
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
import com.google.gson.reflect.TypeToken;

/**
 * Servlet implementation class Payover
 */
@WebServlet("/Payover")
public class Payover extends HttpServlet {
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
		Gson gson = new Gson();
		
		String contractid=request.getParameter("contractid");
		String planm2=request.getParameter("planm2");
		String statu=request.getParameter("statu");
		String plandate2=request.getParameter("plandate2");
		String plandate1=request.getParameter("plandate1");
		String planm1=request.getParameter("planm1");
		String sgmoney=request.getParameter("sgmoney");
		
		String sql="update DXTESTCONTRACT set  planm2='"+planm2+"',	statu='"+statu+"',	plandate2='"+plandate2+"',	plandate1='"+plandate1+"',	planm1='"+planm1+"',sgmoney='"+sgmoney+"'  where contractid='"+contractid+"'";
		boolean flag=SelectAll.Update(sql);
		
		String sqlv="SELECT	    id,	    contractpicture,	    contractid,	    contractsdate,	    contractedate,	    "
				+ "contractname,	    contractnowdate,	    statu,	    oppunit,	    markdate,	    contractnlife,	"
				+ "    camount,	    myconn,	    oppconn,	    myconnt,	    oppconnt,	    ctype,	    tax,	    plan1,	"
				+ "    plan2,	    plan3,	    plan4,	    plandate4,	    plandate2,	    plandate1,	    plandate3,	    planm1,	  "
				+ "  planm2,	    planm3,	    planm4,	    sgmoney,	    initmoney,	    finmoney,	    warmoney,	    myname,	 "
				+ "   oppname,	    oppid,	    myid,	    classson	FROM	    dxtestcontract where contractid='"+contractid+"'";
		List<Equ> contractListItem=SelectAll.Warningstatu(sqlv);
		String contractListItemGson=gson.toJson(contractListItem); 
		session.setAttribute("contractListItemGson", contractListItemGson);
		PrintWriter out = response.getWriter();
		out.print("{\"statu\":"+flag+",\"contractListItemGson\":" + contractListItemGson + "}");
		out.close();
		
		
	}

}
