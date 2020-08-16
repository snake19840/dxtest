package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
import com.clas.SelectAll;
import com.dao.ReturnDao;
import com.google.gson.Gson;

/**
 * Servlet implementation class EditTestServlet3
 */
@WebServlet("/EditTestServlet3")
public class EditTestServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				response.setContentType("Text/html");
				request.setCharacterEncoding("UTF-8");
				response.setCharacterEncoding("UTF-8");
				
				String ids=request.getParameter("id");
				//System.out.println(ids);
				int id= Integer.parseInt(ids);
				String sn = String.valueOf(request.getParameter("sn"));
				String pos = String.valueOf(request.getParameter("pos"));
				String ip = String.valueOf(request.getParameter("ip"));
				String styp = String.valueOf(request.getParameter("styp"));
				String sname = String.valueOf(request.getParameter("sname"));
				
				String sid = String.valueOf(request.getParameter("sid"));
				
				String pname = String.valueOf(request.getParameter("pname"));
				String use = String.valueOf(request.getParameter("use"));
				String ownname = String.valueOf(request.getParameter("ownname"));
				String proname = String.valueOf(request.getParameter("proname"));
				String manname = String.valueOf(request.getParameter("manname"));
				String agename = String.valueOf(request.getParameter("agename"));
				String mantyp = String.valueOf(request.getParameter("mantyp"));
				String did = String.valueOf(request.getParameter("did"));
				
				String port = String.valueOf(request.getParameter("port"));
				String cpu = String.valueOf(request.getParameter("CPU"));
				String memory = String.valueOf(request.getParameter("memory"));
				String disk = String.valueOf(request.getParameter("disk"));
				String syn = String.valueOf(request.getParameter("syn"));
				String oracle = String.valueOf(request.getParameter("oracle"));
				String oth = String.valueOf(request.getParameter("oth"));
				String stdate = String.valueOf(request.getParameter("stdate"));
				SelectAll selectAll=new SelectAll();
				System.out.println(cpu);
				Gson gson = new Gson();
				HttpSession session = request.getSession();
				selectAll.updataT(id, stdate, sn, pos, ip, styp, sname, sid, pname, use, ownname, proname, manname, agename, mantyp, did, port, cpu, memory, disk, syn, oracle, oth);
				List<Equ> list = new ArrayList<Equ>(); 
				try {
					Connection  conn = com.clas.JDBCconnect.getConnection();
				      String sql = "select * from dxtest where id=?";
				      PreparedStatement ps = conn.prepareStatement(sql);
				      ps.setInt(1, id);
					 
				      ResultSet rs = ps.executeQuery();
				      while (rs.next()) {
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
				      ps.close();
				      conn.close();
				      
					 
				} catch (Exception e) {
					// TODO: handle exception
				}
				List<String> typeList=SelectAll.typeList();
				 String typeListGson=gson.toJson(typeList); 
				 String listGson=gson.toJson(list); 
				   session.setAttribute("typeListGson", typeListGson);
				
				request.setAttribute("list", list);
				session.setAttribute("listGson", listGson);
				PrintWriter out = response.getWriter();
				out.print("1");
				out.close();
		
	}
	

}
