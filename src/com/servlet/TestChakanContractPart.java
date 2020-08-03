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
//		System.out.println(f2);
		HttpSession session=request.getSession();
		String sql="";
		String temp="";
		//all
		String sql_all="SELECT * FROM PLANSUB t1,DXTESTCONTRACT t2 WHERE t1.contractid=t2.contractid and t1.realpay>='"+monthNow+"' and t1.realpay<'"+monthNext+"' "
				+ "and t1.statu_sub='1' union SELECT * FROM PLANSUB t1,DXTESTCONTRACT t2 WHERE t1.contractid=t2.contractid  and t1.realpay<'"+monthNext+"' and"
						+ " t1.statu_sub='0' ";
		String sql_over="SELECT * FROM PLANSUB t1,DXTESTCONTRACT t2 WHERE t1.contractid=t2.contractid and t1.realpay>='"+monthNow+"' and t1.realpay<'"+monthNext+"' "
				+ "and t1.statu_sub='1' ";
		
		String sql_now=" SELECT * FROM PLANSUB t1,DXTESTCONTRACT t2 WHERE t1.contractid=t2.contractid  and t1.realpay<'"+monthNext+"' and"
						+ " t1.statu_sub='0' ";
//		String sql="select contractid,	contractname,	markdate,	contractnlife,camount,	oppunit,	planm1,	plandate2,	plandate1,sgmoney from  dxtestcontract where "
//				+ "(statu!='end'or statu is null) and plandate1>='"+monthNow+"' and plandate1<'"+monthNext+"' order by plandate2";
		 sql=sql_now;
		
		if (f2.equals("未付款")) {
			temp =sql_now;
		}else if (f2.equals("已付款")) {
			temp =sql_over;
		}else if (f2.equals("全部")) {
			temp =sql_all;
		}
		if(f.equals("c")||f.equals("b")) {
			sql=temp;
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
//		System.out.println(contractPlanListGson);
		sql="SELECT DISTINCT CLASSFAMILY FROM CONTRACTCLASS";
		List<Equ> ListClassFamily = SelectAll.Warningstatu(sql);
		String ListClassFamilyGson=gson.toJson(ListClassFamily); 
		session.setAttribute("ListClassFamilyGson", ListClassFamilyGson);
		
		
		if (f.equals("b")||f.equals("c")) {
			out.print("{\"statu\":\"success\",\"contractPlanListGson\":" + contractPlanListGson + ",\"monthNow\":" + monthNow + ",\"monthNext\":" + monthNext + "}");
		}
		if (f.equals("a")) {
			request.getRequestDispatcher("ContractPlanListPart.jsp").forward(request, response);
		}
		out.close();
		
	}

}
