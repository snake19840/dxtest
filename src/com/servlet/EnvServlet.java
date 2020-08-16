package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clas.SelectAll;
import com.google.gson.Gson;

/**
 * Servlet implementation class EnvServlet
 */
@WebServlet("/EnvServlet")
public class EnvServlet extends HttpServlet {
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
		Gson gson = new Gson();
		//String #Gson=gson.toJson(#); 
		//session.setAttribute("#Gson", #Gson);
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		String value=request.getParameter("value");
	   String radio=request.getParameter("radio");
	   String  textarea=request.getParameter("textarea");
	   String  EnvServlet_sdate=request.getParameter("EnvServlet_sdate");
	   String EnvServlet_edate=request.getParameter("EnvServlet_edate");
	   String	EnvServlet_userid=request.getParameter("EnvServlet_userid");
	   String	EnvServlet_statu=request.getParameter("EnvServlet_statu");
	   String	EnvServlet_time=request.getParameter("EnvServlet_time");
	   String message="";
	   if (radio.equals("")) {
		message=value+"--"+textarea;
	}else if (textarea.equals("")) {
		message=value+"--"+radio;
	}else {
		message=value+"--"+radio+"--"+textarea;
	}
	   
	   SimpleDateFormat formatter= new SimpleDateFormat("yyyyMMddhh-mmss");
	   Date date = new Date(System.currentTimeMillis());
	   
	   
	   EnvServlet_userid=java.net.URLDecoder.decode(EnvServlet_userid,"UTF-8");
	   EnvServlet_time=java.net.URLDecoder.decode(EnvServlet_time,"UTF-8");
	   EnvServlet_statu=java.net.URLDecoder.decode(EnvServlet_statu,"UTF-8");
	   EnvServlet_sdate=java.net.URLDecoder.decode(EnvServlet_sdate,"UTF-8");
	   EnvServlet_edate=java.net.URLDecoder.decode(EnvServlet_edate,"UTF-8");
	   String stno="A-"+formatter.format(date);
	   
	   
	   String sql="insert into dxtestwork(message,username,time,sn,statu,picture,edate,sdate,stno,task) values("+
				"'"+message+"','"+EnvServlet_userid+"','"+EnvServlet_time+"','0','"+EnvServlet_statu+"','[]','"+EnvServlet_edate+"','"+EnvServlet_sdate+"','"+stno+"','0')";
			
	   boolean f=SelectAll.insertItem(sql);
		
		out.print("{\"statu\":" + f + ",\"listChageG\":" + f + ",\"tatolGson\":" + f + "}");
		out.close();
	}

}
