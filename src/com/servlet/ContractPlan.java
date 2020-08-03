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
import com.dao.ContractDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class ContractPlan
 */
@WebServlet("/ContractPlan")
public class ContractPlan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
  

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
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
//		doGet(request, response);
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		 
		HttpSession session=request.getSession();
		
		
		List<Equ> contractPlanList=ContractDao.contractPlanList();
		Gson gson = new Gson();
		String sql="SELECT DISTINCT CLASSFAMILY FROM CONTRACTCLASS";
		List<Equ> ListClassFamily = SelectAll.Warningstatu(sql);
		
		String ListClassFamilyGson=gson.toJson(ListClassFamily); 
		session.setAttribute("ListClassFamilyGson", ListClassFamilyGson);
		
		String contractPlanListGson=gson.toJson(contractPlanList); 
		session.setAttribute("contractPlanListGson",contractPlanListGson);
		request.getRequestDispatcher("ContractPlanList.jsp").forward(request, response);
		
	}

}
