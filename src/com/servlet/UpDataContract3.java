package com.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
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

import net.sf.json.JSONObject;




/**
 * Servlet implementation class UpDataContract
 */
@WebServlet("/UpDataContract3")
public class UpDataContract3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date(System.currentTimeMillis());
		String oppid=formatter.format(date)+System.currentTimeMillis();
		Gson gson = new Gson();
		//String ##Gson=gson.toJson(##); 
		//session.setAttribute("##", ##Gson);
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream(), "utf-8"));
		String line = null;
		StringBuilder sb = new StringBuilder();
		while ((line = br.readLine()) != null) {
			sb.append(line);
		}
		Equ equ = gson.fromJson(sb.toString(), Equ.class);
		//System.out.println(bdPushID2.getA());
		
		
		String contractid=equ.getContractid();
		String contractname=equ.getContractname();
		String oppunit=equ.getOppunit();
		String markdate=equ.getMarkdate();
		String contractnlife=equ.getContractnlife();
		String myname=equ.getMyname();
		String oppname=equ.getOppname();
		String oppu=equ.getOppu();
		String oppp=equ.getOppp();
		String oppa=equ.getOppa();
		String oppn=equ.getOppn();
		String oppe=equ.getOppe();
		String oppx=equ.getOppx();
		String oppmail=equ.getOppmail();
		String oppe2=equ.getOppe2();
		String oppad=equ.getOppad();
		String opppayb=equ.getOpppayb();
		String opppaya=equ.getOpppaya();
		String opppayz=equ.getOpppayz();
		String opppayh=equ.getOpppayh();
		String opppaye=equ.getOpppaye();
		String opppaya2=equ.getOpppaya2();
		String opppaym=equ.getOpppaym();
		String myu=equ.getMyu();
		String mya=equ.getMya();
		String myp=equ.getMyp();
		String myn=equ.getMyn();
		String mye=equ.getMye();
		String myad=equ.getMyad();
		String mye2=equ.getMye2();
		String myx=equ.getMyx();
		String myemail=equ.getMyemail();
		String mypayb=equ.getMypayb();
		String mypaya=equ.getMypaya();
		String mypayz=equ.getMypayz();
		String mypayh=equ.getMypayh();
		String mypaye=equ.getMypaye();
		String mypaya2=equ.getMypaya2();
		String mypaym=equ.getMypaym();
		String plan1=equ.getPlan1();
		String planm2=equ.getPlanm2();
		String camount=equ.getCamount();
		String statu=equ.getStatu();
		String plan2=equ.getPlan2();
		String plan3=equ.getPlan3();
		String plan4=equ.getPlan4();
		String planm1=equ.getPlanm1();
		String sgmoney=equ.getSgmoney();
		String plandate1=equ.getPlandate1();
		String plandate2=equ.getPlandate2();
		String classson=equ.getClassson();
		String myidTemp=null;
		String oppidTemp=null;
        String myid=formatter.format(date)+System.currentTimeMillis();
        String myidPush=equ.getMyid();
        String oppidPush=equ.getOppid();
        String oppWhere="WHERE oppu='"+oppu+"' "
				+ "and	oppp='"+oppp+"' and	oppa='"+oppa+"' and	oppn='"+oppn+"' and	oppe='"+oppe+"' "
				+ "and	oppx='"+oppx+"' and	oppmail='"+oppmail+"' and	oppe2='"+oppe2+"' and	oppad='"+oppad+"' ";
		String myWhere="WHERE myu='"+myu+"' and	mya='"+mya+"' and	myp='"+myp+"' and	myn='"+myn+"' and	mye='"+mye+"' "
				+ "and	myad='"+myad+"' and	mye2='"+mye2+"' and	myx='"+myx+"' and	myemail='"+myemail+"' "; 
		
		boolean flag=false;
		String sql="select COUNT(contractid) from DXTESTCONTRACT WHERE contractid='"+contractid+"'";
		int count=SelectAll.getCount(sql);
	
			sql="select COUNT(oppid) from CONTRACTOPP "+oppWhere;
			count=SelectAll.getCount(sql);
			if (count>0) {
				sql= " select oppid from CONTRACTOPP "+oppWhere;
				oppidTemp=SelectAll.getKey(sql, "oppid");
				sql="select COUNT(opppayid) from OPPPAY WHERE opppayb='"+opppayb+"' and	opppaya='"+opppaya+"' "
						+ "and	opppayz='"+opppayz+"' and	opppayh='"+opppayh+"' and	opppaye='"+opppaye+"' "
								+ "and	opppaya2='"+opppaya2+"' and	opppaym='"+opppaym+"' ";
				count=SelectAll.getCount(sql);
				if (count==0) {
					oppidTemp=null;
					sql="insert into CONTRACTOPP (	oppu,	oppp,	oppa,	oppn,	oppe,	oppx,	oppmail,	oppe2,	oppad,oppid) values(	"
							+ "'"+oppu+"',	'"+oppp+"',	'"+oppa+"',	'"+oppn+"',	'"+oppe+"',	'"+oppx+"',	'"+oppmail+"',	'"+oppe2+"',	'"+oppad+"',	'"+oppid+"')";
					flag=SelectAll.insertItem(sql);
					sql="insert into OPPPAY (opppayb,	opppaya,	opppayz,	opppayh,	opppaye,	opppaya2,	opppaym,opppayid) values('"+opppayb+"',	"
							+ "'"+opppaya+"',	'"+opppayz+"',	'"+opppayh+"',	'"+opppaye+"',	'"+opppaya2+"',	'"+opppaym+"',	'"+oppid+"')";
					flag=SelectAll.insertItem(sql);
				}
			}else {
				sql="insert into CONTRACTOPP (	oppu,	oppp,	oppa,	oppn,	oppe,	oppx,	oppmail,	oppe2,	oppad,oppid) values(	"
						+ "'"+oppu+"',	'"+oppp+"',	'"+oppa+"',	'"+oppn+"',	'"+oppe+"',	'"+oppx+"',	'"+oppmail+"',	'"+oppe2+"',	'"+oppad+"',	'"+oppid+"')";
				flag=SelectAll.insertItem(sql);
				sql="insert into OPPPAY (opppayb,	opppaya,	opppayz,	opppayh,	opppaye,	opppaya2,	opppaym,opppayid) values('"+opppayb+"',	"
						+ "'"+opppaya+"',	'"+opppayz+"',	'"+opppayh+"',	'"+opppaye+"',	'"+opppaya2+"',	'"+opppaym+"',	'"+oppid+"')";
				flag=SelectAll.insertItem(sql);
			}
			
			
			sql="select COUNT(myid) from CONTRACTMY "+myWhere;
			count=SelectAll.getCount(sql);
			if (count>0) {
				sql= " select myid from CONTRACTMY "+myWhere;
				myidTemp=SelectAll.getKey(sql, "myid");
				sql="select COUNT(mypayid) from MYPAY WHERE mypayb='"+mypayb+"' and	mypaya='"+mypaya+"' and	mypayz='"+mypayz+"' and	mypayh='"+mypayh+"' "
						+ "and	mypaye='"+mypaye+"' and	mypaya2='"+mypaya2+"' and	mypaym='"+mypaym+"' ";
				count=SelectAll.getCount(sql);
				if (count==0) {
					myidTemp=null;
					sql="insert into CONTRACTMY (myu,	mya,	myp,	myn,	mye,	myad,	mye2,	myx,	myemail,	myid) values('"+myu+"',	'"+mya+"',	"
							+ "'"+myp+"',	'"+myn+"',	'"+mye+"',	'"+myad+"',	'"+mye2+"',	'"+myx+"',	'"+myemail+"',	'"+myid+"')";
					flag=SelectAll.insertItem(sql);
					sql="insert into MYPAY (mypayb,	mypaya,	mypayz,	mypayh,	mypaye,	mypaya2,	mypaym,	mypayid) values('"+mypayb+"',	'"+mypaya+"',	"
							+ "'"+mypayz+"',	'"+mypayh+"',	'"+mypaye+"',	'"+mypaya2+"',	'"+mypaym+"',	'"+myid+"')";
					flag=SelectAll.insertItem(sql);
				}
			}else {
				sql="insert into CONTRACTMY (myu,	mya,	myp,	myn,	mye,	myad,	mye2,	myx,	myemail,	myid) values('"+myu+"',	'"+mya+"',	"
						+ "'"+myp+"',	'"+myn+"',	'"+mye+"',	'"+myad+"',	'"+mye2+"',	'"+myx+"',	'"+myemail+"',	'"+myid+"')";
				flag=SelectAll.insertItem(sql);
				sql="insert into MYPAY (mypayb,	mypaya,	mypayz,	mypayh,	mypaye,	mypaya2,	mypaym,	mypayid) values('"+mypayb+"',	'"+mypaya+"',	"
						+ "'"+mypayz+"',	'"+mypayh+"',	'"+mypaye+"',	'"+mypaya2+"',	'"+mypaym+"',	'"+myid+"')";
				flag=SelectAll.insertItem(sql);
			}
			
			if (myidTemp!=null) {
				myid=myidTemp;
			}
			if (oppidTemp!=null) {
				oppid=oppidTemp;
			}
			sql="update DXTESTCONTRACT set      contractid='"+    contractid+"',	    contractname='"+    contractname+"',	    statu='"+    statu+"',"
					+ "	    oppunit='"+    oppunit+"',	    markdate='"+    markdate+"',	    contractnlife='"+    contractnlife+"',"
					+ "	    camount='"+    camount+"',	    plan1='"+    plan1+"',	    plan2='"+    plan2+"',	    plan3='"+    plan3+"',"
					+ "	    plan4='"+    plan4+"',	    plandate2='"+    plandate2+"',	    plandate1='"+    plandate1+"',"
					+ "	    planm1='"+    planm1+"',	    planm2='"+    planm2+"',	    myname='"+    myname+"',"
					+ "	    oppname='"+    oppname+"',	    oppid='"+    oppid+"',	    myid='"+    myid+"',"
					+ "	    classson='"+    classson+"' ,sgmoney='"+sgmoney+"'  where contractid='"+contractid+"'";
		
			flag=SelectAll.Update(sql);
			List<Equ> list = gson.fromJson(plan1, new TypeToken<List<Equ>>() {}.getType());
			List<Equ> list2 = gson.fromJson(planm2, new TypeToken<List<Equ>>() {}.getType());
			for (int i = 0; i < list2.size(); i++) {
//				sql = "insert into PLANSUB (PAYNAME,PAYPOR,PAYDATE,STATU,REALPAY,PAYPLAN,CONTRACTID) values('"+list2.get(i).getPayname()+"','"+list2.get(i).getPaypor()+"',"
//						+ "'"+list.get(i).getPaydate()+"','"+list2.get(i).getStatu()+"','"+list2.get(i).getPaydate()+"','"+list2.get(i).getPaydate()+"','"+contractid+"')";
				sql = "update PLANSUB set  PAYNAME='"+list2.get(i).getPayname()+"',PAYPOR='"+list2.get(i).getPaypor()+"',STATU_SUB='"+list2.get(i).getStatu()+"',REALPAY='"+list2.get(i).getPaydate()+"',PAYPLAN='"+list2.get(i).getPaydate()+"'  where contractid='"+contractid+"' and PAYDATE='"+list.get(i).getPaydate()+"'";		
				flag=SelectAll.Update(sql);
						
			}
			
			out.print("{\"statu\":1,\"WarningGsons\":\" ÐÞ¸Ä³É¹¦ \"}");
			out.close();

}
}
