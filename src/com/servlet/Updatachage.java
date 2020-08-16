package com.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
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
 * Servlet implementation class Updatachage
 */
@WebServlet("/Updatachage")
public class Updatachage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Gson gson = new Gson();
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		//String ##Gson=gson.toJson(##); 
		//session.setAttribute("##", ##Gson);
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream(), "utf-8"));
		String line = null;
		StringBuilder sb = new StringBuilder();
		while ((line = br.readLine()) != null) {
			sb.append(line);
		}
		Equ  equ= gson.fromJson(sb.toString(), Equ.class);
		//System.out.println(bdPushID2.getA());
		  String sql="insert into DXTESTCHAGE (id,users,content,chagedate) values('"+equ.getId()+"',	'"+equ.getUsers()+"',	'"+equ.getContent()+"',	'"+equ.getChagedate()+"')";
		  boolean f=SelectAll.insertItem(sql);
		  sql="select * from (select rownum r,t.* from (SELECT * FROM dxtestchage WHERE id='"+equ.getId()+"' ORDER by  now desc) t where rownum<="+equ.getM()+" ) where r>0";
//		  sql="SELECT * FROM dxtestchage WHERE id='"+equ.getId()+"' ORDER by  now desc";
		  List<Equ> listChage=SelectAll.Warningstatu(sql);
		  sql="select COUNT(id) from dxtestchage WHERE id='"+equ.getId()+"'";
		     int tatol =SelectAll.getCount(sql);
		  request.setAttribute("listChage", listChage);
		  String listChageG=gson.toJson(listChage); 
		  session.setAttribute("listChageG", listChageG);
		  request.setAttribute("tatol", tatol);
		  String tatolGson=gson.toJson(tatol); 
		  session.setAttribute("tatolGson", tatolGson);
		  
		  out.print("{\"statu\":"+f+",\"listChageG\":" + listChageG + ",\"tatolGson\":" + tatolGson + "}");  
		out.close();
		
	}

}
