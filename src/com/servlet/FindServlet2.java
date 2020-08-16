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
import com.dao.EquDao;


/**
 * Servlet implementation class FindServlet2
 */
@WebServlet("/FindServlet2")
public class FindServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		int pages, CurrPage = 1;
		 HttpSession session = request.getSession();
	     
		 String  sid=(String)session.getAttribute("sid");
		 String  stdate=(String)session.getAttribute("stdate");
		 
		 String  redate=(String)session.getAttribute("redate");
		 String  pname=(String)session.getAttribute("pname");
		 String  use=(String)session.getAttribute("use");
		 String  ownname=(String)session.getAttribute("ownname");
		 String  proname=(String)session.getAttribute("proname");
		 
		 String  mantyp=(String)session.getAttribute("mantyp");
		 String  sname=(String)session.getAttribute("sname");
		 String styp1 =(String)session.getAttribute("styp1");
		    if (styp1==null) {
				  styp1="";
			}
		    String styp2 =(String)session.getAttribute("styp2");
		    if (styp2==null) {
				  styp2="";
			}
		    String styp ="%"+styp1+"/"+styp2+"%";
		 
		 String  pos=(String)session.getAttribute("pos");
		 String  ip=(String)session.getAttribute("ip");
		 
		 String  cpu=(String)session.getAttribute("cpu");
		 String  memory=(String)session.getAttribute("memory");
		 String  disk=(String)session.getAttribute("disk");
		 
		 String syn1 =(String)session.getAttribute("syn1");
		    if (syn1==null) {
				  syn1="";
			}
		    String syn2 =(String)session.getAttribute("syn2");
		    if (syn2==null) {
				  syn2="";
			}
		    String syn ="%"+syn1+"/"+syn2+"%";
		 
		 String  sn=(String)session.getAttribute("sn");
		 
		 
		 EquDao dao = new EquDao();
		
		 List<Equ>	 list = dao.find(CurrPage,stdate,redate,pname, use, ownname,proname,mantyp,sname,styp,pos,ip,cpu,memory,disk,syn,sn,sid);
		 
		 int	count=dao.findCount(stdate, redate, pname, use, ownname, proname, mantyp, sname, styp, pos, ip, cpu, memory, disk, syn, sn, sid);
				
		   request.setAttribute("list", list);

				
		   
		    if (count % Equ.PAGE_SIZE == 0) {
		     pages = count / Equ.PAGE_SIZE;
		    	//pages = count / 9;
		    } else {
		    	pages = count / Equ.PAGE_SIZE + 1;
		
		    } 
		   
		    StringBuffer sb = new StringBuffer();
		    
		    for (int i = 1; i <= pages; i++) {
		      
		      if (i == CurrPage) {
		        
		        sb.append("<" + i + ">");
		      } else {
		        
		        sb.append("<a href='FindServlet?page=" + i + "'>" + i + "</a>");
		      } 
		      
		      sb.append("|");
		    } 
		    
		    request.setAttribute("bar", sb.toString());
		    request.setAttribute("list", list);
		    
		    request.getRequestDispatcher("chaxun.jsp").forward(request, response);
		
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
