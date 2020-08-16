package com.servlet;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clas.Equ;
import com.dao.ContractDao;
import com.dao.FileDao;
import com.dao.UrlDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class ContractFileDel
 */
@WebServlet("/ContractFileDel")
public class ContractFileDel extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String contractpicture=request.getParameter("contractpicture");
		contractpicture = java.net.URLDecoder.decode(contractpicture, "UTF-8");
		String contractid=(String)session.getAttribute("contractid");
		//System.out.println(contractpicture);
		//filedelete
		String snString=null;
		String aFileName =null;
		String aFileName1 =contractpicture;
		System.out.println(aFileName1);
		aFileName = new String(aFileName1.getBytes("iso8859-1"), "gbk");
		String root=UrlDao.urlContract();
		  File file = new File(root+contractpicture); 
		//  System.out.println(root+aFileName);
		  response.setContentType("text/html;charset=GBK"); 
		  if (!file.isDirectory()) { 
			boolean a=  file.delete(); 
//			if (a) {
//				System.out.println("³É¹¦");
//			}else {
//				System.out.println("Ê§°Ü");
//			}
		      snString=FileDao.snFile(aFileName1);
		      
		      ContractDao.DelFile(contractpicture);
				Gson gson = new Gson();
				List<Equ> contractListItemFile=ContractDao.contractListItemFile(contractid);
				String contractListItemFileGson=gson.toJson(contractListItemFile); 
				session.setAttribute("contractListItemFile", contractListItemFileGson);
				request.getRequestDispatcher("TestChakanContractItem.jsp").forward(request, response);
		      
		  }else {
			
		}
		
	}

}
