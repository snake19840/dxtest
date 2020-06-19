package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clas.Equ;
import com.clas.SelectAll;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

/**
 * Servlet implementation class AddUer
 */
@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String userid=request.getParameter("userid");
		String username=request.getParameter("username");
		String userpwd=request.getParameter("userpwd");
		String con=request.getParameter("con");
		String conedit=request.getParameter("conedit");
		String condel=request.getParameter("condel");
		String addevent=request.getParameter("addevent");
		String levela=request.getParameter("levela");
		 Gson gson = new Gson();
		 String sql="insert into DXTESTUSER (userid,username,userpwd,aut,day,edi,del,con,conedit,condel,addevent,levela) "
		 		+ "values('"+userid+"',	'"+username+"',	'"+userpwd+"',	'2',	'7',	'1',	'1',	"
		 				+ "'"+con+"',	'"+conedit+"',	'"+condel+"',	'"+addevent+"',	'"+levela+"')";
		 
		 
			boolean updataUser=SelectAll.Update(sql);
			List<Equ> usersall =SelectAll.usersall();
			String usersallGson=gson.toJson(usersall); 
			
		PrintWriter out = response.getWriter();
		out.print("{");
		out.print("\"usersallGson\":");
		out.print(usersallGson+",");
		out.print("\"updataUser\":"+updataUser);
		out.print("}");
		
		out.close();
		//String ##Gson=gson.toJson(##); 
		//session.setAttribute("##", ##Gson);
		
	}

}
