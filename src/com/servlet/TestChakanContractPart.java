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
import com.dao.ContractDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class TestChakanContractPart
 */
@WebServlet("/TestChakanContractPart")
public class TestChakanContractPart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String monthNow=request.getParameter("monthNow");
		String monthNext=request.getParameter("monthNext");
		String f=request.getParameter("f");
		String f2=request.getParameter("f2")==null? "":request.getParameter("f2");
		
		HttpSession session=request.getSession();
		String sql="SELECT * FROM PLANSUB t1,DXTESTCONTRACT t2 WHERE t1.contractid=t2.contractid and t1.realpay>='"+monthNow+"' and t1.realpay<'"+monthNext+"' ORDER by t1.now DESC ";
//		String sql="select contractid,	contractname,	markdate,	contractnlife,camount,	oppunit,	planm1,	plandate2,	plandate1,sgmoney from  dxtestcontract where "
//				+ "(statu!='end'or statu is null) and plandate1>='"+monthNow+"' and plandate1<'"+monthNext+"' order by plandate2";
		String temp="(t1.statu_sub='0' or t1.statu_sub='1')";
		if (f2.equals("Î´¸¶¿î")) {
			temp ="t1.statu_sub='0'";
		}else if (f2.equals("ÒÑ¸¶¿î")) {
			temp ="t1.statu_sub='1'";
		}
		if(f.equals("c")) {
			sql="SELECT * FROM PLANSUB t1,DXTESTCONTRACT t2 WHERE t1.contractid=t2.contractid and "+temp+" and t1.realpay>='"+monthNow+"' and t1.realpay<'"+monthNext+"' ORDER by t1.now DESC";
		}
		List<Equ> contractPlanList=SelectAll.Warningstatu(sql);
		Gson gson = new Gson();
		String contractPlanListGson=gson.toJson(contractPlanList); 
		monthNow=gson.toJson(monthNow);
		monthNext=gson.toJson(monthNext);
//		System.out.println(monthNow);
		session.setAttribute("contractPlanListGson",contractPlanListGson);
		session.setAttribute("monthNow",monthNow);
		session.setAttribute("monthNext",monthNext);
		PrintWriter out = response.getWriter();
		System.out.println(f);
		
		if (f.equals("b")||f.equals("c")) {
			out.print("{\"statu\":\"success\",\"contractPlanListGson\":" + contractPlanListGson + ",\"monthNow\":" + monthNow + ",\"monthNext\":" + monthNext + "}");
		}
		
		
		if (f.equals("a")) {
			request.getRequestDispatcher("ContractPlanListPart.jsp").forward(request, response);
		}
		out.close();
		
	}

}
