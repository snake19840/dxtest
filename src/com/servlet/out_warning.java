package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
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
import com.google.gson.Gson;

/**
 * Servlet implementation class out_warning
 */
@WebServlet("/out_warning")
public class out_warning extends HttpServlet {
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
		String startDate=request.getParameter("startDate");
		String endDate=request.getParameter("endDate");
		int type=Integer.parseInt(request.getParameter("type"));
//		System.out.println(startDate);
//		System.out.println(endDate);
//		System.out.println(type);
		
		
		Gson gson = new Gson();
		//String #Gson=gson.toJson(#); 
		//session.setAttribute("#Gson", #Gson);
		HttpSession session = request.getSession();
		String sql="SELECT t2.STDATE AS STDATE_t2,	t2.SDATE AS SDATE_t2,	t2.EDATE AS EDATE_t2,	"
				+ "t2.REDATE AS REDATE_t2,	t2.PNAME AS PNAME_t2,	t2.USE AS USE_t2,	t2.OWNNAME AS "
				+ "OWNNAME_t2,	t2.PRONAME AS PRONAME_t2,	t2.MANNAME AS MANNAME_t2,	t2.AGENAME AS "
				+ "AGENAME_t2,	t2.MANTYP AS MANTYP_t2,	t2.SNAME AS SNAME_t2,	t2.STYP AS STYP_t2,	"
				+ "t2.POS AS POS_t2,	t2.IP AS IP_t2,	t2.PORT AS PORT_t2,	t2.CPU AS CPU_t2,	t2.MEMORY "
				+ "AS MEMORY_t2,	t2.DISK AS DISK_t2,	t2.SYN AS SYN_t2,	t2.ORACLE AS ORACLE_t2,	t2.SN AS"
				+ " SN_t2,	t2.OTH AS OTH_t2,	t2.SROOT AS SROOT_t2,	t2.SPWD AS SPWD_t2,	t2.OROOT AS OROOT_t2,"
				+ "	t2.OPWD AS OPWD_t2,	t2.AROOT AS AROOT_t2,	t2.APWD AS APWD_t2,	t2.TITLE AS TITLE_t2,	"
				+ "t2.URL AS URL_t2,	t2.SID AS SID_t2,	t2.DID AS DID_t2,	t2.STATU AS STATU_t2,	t1.MESSAGE,	"
				+ "t1.USERNAME,	t1.USERPWD,	t1.NOWDATE,	t1.SDATE,	t1.EDATE,	t1.SN,	t1.PICTURE,	t1.STATU,	"
				+ "t1.STNO,	t1.TASK,	t1.TIME FROM dxtestwork t1,dxtest t2 where t1.sn=t2.sn "
				+ "and t1.sdate>='"+DataSets.anytomorrow(startDate)+"' and t1.sdate<'"+DataSets.anytomorrow(endDate)+"' ORDER by t1.sdate";
//		String sql="SELECT * FROM dxtestwork where sdate>='"+startDate+"' and sdate<'"+DataSets.anytomorrow(endDate)+"' ORDER by sdate";
		List<Equ> list=SelectAll.Warningstatu(sql);
		
		String listGson=gson.toJson(list); 
		session.setAttribute("list_print", list);
		session.setAttribute("listGson_print", listGson);
		boolean f=true;
		PrintWriter out = response.getWriter();
		out.print("{\"statu\":" + f + ",\"listGson_print\":" + listGson + "}");
		out.close();
		
	}

}
