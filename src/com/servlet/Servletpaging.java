package com.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.clas.BDPushID;

import com.google.gson.Gson;


/**
 * Servlet implementation class Servletpaging
 */
@WebServlet("/Servletpaging")

public class Servletpaging extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 * 
	 */

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		 response.setContentType("application/json; charset=utf-8");
	     response.setHeader("cache-control", "no-cache");
	     Gson gson = new Gson();
	     BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream(),"utf-8"));
	     String line = null;
	     StringBuilder sb = new StringBuilder();
	     while ((line = br.readLine()) != null) {
				sb.append(line);
			}
	    BDPushID bdPushID2 = gson.fromJson(sb.toString(), BDPushID.class);
		System.out.println(bdPushID2.getA());
		System.out.println(sb);
		System.out.println(12);
		String b="13455";
		 Map<String, Object> map = new HashMap<String, Object>();
	        map.put("1", 1);
	        map.put("2", 2);
	        String str = gson.toJson(map);
	   
		PrintWriter out = response.getWriter();
		 out.write(str);
		out.close();
		
	}

	
	
//@Override
//protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//	// TODO Auto-generated method stub
//String a=req.getParameter("a");
//System.out.println(a);
//Gson gson = new Gson();
//PrintWriter out = resp.getWriter();
//out.print(a);
//out.close();
//}
	
}
