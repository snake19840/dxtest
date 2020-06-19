package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clas.Equ;
import com.clas.SelectAll;
import com.dao.ReturnDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class AddTestServlet1
 */
//@WebServlet("/AddTestServlet1")
public class AddTestServlet1 extends HttpServlet {
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
				String pname=request.getParameter("pname");
				String sn=request.getParameter("sn");
				String pos=request.getParameter("pos");
				String ip=request.getParameter("ip");
				String styp=request.getParameter("styp");
				String sname=request.getParameter("sname");
				String sid=request.getParameter("sid");
				String stdate=request.getParameter("stdate");
				String use=request.getParameter("use");
				String ownname=request.getParameter("ownname");
				String proname=request.getParameter("proname");
				String manname=request.getParameter("manname");
				String agename=request.getParameter("agename");
				String mantyp=request.getParameter("mantyp");
				String did=request.getParameter("did");
				String port=request.getParameter("port");
				String cpu=request.getParameter("CPU");
				String memory=request.getParameter("memory");
				String disk=request.getParameter("disk");
				String syn=request.getParameter("syn");
				String oracle=request.getParameter("oracle");
				String oth=request.getParameter("oth");
				String x=request.getParameter("x");
			//	System.out.println("did="+did);
				SelectAll.uptestp(stdate, sn, pos, ip, styp, sname, sid, pname, use, ownname, proname, manname, agename, mantyp, did, port, cpu, memory, disk, syn, oracle, oth);
				List<Equ> list=SelectAll.testformall();
				Gson gson = new Gson();
				String listformGson=gson.toJson(list); 
				session.setAttribute("listform", list);
				session.setAttribute("listformGson", listformGson);
				 List<String> typeList=SelectAll.typeList();
				 String typeListGson=gson.toJson(typeList); 
				   session.setAttribute("typeListGson", typeListGson);
				PrintWriter out = response.getWriter();
				out.print("check");
				out.close();
				
	}

}
