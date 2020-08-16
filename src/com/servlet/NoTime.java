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

import com.clas.DataSets;
import com.clas.Equ;
import com.clas.SelectAll;
import com.dao.ContractDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class NoTime
 */
@WebServlet("/NoTime")
public class NoTime extends HttpServlet {
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
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		//String #Gson=gson.toJson(#); 
		//session.setAttribute("#Gson", #Gson);
		String sql ="select t1.ID AS ID_t1,t1.CONTRACTID AS CONTRACTID_t1,t1.CONTRACTNAME AS CONTRACTNAME_t1, t1.CONTRACTNOWDATE "
	    		+ "AS CONTRACTNOWDATE_t1, t1.STATU AS STATU_t1, t1.OPPUNIT AS OPPUNIT_t1, t1.MARKDATE AS MARKDATE_t1, t1.CONTRACTNLIFE AS "
	    		+ "CONTRACTNLIFE_t1, t1.CAMOUNT AS CAMOUNT_t1,t1.PLANDATE1 AS PLANDATE1_t1,t1.PLAN3 AS PLAN3_t1, t1.PLAN2 AS PLAN2_t1, t1.PLANDATE2 AS "
	    		+ "PLANDATE2_t1, t1.PLAN4 AS PLAN4_t1,t1.PLANM1 AS PLANM1_t1, t1.SGMONEY AS SGMONEY_t1, t1.MYNAME AS MYNAME_t1, t1.OPPNAME AS OPPNAME_t1, "
	    		+ "t1.OPPID AS OPPID_t1, t1.MYID AS MYID_t1, t1.CLASSSON AS CLASSSON_t1,t3.OPPU AS OPPU_t3, t3.OPPP AS OPPP_t3, t3.OPPA AS OPPA_t3, t3.OPPN "
	    		+ "AS OPPN_t3, t3.OPPE AS OPPE_t3, t3.OPPX AS OPPX_t3, t3.OPPMAIL AS OPPMAIL_t3, t3.OPPID AS OPPID_t3, t3.OPPE2 AS OPPE2_t3, t3.OPPAD AS "
	    		+ "OPPAD_t3,t4.OPPPAYB AS OPPPAYB_t4, t4.OPPPAYA AS OPPPAYA_t4, t4.OPPPAYZ AS OPPPAYZ_t4, t4.OPPPAYH AS OPPPAYH_t4, t4.OPPPAYE AS OPPPAYE_t4, "
	    		+ "t4.OPPPAYA2 AS OPPPAYA2_t4, t4.OPPPAYM AS OPPPAYM_t4, t4.OPPPAYID AS OPPPAYID_t4 ,t5.MYU AS MYU_t5, t5.MYA AS MYA_t5, t5.MYP AS MYP_t5, "
	    		+ "t5.MYN AS MYN_t5, t5.MYE AS MYE_t5, t5.MYAD AS MYAD_t5, t5.MYE2 AS MYE2_t5, t5.MYX AS MYX_t5, t5.MYEMAIL AS MYEMAIL_t5, t5.MYID AS MYID_t5,"
	    		+ "t6.MYPAYB AS MYPAYB_t6, t6.MYPAYA AS MYPAYA_t6, t6.MYPAYZ AS MYPAYZ_t6, t6.MYPAYH AS MYPAYH_t6, t6.MYPAYE AS MYPAYE_t6, t6.MYPAYA2 AS MYPAYA2_t6, "
	    		+ "t6.MYPAYM AS MYPAYM_t6, t6.MYPAYID AS MYPAYID_t6 FROM DXTESTCONTRACT t1,CONTRACTOPP t3,OPPPAY t4 ,CONTRACTMY t5,MYPAY t6 WHERE  t1.oppid=t3.oppid "
	    		+ "and t1.myid=t5.myid and  t3.oppid=t4.opppayid  and  t5.myid=t6.mypayid  "
	    		+ "  order by MARKDATE_t1";
		 List<Equ> list = SelectAll.Warningstatu(sql);
		 String listGson = gson.toJson(list);
		    session.setAttribute("list_print", list);
		    session.setAttribute("listGson_print", listGson);
		List<Equ> contractList=ContractDao.contractList();
		
		session.setAttribute("contractList", contractList);
		String contractListGson=gson.toJson(contractList); 
		session.setAttribute("contractListGson", contractListGson);
		out.print("{\"statu\":\"1\",\"contractListGson\":" + contractListGson + ",\"listGson_print\":" + listGson + "}");
		out.close();
	}

}
