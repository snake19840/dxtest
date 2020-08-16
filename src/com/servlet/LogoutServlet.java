package com.servlet;

import java.io.IOException;
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
import com.google.gson.reflect.TypeToken;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
  
        // TODO Auto-generated constructor stub
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		//session.invalidate();
		//String loginId="n";
		//session.invalidate();
		//session.setAttribute("loginId", loginId);
		Gson gson = new Gson();
		//String #Gson=gson.toJson(#); 
		//session.setAttribute("#Gson", #Gson);
		
		String listusGson=(String) session.getAttribute("listusGson");
		List<Equ> ll=gson.fromJson(listusGson, new TypeToken<List<Equ>>() {}.getType());
		
		String sql="insert into dxtestlog (userid,username,edits) values ('"+ll.get(0).getUsername()+"','"+ll.get(0).getUserid()+"','logout succsess')";
		SelectAll.insertItem(sql);
		
		session.setAttribute("loginId", "n");
		request.getRequestDispatcher("index_login.jsp").forward(request, response);
	//	doPost(request, response);
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
