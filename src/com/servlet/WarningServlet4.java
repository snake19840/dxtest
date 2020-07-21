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
import com.google.gson.Gson;

/**
 * Servlet implementation class WarningServlet4
 */
@WebServlet("/WarningServlet4")
public class WarningServlet4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   

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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		Gson gson=new Gson();
		String edate=request.getParameter("edate");
		String sdate=request.getParameter("sdate");
		String userid=request.getParameter("userid");
		String time=request.getParameter("time");
		String fg=request.getParameter("statu");
		userid=java.net.URLDecoder.decode(userid,"UTF-8");
		edate=java.net.URLDecoder.decode(edate,"UTF-8");
		sdate=java.net.URLDecoder.decode(sdate,"UTF-8");
//		System.out.println("===="+edate);
//		System.out.println("===="+sdate);
//		System.out.println("===="+userid);
		
		String sn="0";
		String message="巡检正常";
		if (!fg.equals("0")) {
			message="无新增故障";
		}
		
		String nowdate="";
		String statu="恢复";
		String stnonew="0";
		//String flag="1";
		String picture="";
		SelectAll.updata_dxtestwork(sn, message, time, userid, nowdate, statu, picture, edate, sdate, stnonew);
		List<Equ> listus=SelectAll.userAddListRe(userid);
		List<Equ> listAllDxtestwork=SelectAll.SelectAllDxtestwork();
		List<Equ> listAllDxtestwork2=SelectAll.SelectAllDxtestwork2();
		String listAllDxtestworkSon2=gson.toJson(listAllDxtestwork2); 
		String listAllDxtestworkSon=gson.toJson(listAllDxtestwork); 
		session.setAttribute("listAllDxtestwork", listAllDxtestworkSon);
		session.setAttribute("listus", listus);
		session.setAttribute("listAllDxtestwork2", listAllDxtestworkSon2);
		//request.getRequestDispatcher("Testindex.jsp").forward(request, response);
		PrintWriter out = response.getWriter();
		if (fg.equals("0")) {
			out.print("<script language='javascript'>alert('本次巡检正常!');window.location.href='Testindex.jsp'</script>");
		}else {
			out.print("<script language='javascript'>alert('本次巡检未发现新增故障!');window.location.href='Testindex.jsp'</script>");
		}
		
		out.close();
		
		
		
	}

}
