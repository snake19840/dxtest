package com.servlet.contractPlan;

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
import com.clas.PlanCheck;
import com.clas.SelectAll;
import com.dao.ContractDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class UpdataPlan
 */
@WebServlet("/UpdataPlan")
public class UpdataPlan extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		HttpSession session = request.getSession();
		//String ##Gson=gson.toJson(##); 
		//session.setAttribute("##", ##Gson);
		
		String contractid=request.getParameter("contractid");
		String planm2=request.getParameter("planm2");
		String plandate1=request.getParameter("plandate1");
		String planm1=request.getParameter("planm1");
		String sgmoney=request.getParameter("sgmoney");
		
		String sql="update DXTESTCONTRACT set  planm2='"+planm2+"',	plandate1='"+plandate1+"',	planm1='"+planm1+"', sgmoney='"+sgmoney+"'  where contractid='"+contractid+"'";
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
		out.print("{\"statu\":"+flag+",\"contractListItemGson\":" + contractListItemGson + "}");
		out.close();
	
		
	}

}
