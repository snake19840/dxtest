package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clas.JDBCOperator;
import com.clas.Users;



/**
 * Servlet implementation class LoginServlet
 */
//@WebServlet(name = "LoginServlet", urlPatterns = "/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    	
    	HttpSession session = request.getSession();
		String name = request.getParameter("username");// 获取页面内容name为username
		String password = request.getParameter("password");// 获取页面内容name为password    	  
    	
    	
    	
    	
		PrintWriter   out   =   response.getWriter();
		Users u = JDBCOperator.doLogin(name, password);// 判断输入内容
		response.setContentType("text/html;charset=UTF-8");
		  
		 
		if (u != null) {
			request.getSession().setAttribute("name", name);
			//String  bString=(String)session.getAttribute("name");
	    	//System.out.println("bString:"+bString);
					
			 response.setHeader("refresh","0.1;url=/dxtest/chaxun.jsp"); 
		} else {
			name=null;
			request.getSession().setAttribute("name", name);
			//String  bString=(String)session.getAttribute("name");
	    	//System.out.println("bString:"+bString);
			out.println("<script charset='UTF-8' language='javascript' type='text/javascript'> alert(' ERROR Incorrect username or password') ;</script>");
			
			response.setHeader("refresh", "0.1;url=/dxtest/index_login.jsp");
			
			
		}
	}

}
