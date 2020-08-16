package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clas.Equ;
import com.google.gson.Gson;

/**
 * Servlet implementation class AllListServlet3
 */
@WebServlet("/AllListServlet3")
public class AllListServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllListServlet3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession();
		String sdate=request.getParameter("sdate");
		String edate=request.getParameter("edate");
		String time=request.getParameter("time");
		String statu=request.getParameter("statu");
		String userid=(String)session.getAttribute("userid");
		userid=java.net.URLDecoder.decode(userid,"UTF-8");
		sdate=java.net.URLDecoder.decode(sdate,"UTF-8");
		edate=java.net.URLDecoder.decode(edate,"UTF-8");
		//statu=java.net.URLDecoder.decode(statu,"UTF-8");
	//	System.out.println("==="+sdate);
	//	System.out.println("==="+edate);
	//	System.out.println("==="+userid);
	//	System.out.println("==="+statu);
		
		Connection conn = null;
        Statement stmt = null;
        // ������Ӧ��������
        
        //PrintWriter out = response.getWriter();
        List<Equ> list = new ArrayList<Equ>(); 
        
        try {
			
        	
            conn = com.clas.JDBCconnect.getConnection();

            // ִ�� SQL ��ѯ
            stmt = conn.createStatement();
            String sql;
            //sql = "select * from dxtest order by id desc";
            sql = "select * from dxtest ";
            ResultSet rs = stmt.executeQuery(sql);
            

            // չ����������ݿ�
            while(rs.next()){
            	Equ equ=new Equ();
		        equ.setId(rs.getInt("id"));
		        equ.setSid(rs.getString("sid"));
		    	equ.setStdate(rs.getString("stdate"));
		    	equ.setSdate(rs.getString("sdate"));
		    	equ.setEdate(rs.getString("edate"));
		    	equ.setRedate(rs.getString("redate"));
		    	equ.setPname(rs.getString("pname"));
		    	equ.setUse(rs.getString("use"));
		    	equ.setOwnname(rs.getString("ownname"));
		    	equ.setProname(rs.getString("proname"));
		    	equ.setManname(rs.getString("manname"));
		    	equ.setAgename(rs.getString("agename"));
		    	equ.setMantyp(rs.getString("mantyp"));
		    	equ.setSname(rs.getString("sname"));
		    	equ.setStyp(rs.getString("styp"));
		    	equ.setPos(rs.getString("pos"));
		    	equ.setIp(rs.getString("ip"));
		    	equ.setPort(rs.getString("port"));
		    	equ.setCpu(rs.getString("cpu"));
		    	equ.setMemory(rs.getString("memory"));
		    	equ.setDisk(rs.getString("disk"));
		    	equ.setSyn(rs.getString("syn"));
		    	equ.setOracle(rs.getString("oracle"));
		    	equ.setSn(rs.getString("sn"));
		    	equ.setOth(rs.getString("oth"));
		    	equ.setSroot(rs.getString("sroot"));
		    	equ.setSpwd(rs.getString("spwd"));
		    	equ.setOroot(rs.getString("oroot"));
		    	equ.setOpwd(rs.getString("opwd"));
		    	equ.setAroot(rs.getString("aroot"));
		    	equ.setApwd(rs.getString("apwd"));
		    	equ.setTitle(rs.getString("title"));
		    	equ.setUrl(rs.getString("url"));
		    	equ.setDid(rs.getString("did"));

		        list.add(equ);
            }
            
            
            rs.close();
		      
            stmt.close();
		      
		      conn.close();
        	
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
        session.setAttribute("time", time);
        session.setAttribute("userid_AllListServlet3", userid);
	    session.setAttribute("sdate_AllListServlet3", sdate);
	    session.setAttribute("edate_AllListServlet3", edate);
	//    session.setAttribute("userid", userid);
	    session.setAttribute("statu_AllListServlet3", statu);
	    session.setAttribute("TT", "Testwork1.jsp");
	    session.setAttribute("list_AllListServlet3", list);
	       Gson gson = new Gson();
			//String ##Gson=gson.toJson(##); 
			//session.setAttribute("##", ##Gson);
		  String listGsonAll=gson.toJson(list); 
		  session.setAttribute("listGsonAll", listGsonAll); 
	    
	    request.getRequestDispatcher("Testwork1.jsp").forward(request, response);
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
