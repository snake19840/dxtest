package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
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
import com.sun.scenario.effect.impl.prism.ps.PPSBlend_ADDPeer;


/**
 * Servlet implementation class AddTestServlet
 */
@WebServlet("/AddTestServletR")
public class AddTestServletR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		//int id=Integer.valueOf(request.getParameter("id"));
		String sn = String.valueOf(request.getParameter("sn"));
		String pos = String.valueOf(request.getParameter("pos"));
		String ip = String.valueOf(request.getParameter("ip"));
		String styp = String.valueOf(request.getParameter("styp"));
		String sname = String.valueOf(request.getParameter("sname"));
		
		String sid = String.valueOf(request.getParameter("sid"));
		
		String pname = String.valueOf(request.getParameter("pname"));
		String use = String.valueOf(request.getParameter("use"));
		String ownname = String.valueOf(request.getParameter("ownname"));
		String proname = String.valueOf(request.getParameter("proname"));
		String manname = String.valueOf(request.getParameter("manname"));
		String agename = String.valueOf(request.getParameter("agename"));
		String mantyp = String.valueOf(request.getParameter("mantyp"));
		String did = String.valueOf(request.getParameter("did"));
		
		String port = String.valueOf(request.getParameter("port"));
		String cpu = String.valueOf(request.getParameter("cpu"));
		String memory = String.valueOf(request.getParameter("memory"));
		String disk = String.valueOf(request.getParameter("disk"));
		String syn = String.valueOf(request.getParameter("syn"));
		String oracle = String.valueOf(request.getParameter("oracle"));
		String oth = String.valueOf(request.getParameter("oth"));
		String stdate = String.valueOf(request.getParameter("stdate"));
		/*
		 * session.setAttribute("id",id ); session.setAttribute("sn",sn );
		 * session.setAttribute("pos",pos ); session.setAttribute("styp",styp );
		 * session.setAttribute("sname",sname ); session.setAttribute("sid",sid );
		 * session.setAttribute("pname",pname ); session.setAttribute("use",use );
		 * session.setAttribute("ownname",ownname );
		 * session.setAttribute("proname",proname );
		 * session.setAttribute("manname",manname );
		 * session.setAttribute("agename",agename );
		 * session.setAttribute("mantyp",mantyp ); session.setAttribute("did",did );
		 * session.setAttribute("port",port ); session.setAttribute("cpu",cpu );
		 * session.setAttribute("memory",memory ); session.setAttribute("disk",disk );
		 * session.setAttribute("syn",syn ); session.setAttribute("oracle",oracle );
		 * session.setAttribute("oth",oth ); session.setAttribute("stdate",stdate
		 * );session.setAttribute("ip",ip );
		 */
		
		 //sid=(String)session.getAttribute("sid");
		//System.out.println("sid:"+sid);
		
		
		//ip=(String)session.getAttribute("ip");
		Gson gson = new Gson();
		
		 List<Equ> list = SelectAll.listTemp(); 
		session.setAttribute("listform", list);
		   String listformGson=gson.toJson(list); 
		   session.setAttribute("listformGson", listformGson);
			
			 List<String> typeList=SelectAll.typeList();
			 String typeListGson=gson.toJson(typeList); 
			   session.setAttribute("typeListGson", typeListGson);
			  
		 request.getRequestDispatcher("Testform.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		doGet(request, response);
	}

}
