package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clas.Equ;
import com.dao.EquDao;






/**
 * Servlet implementation class FindServlet
 */
//@WebServlet("/FindServlet")
public class FindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		  response.setContentType("Text/html");
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			EquDao dao = new EquDao();
			
	    //int pages, currPage = 1;
	    int CountPage = 0;
	    int CurrPage = 1;
	    int PageSize = 5;
	    int CountRow = 0; 
	    int pages=1;
	    int pagef;
	    int pageb;

	    List<Equ>	list=null;
	    int count;
	    
	    HttpSession session = request.getSession();
	    String stdate ="%"+request.getParameter("stdate")+"%";
	    String redate ="%"+request.getParameter("redate")+"%";
	    String pname ="%"+request.getParameter("pname")+"%";
	    String use ="%"+request.getParameter("use")+"%";
	    String ownname ="%"+request.getParameter("ownname")+"%";
	    String proname ="%"+request.getParameter("proname")+"%";
	    String mantyp ="%"+request.getParameter("mantyp")+"%";
	    String sname ="%"+request.getParameter("sname")+"%";
	    String styp1 =request.getParameter("styp1");
	    if (styp1==null) {
			  styp1="";
		}
	    String styp2 =request.getParameter("styp2");
	    if (styp2==null) {
			  styp2="";
		}
	    String styp ="%"+styp1+"/"+styp2+"%";
	    String pos ="%"+request.getParameter("pos")+"%";
	    String ip ="%"+request.getParameter("ip")+"%";
	    String cpu ="%"+request.getParameter("cpu")+"%";
	    String memory ="%"+request.getParameter("memory")+"%";
	    String disk ="%"+request.getParameter("disk")+"%";
	    String syn1 =request.getParameter("syn1");
	    if (syn1==null) {
			  syn1="";
		}
	    String syn2 =request.getParameter("syn2");
	    if (syn2==null) {
			  syn2="";
		}
	    String syn ="%"+syn1+"/"+syn2+"%";
	    String sn ="%"+request.getParameter("sn")+"%";
	    String sid ="%"+request.getParameter("sid")+"%";

		
		 if (request.getParameter("page") != null) { 
		CurrPage=Integer.parseInt(request.getParameter("page"));
		stdate=(String)session.getAttribute("stdate");
		 redate=(String)session.getAttribute("redate");
		 pname=(String)session.getAttribute("pname");
		 use=(String)session.getAttribute("use");
		 ownname=(String)session.getAttribute("ownname");
		  proname=(String)session.getAttribute("proname");
		  mantyp=(String)session.getAttribute("mantyp");
		 sname=(String)session.getAttribute("sname");
		  styp1=(String)session.getAttribute("styp1");
		  styp2=(String)session.getAttribute("styp2");
		 pos=(String)session.getAttribute("pos");
		  ip=(String)session.getAttribute("ip");
		 cpu=(String)session.getAttribute("cpu");
		  memory=(String)session.getAttribute("memory");
		  disk=(String)session.getAttribute("disk");
		  syn1=(String)session.getAttribute("syn1");
		  syn2=(String)session.getAttribute("syn2");
		 sn=(String)session.getAttribute("sn");
		  sid=(String)session.getAttribute("sid");
		  
		  }else if (CurrPage==1) { session.setAttribute("stdate",stdate );
		  session.setAttribute("redate",redate ); session.setAttribute("pname",pname );
		  session.setAttribute("use",use ); session.setAttribute("ownname",ownname );
		  session.setAttribute("proname",proname );
		  session.setAttribute("mantyp",mantyp ); session.setAttribute("sname",sname );
		  session.setAttribute("styp1",styp1 ); 
		  session.setAttribute("styp2",styp2 );
		  session.setAttribute("pos",pos ); session.setAttribute("ip",ip );
		  session.setAttribute("cpu",cpu ); session.setAttribute("memory",memory );
		  session.setAttribute("disk",disk ); 
		  session.setAttribute("syn1",syn1 );
		  session.setAttribute("syn2",syn2 ); 
		  session.setAttribute("sn",sn );
		  session.setAttribute("sid",sid ); 
		 
		  
		  
		  }		 			 
			
		 
		 list = dao.find(CurrPage,stdate,redate,pname, use, ownname,proname,mantyp,sname,styp,pos,ip,cpu,memory,disk,syn,sn,sid);
		 
		count=dao.findCount(stdate, redate, pname, use, ownname, proname, mantyp, sname, styp, pos, ip, cpu, memory, disk, syn, sn, sid);
	
		 
		 
		 	if (count % Equ.PAGE_SIZE == 0) {
				     pages = count / Equ.PAGE_SIZE;
				    } else {				   
				    	pages = count / Equ.PAGE_SIZE + 1;
				    	
				    	} 
			  
			  		StringBuffer sb = new StringBuffer();
				    for (int i = 1; i <= pages; i++) {
				      if (i == CurrPage) {
				        sb.append("<" + i + ">");
				      } else {
				    	 
				        sb.append("<a href='FindServlet?page=" +  i+ "'>" + i + "</a>");
				        
				        
				      } 
				      sb.append("|");
				    } 
				    request.setAttribute("bar", sb.toString());
				    request.setAttribute("list", list);
				 request.getRequestDispatcher("chaxun.jsp").forward(request, response);
				   
			}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	  response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}	 	
}
