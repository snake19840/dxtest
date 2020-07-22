package com.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.clas.Equ;
import com.servlet.UpDataContract;
import com.sun.org.apache.bcel.internal.generic.Select;
import com.sun.org.apache.regexp.internal.recompile;

import sun.net.www.content.text.plain;

public class ContractDao {
	static Connection conn = null;
	
	public void upPicture(String contractid,String contractpicture,String paynameString) {
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			
			String sql = "insert into dxtestcontractfile(contractpicture,contractid,plan1,plan2,plan3,plan4) values(?,?,?,'0','0','0')";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps = conn.prepareStatement(sql);
			ps.setString(inti++, contractpicture);
			ps.setString(inti++, contractid);
			ps.setString(inti++, paynameString);
			
			ps.executeUpdate();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void delete(String contractid) {
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql = "delete from dxtestcontract where contractid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps = conn.prepareStatement(sql);
			ps.setString(inti++, contractid);
			ps.executeUpdate();
			ps.close();
			conn.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void edit2(String contractid, String oppu,String oppp,String oppa,String oppn,String oppe,String oppx,String oppmail,String oppid,String oppe2,String oppad,String opppayb,String opppaya,String opppayz,String opppayh,String opppaye,String opppaya2,String opppaym,String opppayid,String myu,String mya,String myp,String myn,String mye,String myad,String mye2,String myx,String myemail,String myid,String mypayb,String mypaya,String mypayz,String mypayh,String mypaye,String mypaya2,String mypaym,String mypayid,String contractname,String oppunit,String markdate,String contractnlife ,String camount,String plan1,String myname,String oppname,String planm2) {
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql1 = "update dxtestcontract set  CONTRACTNAME=?,OPPUNIT=?,MARKDATE=?,CONTRACTNLIFE=?,CAMOUNT=?,PLAN1=?,MYNAME=?,OPPNAME=?,PLANM2=?  where contractid=?";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setString(inti++, contractname);
			ps.setString(inti++, oppunit);
			ps.setString(inti++, markdate);
			ps.setString(inti++,contractnlife );
			ps.setString(inti++,camount);
			ps.setString(inti++,plan1);
			ps.setString(inti++,myname);
			ps.setString(inti++,oppname);
			ps.setString(inti++,contractid);
			ps.setString(inti++,planm2);
			ps.executeUpdate();
			ps.close();
			 inti = 1;
			 sql1 = "update contractopp set  oppu=?,oppp=?,oppa=?,oppn=?,oppe=?,oppx=?,oppmail=?,oppe2=?,oppad=?   where oppid=?";
			 ps = conn.prepareStatement(sql1);
			 ps.setString(inti++, oppu);
			 ps.setString(inti++, oppp);
			 ps.setString(inti++, oppa);
			 ps.setString(inti++, oppn);
			 ps.setString(inti++, oppe);
			 ps.setString(inti++, oppx);
			 ps.setString(inti++, oppmail);
			 ps.setString(inti++, oppe2);
			 ps.setString(inti++, oppad);
			 ps.setString(inti++, oppid);
			ps.executeUpdate();
			ps.close();
			inti = 1;
			 sql1 = "update opppay set  opppayb=?,opppaya=?,opppayz=?,opppayh=?,opppaye=?,opppaya2=?,opppaym=?    where opppayid=?";
			 ps = conn.prepareStatement(sql1);
			 ps.setString(inti++, opppayb);
			 ps.setString(inti++, opppaya);
			 ps.setString(inti++, opppayz);
			 ps.setString(inti++, opppayh);
			 ps.setString(inti++, opppaye);
			 ps.setString(inti++, opppaya2);
			 ps.setString(inti++, opppaym);
			 ps.setString(inti++, opppayid);
			ps.executeUpdate();
			ps.close();
			inti = 1;
			 sql1 = "update contractmy set  myu=?,mya=?,myp=?,myn=?,mye=?,myad=?,mye2=?,myx=?,myemail=?   where myid=?";
			 ps = conn.prepareStatement(sql1);
			 ps.setString(inti++, myu);
			 ps.setString(inti++, mya);
			 ps.setString(inti++, myp);
			 ps.setString(inti++, myn);
			 ps.setString(inti++, mye);
			 ps.setString(inti++, myad);
			 ps.setString(inti++, mye2);
			 ps.setString(inti++, myx);
			 ps.setString(inti++, myemail);
			 ps.setString(inti++, myid);
			ps.executeUpdate();
			ps.close();
			inti = 1;
			 sql1 = "update mypay set  mypayb=?,mypaya=?,mypayz=?,mypayh=?,mypaye=?,mypaya2=?,mypaym=?   where mypayid=?";
			 ps = conn.prepareStatement(sql1);
			 ps.setString(inti++, mypayb);
			 ps.setString(inti++, mypaya);
			 ps.setString(inti++, mypayz);
			 ps.setString(inti++, mypayh);
			 ps.setString(inti++, mypaye);
			 ps.setString(inti++, mypaya2);
			 ps.setString(inti++, mypaym);
			 ps.setString(inti++, mypayid);
			ps.executeUpdate();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	public void edit(String contractid,String contractname,
			String oppunit,String markdate,String ctype,String contractnlife,
			String myconn,String myconnt,String oppconn,String oppconnt,String camount,
			String tax,String myname,String oppname) {
		try {
			int inti=1;
			conn=com.clas.JDBCconnect.getConnection();
			
			String sql="update dxtestcontract set  contractname=?,oppunit=?,markdate=?,ctype=?,contractnlife=?,myconn=?,"
					+ "myconnt=?,oppconn=?,oppconnt=?,camount=?,tax=?,myname=?,oppname=?  "
					+ "where contractid=?";
//			String sql="update dxtestcontract set  camount=?  "
//					+ "where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			System.out.println("sl "+contractid);
			ps=conn.prepareStatement(sql);
			ps.setString(inti++, contractname);
			ps.setString(inti++,oppunit);
			ps.setString(inti++,markdate);
			ps.setString(inti++,ctype);
			ps.setString(inti++,contractnlife);
			ps.setString(inti++,myconn);
			ps.setString(inti++,myconnt);
			ps.setString(inti++,oppconn);
			ps.setString(inti++,oppconnt);
			ps.setString(inti++,camount);
			ps.setString(inti++,tax);
			ps.setString(inti++,myname);
			ps.setString(inti++,oppname);
			ps.setString(inti++, contractid);
			ps.executeUpdate();
//			System.out.println("ppp"+ps.executeUpdate());
			
			ps.close();
			conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public String layoutPlanm2(String contractid) {
		String a=null;
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql="select planm2 from dxtestcontract where contractid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(inti++, contractid);
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				a=rs.getString("planm2");
			}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return a;
	}
	
	public static List<Equ> classonitem(String contractid) {
		List<Equ> list=new ArrayList<>();
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sqlf="select plan4 from dxtestcontract where contractid=?";
			String sql = "select classson from CONTRACTCLASS where classfamily=?";
			String classfamily=null;
			//String sql = "insert into table (#,#) values(?,?)";
			//String sql = "delete from ## where ##=?";
			//String sql="select * from ## where ##=?";
			PreparedStatement ps = conn.prepareStatement(sqlf);
			ps.setString(inti++, contractid);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				classfamily=rs.getString(1);
				}
			inti=1;
			PreparedStatement ps2 = conn.prepareStatement(sql);
			ps2.setString(inti++, classfamily);
			ResultSet rs2=ps2.executeQuery();
			while (rs2.next()) {
				Equ equ=new Equ();
				equ.setClassson(rs2.getString("classson"));
				list.add(equ);
				}
			ps.close();
			ps2.close();
			rs2.close();
			rs.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
public static List<Equ> paynameitem(String contractid) {
	List<Equ> list=new ArrayList<>();
	try {
		int inti = 1;
		conn = com.clas.JDBCconnect.getConnection();
		String sqlf="select plan4 from dxtestcontract where contractid=?";
		String sql = "select payname from CONTRACTpay where classfamily=?";
		String classfamily=null;
		//String sql = "insert into table (#,#) values(?,?)";
		//String sql = "delete from ## where ##=?";
		//String sql="select * from ## where ##=?";
		PreparedStatement ps = conn.prepareStatement(sqlf);
		ps.setString(inti++, contractid);
		ResultSet rs=ps.executeQuery();
		while (rs.next()) {
			classfamily=rs.getString(1);
			}
		inti=1;
		PreparedStatement ps2 = conn.prepareStatement(sql);
		ps2.setString(inti++, classfamily);
		ResultSet rs2=ps2.executeQuery();
		while (rs2.next()) {
			Equ equ=new Equ();
			equ.setPayname(rs2.getString("payname"));
			list.add(equ);
			}
		ps.close();
		ps2.close();
		rs.close();
		rs2.close();
		conn.close();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	return list;
	}
	
	public static List<Equ> contractListItemFile(String contractid) {
		List<Equ> contractListItemFile=new ArrayList<>();
		
		try {
			int inti=1;
			conn=com.clas.JDBCconnect.getConnection();
			String sql="select contractpicture,contractid,contractnowdate,plan1 from dxtestcontractfile where contractid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(inti++, contractid);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setContractpicture(rs.getString("contractpicture"));
				equ.setContractid(rs.getString("contractid"));
				equ.setContractnowdate(rs.getString("contractnowdate"));
				equ.setPlan1(rs.getString("plan1"));
				contractListItemFile.add(equ);
			}
	            ps.close();
	            rs.close();
	            conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return contractListItemFile;
	}
	
	
	public static List<Equ> contractListItem(String contractid) {
		List<Equ> contractListItem=new ArrayList<>();
		
		try {
			int inti=1;
			conn=com.clas.JDBCconnect.getConnection();
			String sql="SELECT * FROM DXTESTCONTRACT a,CONTRACTopp b1,opppay b2,CONTRACTmy c1,mypay c2 WHERE a.OPPID= b1.oppid AND a.oppid =b2.opppayid and a.myid=c1.myid and a.myid=c2.mypayid and CONTRACTid='"+contractid+"'";
			PreparedStatement ps=conn.prepareStatement(sql);
		//	ps.setString(1, contractid);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Equ equ=new Equ();
				System.out.println(rs.getString("oppa"));
				equ.setContractpicture(rs.getString("contractpicture"));
				equ.setContractid(rs.getString("contractid"));
				equ.setContractsdate(rs.getString("contractsdate"));
				equ.setContractedate(rs.getString("contractedate"));
				equ.setContractname(rs.getString("contractname"));
				equ.setContractnowdate(rs.getString("contractnowdate"));
				equ.setStatu(rs.getString("statu"));
				equ.setOppunit(rs.getString("oppunit"));
				equ.setMarkdate(rs.getString("markdate"));
				equ.setContractnlife(rs.getString("contractnlife"));
				equ.setCamount(rs.getString("camount"));
				equ.setMyconn(rs.getString("myconn"));
				equ.setOppconn(rs.getString("oppconn"));
				equ.setMyconnt(rs.getString("myconnt"));
				equ.setOppconnt(rs.getString("oppconnt"));
				equ.setCtype(rs.getString("ctype"));
				equ.setTax(rs.getString("tax"));
				equ.setPlan1(rs.getString("plan1"));
				equ.setPlandate1(rs.getString("plandate1"));
				equ.setPlan2(rs.getString("plan2"));
				equ.setPlandate2(rs.getString("plandate2"));
				equ.setPlan3(rs.getString("plan3"));
				equ.setPlandate3(rs.getString("plandate3"));
				equ.setPlan4(rs.getString("plan4"));
				equ.setPlandate4(rs.getString("plandate4"));
				equ.setPlanm1(rs.getString("planm1"));
				equ.setPlanm4(rs.getString("planm4"));
				equ.setPlanm3(rs.getString("planm3"));
				equ.setPlanm2(rs.getString("planm2"));
				equ.setSgmoney(rs.getString("sgmoney"));
				equ.setInitmoney(rs.getString("initmoney"));
				equ.setFinmoney(rs.getString("finmoney"));
				equ.setWarmoney(rs.getString("warmoney"));
				equ.setMyname(rs.getString("myname"));
				equ.setOppname(rs.getString("oppname"));
				equ.setOppu(rs.getString("oppu"));
				equ.setOppp(rs.getString("oppp"));
				equ.setOppa(rs.getString("oppa"));
				equ.setOppn(rs.getString("oppn"));
				equ.setOppe(rs.getString("oppe"));
				equ.setOppx(rs.getString("oppx"));
				equ.setOppmail(rs.getString("oppmail"));
				equ.setOppid(rs.getString("oppid"));
				equ.setOppe2(rs.getString("oppe2"));
				equ.setOppad(rs.getString("oppad"));
				equ.setOpppayb(rs.getString("opppayb"));
				equ.setOpppaya(rs.getString("opppaya"));
				equ.setOpppayz(rs.getString("opppayz"));
				equ.setOpppayh(rs.getString("opppayh"));
				equ.setOpppaye(rs.getString("opppaye"));
				equ.setOpppaya2(rs.getString("opppaya2"));
				equ.setOpppaym(rs.getString("opppaym"));
				equ.setOpppayid(rs.getString("opppayid"));
				equ.setMyu(rs.getString("myu"));
				equ.setMya(rs.getString("mya"));
				equ.setMyp(rs.getString("myp"));
				equ.setMyn(rs.getString("myn"));
				equ.setMye(rs.getString("mye"));
				equ.setMyad(rs.getString("myad"));
				equ.setMye2(rs.getString("mye2"));
				equ.setMyx(rs.getString("myx"));
				equ.setMyemail(rs.getString("myemail"));
				equ.setMyid(rs.getString("myid"));
				equ.setMypayb(rs.getString("mypayb"));
				equ.setMypaya(rs.getString("mypaya"));
				equ.setMypayz(rs.getString("mypayz"));
				equ.setMypayh(rs.getString("mypayh"));
				equ.setMypaye(rs.getString("mypaye"));
				equ.setMypaya2(rs.getString("mypaya2"));
				equ.setMypaym(rs.getString("mypaym"));
				equ.setMypayid(rs.getString("mypayid"));
				equ.setClassson(rs.getString("classson"));
				contractListItem.add(equ);

			}
			 conn.close();
	            ps.close();
	            rs.close();
	            sql=null;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return contractListItem;
	}
	
	public static void DelFile(String contractpicture) {
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			//String sql = "update # set  #=?  where ##=?";
			String sql = "delete from dxtestcontractfile where contractpicture=?";
			//String sql="select * from ## where ##=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			System.out.println("contractpicture="+contractpicture);
			ps = conn.prepareStatement(sql);
			ps.setString(inti++, contractpicture);
			ps.executeUpdate();
			//ResultSet rs=ps.executeQuery();
			//while (rs.next()) {
			//	Equ equ=new Equ();
			//	equ.setName(rs.getString("name"));
			//	list.add(equ);}
			//rs.close
			ps.close();
			conn.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public static List<Equ> contractSearch(String sdate,String edate,String message) {
		List<Equ> contractSearch=new ArrayList<Equ>();
		try {
			int inti = 1;
			message="%"+message+"%";
			conn = com.clas.JDBCconnect.getConnection();
			String sql1="select * from dxtestcontractfile where contractnowdate>=? and contractpicture like ?";
			String sql2="select * from dxtestcontractfile where contractnowdate>=? and contractnowdate<=? contractpicture like ?";
			String sql3="select * from dxtestcontractfile where contractnowdate<=? and contractpicture like ?";
			String sql4="select * from dxtestcontractfile where  contractpicture like ?";
			PreparedStatement ps=null;
			if (edate==""&&sdate!="") {
				sdate=sdate+" 00:00:00";
				 ps = conn.prepareStatement(sql1);
				ps = conn.prepareStatement(sql1);
				ps.setString(inti++, sdate);
				ps.setString(inti++, message);
			}else if (edate!=""&&sdate!="") {
				sdate=sdate+" 00:00:00";
				edate=edate+" 00:00:00";
				 ps = conn.prepareStatement(sql2);
				ps = conn.prepareStatement(sql2);
				ps.setString(inti++, sdate);
				ps.setString(inti++, edate);
				ps.setString(inti++, message);
			}else if (edate!=""&&sdate=="") {
				edate=edate+" 00:00:00";
				System.out.println(edate);
				 ps = conn.prepareStatement(sql3);
				ps = conn.prepareStatement(sql3);
				
				ps.setString(inti++, edate);
				ps.setString(inti++, message);
			}else {
				 ps = conn.prepareStatement(sql4);
				ps = conn.prepareStatement(sql4);
				
				ps.setString(inti++, message);
			}
			//PreparedStatement ps = conn.prepareStatement(sql);
			//ps = conn.prepareStatement(sql);
			//ps.setString(inti++, ##);
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setContractpicture(rs.getString("contractpicture"));
				equ.setContractid(rs.getString("contractid"));
				equ.setContractnowdate(rs.getString("contractnowdate"));
				equ.setPlan1(rs.getString("plan1"));
				equ.setPlan2(rs.getString("plan2"));
				equ.setPlan3(rs.getString("plan3"));
				equ.setPlan4(rs.getString("plan4"));
				contractSearch.add(equ);}
			//rs.close
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return contractSearch;
	}
	public static List<Equ> contractPlanList() {
		List<Equ> contractPlanList=new ArrayList<Equ>();
		try {
			int inti=1;
			conn=com.clas.JDBCconnect.getConnection();
			String sql="select contractid,	contractname,	markdate,	contractnlife,	oppunit,	planm1,	plandate2,	plandate1,sgmoney from  dxtestcontract where (statu!='end'or statu is null) order by plandate2" ;
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setContractid(rs.getString("contractid"));
				equ.setContractname(rs.getString("contractname"));
				equ.setMarkdate(rs.getString("markdate"));
				equ.setContractnlife(rs.getString("contractnlife"));
				equ.setOppunit(rs.getString("oppunit"));
				equ.setPlanm1(rs.getString("planm1"));
				equ.setPlandate2(rs.getString("plandate2"));
				equ.setPlandate1(rs.getString("plandate1"));
				equ.setSgmoney(rs.getString("sgmoney"));
//				equ.setPlan3(rs.getString("plan3"));
//				equ.setPlan4(rs.getString("plan4"));
				
				contractPlanList.add(equ);
				
			}
			 conn.close();
	            st.close();
	            rs.close();
	            
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return contractPlanList;
	}
	public static List<Equ> contractPlanItem(String contractid) {
		List<Equ> contractPlanItem=new ArrayList<Equ>();
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			//String sql = "update # set  #=?  where ##=?";
			//String sql = "delete from ## where ##=?";
			String sql="select * from dxtestcontract where contractid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps = conn.prepareStatement(sql);
			ps.setString(inti++, contractid);
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setContractpicture(rs.getString("contractpicture"));
				equ.setContractid(rs.getString("contractid"));
				equ.setContractsdate(rs.getString("contractsdate"));
				equ.setContractedate(rs.getString("contractedate"));
				equ.setContractname(rs.getString("contractname"));
				equ.setContractnowdate(rs.getString("contractnowdate"));
				equ.setStatu(rs.getString("statu"));
				equ.setOppunit(rs.getString("oppunit"));
				equ.setMarkdate(rs.getString("markdate"));
				equ.setContractnlife(rs.getString("contractnlife"));
				equ.setCamount(rs.getString("camount"));
				equ.setMyconn(rs.getString("myconn"));
				equ.setOppconn(rs.getString("oppconn"));
				equ.setMyconnt(rs.getString("myconnt"));
				equ.setOppconnt(rs.getString("oppconnt"));
				equ.setCtype(rs.getString("ctype"));
				equ.setTax(rs.getString("tax"));
				equ.setPlan1(rs.getString("plan1"));
				equ.setPlandate1(rs.getString("plandate1"));
				equ.setPlan2(rs.getString("plan2"));
				equ.setPlandate2(rs.getString("plandate2"));
				equ.setPlan3(rs.getString("plan3"));
				equ.setPlandate3(rs.getString("plandate3"));
				equ.setPlan4(rs.getString("plan4"));
				equ.setPlandate4(rs.getString("plandate4"));
				equ.setPlanm1(rs.getString("planm1"));
				equ.setPlanm4(rs.getString("planm4"));
				equ.setPlanm3(rs.getString("planm3"));
				equ.setPlanm2(rs.getString("planm2"));
				equ.setSgmoney(rs.getString("sgmoney"));
				equ.setInitmoney(rs.getString("initmoney"));
				equ.setFinmoney(rs.getString("finmoney"));
				equ.setWarmoney(rs.getString("warmoney"));
				equ.setMyname(rs.getString("myname"));
				equ.setOppname(rs.getString("oppname"));
				contractPlanItem.add(equ);}
			//rs.close
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return contractPlanItem;
	}
	
	public static int Payall(String classfamily,String payname) {
		int a=0;
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql = "insert into CONTRACTPAY (classfamily,payname) values(?,?)";
			String sqlcheck = "select count(*) from CONTRACTPAY where classfamily=? and payname=?";
			PreparedStatement ps = null;
			PreparedStatement ps2 = null;
			int count=0;
			ps = conn.prepareStatement(sqlcheck);
			ps.setString(inti++, classfamily);
			ps.setString(inti++, payname);
			ResultSet rs=ps.executeQuery();
			if (rs.next()) {
				count=rs.getInt(1);
			}
			if (count==0) {
				inti=1;
				ps2=conn.prepareStatement(sql);
				ps2.setString(inti++, classfamily);
				ps2.setString(inti++, payname);
				ps2.executeUpdate();
				ps2.close();
				a=1;
			}else {
				a=2;
			}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return a;
	}
	
	public static List<Equ> list1() {
		List<Equ> list=new ArrayList<Equ>();
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql="select oppid,oppu,oppp,oppn,opppaym from contractopp a join opppay b on a.oppid=b.opppayid";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps = conn.prepareStatement(sql);
			//ps.setString(inti++, ##);
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setOppid(rs.getString("oppid"));
				equ.setOppu(rs.getString("oppu"));
				equ.setOppp(rs.getString("oppp"));
				equ.setOppn(rs.getString("oppn"));
				equ.setOpppaym(rs.getString("opppaym"));
				list.add(equ);}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	public static List<Equ> list2() {
		List<Equ> list=new ArrayList<Equ>();
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql="select myid,myu,myp,myn,mypaym from contractmy a join mypay b on a.myid=b.mypayid";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps = conn.prepareStatement(sql);
			//ps.setString(inti++, ##);
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setMyid(rs.getString("myid"));
				equ.setMyu(rs.getString("myu"));
				equ.setMyp(rs.getString("myp"));
				equ.setMyn(rs.getString("myn"));
				equ.setMypaym(rs.getString("mypaym"));
				list.add(equ);}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	public static List<Equ> list3() {
		List<Equ> list=new ArrayList<Equ>();
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql="select contractid,contractname,oppp,oppn,CAMOUNT from DXTESTCONTRACT a join CONTRACTopp b on a.oppid=b.oppid where plan2='否'";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps = conn.prepareStatement(sql);
			//ps.setString(inti++, ##);
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setContractid(rs.getString("contractid"));
				equ.setContractname(rs.getString("contractname"));
				equ.setOppp(rs.getString("oppp"));
				equ.setOppn(rs.getString("oppn"));
				equ.setCamount(rs.getString("camount"));
				list.add(equ);}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	
	public static List<Equ> opplayout(String oppid) {
		List<Equ> list=new ArrayList<Equ>();
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql = "select * from contractopp a join opppay b on a.oppid=b.opppayid where oppid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(inti++, oppid);
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setOppu(rs.getString("oppu"));
				equ.setOppp(rs.getString("oppp"));
				equ.setOppa(rs.getString("oppa"));
				equ.setOppn(rs.getString("oppn"));
				equ.setOppe(rs.getString("oppe"));
				equ.setOppx(rs.getString("oppx"));
				equ.setOppmail(rs.getString("oppmail"));
				equ.setOppid(rs.getString("oppid"));
				equ.setOppe2(rs.getString("oppe2"));
				equ.setOppad(rs.getString("oppad"));
				equ.setOpppayb(rs.getString("opppayb"));
				equ.setOpppaya(rs.getString("opppaya"));
				equ.setOpppayz(rs.getString("opppayz"));
				equ.setOpppayh(rs.getString("opppayh"));
				equ.setOpppaye(rs.getString("opppaye"));
				equ.setOpppaya2(rs.getString("opppaya2"));
				equ.setOpppaym(rs.getString("opppaym"));
				equ.setOpppayid(rs.getString("opppayid"));
				list.add(equ);}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	public static List<Equ> mylayout(String myid) {
		List<Equ> list=new ArrayList<Equ>();
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql = "select * from contractmy a join mypay b on a.myid=b.mypayid where myid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(inti++, myid);
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setMyu(rs.getString("myu"));
				equ.setMyp(rs.getString("myp"));
				equ.setMya(rs.getString("mya"));
				equ.setMyn(rs.getString("myn"));
				equ.setMye(rs.getString("mye"));
				equ.setMyx(rs.getString("myx"));
				equ.setMyemail(rs.getString("myemail"));
				equ.setMyid(rs.getString("myid"));
				equ.setMye2(rs.getString("mye2"));
				equ.setMyad(rs.getString("myad"));
				equ.setMypayb(rs.getString("mypayb"));
				equ.setMypaya(rs.getString("mypaya"));
				equ.setMypayz(rs.getString("mypayz"));
				equ.setMypayh(rs.getString("mypayh"));
				equ.setMypaye(rs.getString("mypaye"));
				equ.setMypaya2(rs.getString("mypaya2"));
				equ.setMypaym(rs.getString("mypaym"));
				equ.setMypayid(rs.getString("mypayid"));
				list.add(equ);}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	public void upDataPlanDate1(String paydate,String contractid) {
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql = "update dxtestCONTRACT set  plandate1=?,plandate2=?  where contractid=?";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(inti++, paydate);
			ps.setString(inti++, paydate);
			ps.setString(inti++, contractid);
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery();
			//while (rs.next()) {
			//	Equ equ=new Equ();
			//	equ.setName(rs.getString("name"));
			//	list.add(equ);}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	public static int Classall(String classfamily,String classson) {
		int a=0;
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql = "insert into CONTRACTCLASS (classfamily,classson) values(?,?)";
			String sqlcheck = "select * from CONTRACTCLASS where classfamily=? and rownum=1 order by id";
			String sqlup="update CONTRACTCLASS set classson=? where classfamily=?";
			String sqlchecks="select count(*) from CONTRACTCLASS where classfamily=? and classson=?";
			PreparedStatement ps = null;
			PreparedStatement ps2 = null;
			PreparedStatement ps3 = null;
			PreparedStatement ps4 = null;
			ResultSet rs4=null;
			String f=null;
			String s=null;
			int count=0;
			ps3 = conn.prepareStatement(sqlcheck);
			ps3.setString(inti++,classfamily);
			ResultSet rs3=ps3.executeQuery();
			
			if (rs3.next()) {
					f=rs3.getString("classfamily");
					s=rs3.getString("classson");
					
					if (classson==null||classson=="") {
						a=2;
					}else {
					
				if (s==null||s=="") {
					
					
					inti=1;
					ps2 = conn.prepareStatement(sqlup);
					ps2.setString(inti++,classson);
					ps2.setString(inti++, classfamily);
					ps2.executeUpdate();
					ps2.close();
					a=1;
				}else {
						
							inti=1;
							ps4 = conn.prepareStatement(sqlchecks);
						//	System.out.println(classson);
						//	System.out.println(classfamily);
							ps4.setString(inti++,classfamily);
							ps4.setString(inti++, classson);
							rs4=ps4.executeQuery();
							while (rs4.next()) {
								count=rs4.getInt(1);
							}
							
						//	System.out.println("count="+count);
							if (count==0) {
								inti=1;
								ps = conn.prepareStatement(sql);
								ps.setString(inti++,classfamily);
								ps.setString(inti++, classson);
								ps.executeUpdate();
								ps.close();
								ps4.close();
								rs4.close();
								ps.close();
								a=3;
							}else {
								ps4.close();
								rs4.close();
								a=5;
							}
						}
					
							
				}
			
			
			}else {
				inti=1;
				ps = conn.prepareStatement(sql);
				ps.setString(inti++,classfamily);
				ps.setString(inti++, classson);
				ps.executeUpdate();
				ps.close();
				a=4;
			}
			
			
			ps3.close();
			rs3.close();
			
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return a;
	}
	
	
	
	public static boolean Myall(String mya,String myad,String mye,String mye2,String myid,String myemail,String myn,String myp,String mypaya ,String mypaya2,String mypayb,String mypaye,String mypayh,String mypayid,String mypaym,String mypayz,String myu,String myx) {
		boolean a=false;
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql = "insert into CONTRACTMY (myu,myp,mya,myn,mye,myx,myemail,myid,mye2,myad) values(?,?,?,?,?,?,?,?,?,?)";
			String sql2 = "insert into MYPAY (mypayb,mypaya,mypayz,mypayh,mypaye,mypaya2,mypaym,mypayid) values(?,?,?,?,?,?,?,?)";
			String sqlcheck = "select count(*)  from (select * from contractmy a join mypay b on a.myid=b.mypayid) where mypaym=? and myp=?  and myn=? ";
			PreparedStatement ps = null;
			PreparedStatement ps2 = null;
			PreparedStatement ps3 = null;
			int count=0;
			ps3 = conn.prepareStatement(sqlcheck);
			ps3.setString(inti++,mypaym);
			ps3.setString(inti++, myp);
			ps3.setString(inti++, myn);
			ResultSet rs3=ps3.executeQuery();
			while (rs3.next()) {
				count=rs3.getInt(1);
			}
			
			if (count==0) {
				inti=1;
				ps = conn.prepareStatement(sql);
				ps.setString(inti++,myu);
				ps.setString(inti++, myp);
				ps.setString(inti++, mya);
				ps.setString(inti++, myn);
				ps.setString(inti++, mye);
				ps.setString(inti++, myx);
				ps.setString(inti++, myemail);
				ps.setString(inti++, myid);
				ps.setString(inti++, mye2);
				ps.setString(inti++, myad);
				ps.executeUpdate();
				ps.close();
				
				inti = 1;
				
				ps2 = conn.prepareStatement(sql2);
				ps2.setString(inti++,mypayb);
				ps2.setString(inti++, mypaya);
				ps2.setString(inti++, mypayz);
				ps2.setString(inti++, mypayh);
				ps2.setString(inti++, mypaye);
				ps2.setString(inti++, mypaya2);
				ps2.setString(inti++, mypaym);
				ps2.setString(inti++, mypayid);
				ps2.executeUpdate();
				ps2.close();
				a=true;
			}else {
				a=false;
			}
			ps3.close();
			rs3.close();

			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return a;
	}
	public static int oppmycheck(String opppaym,String opppayid,String mypaym,String mypayid,String contractid,int statu) {
		int a=0;
		
		try {int inti = 1;
		conn = com.clas.JDBCconnect.getConnection();
		String oppcheck = "select count(*) from OPPPAY where opppaym=? or opppayid=?";
		String mycheck = "select count(*) from MYPAY where mypaym=? or mypayid=?";
		String contractcheck = "select count(*) from dxtestcontract where contractid=? ";
		PreparedStatement ps1=null,ps2=null,ps3=null;
		ResultSet rs1=null,rs2=null,rs3=null;
		int count1=0,count2=0,count3=0;
		if (statu==1) {
			inti=1;count1=0;count2=0;
			 	ps3 = conn.prepareStatement(contractcheck);
				ps3.setString(inti++,contractid);
				 rs3=ps3.executeQuery();
				while (rs3.next()) {
					count3=rs3.getInt(1);
				}
				ps3.close();
				rs3.close();
		}else if (statu==2) {
			inti=1;count2=0;
			ps1 = conn.prepareStatement(oppcheck);
			ps1.setString(inti++,opppaym);
			 ps1.setString(inti++, opppayid);
			 rs1=ps1.executeQuery();
			while (rs1.next()) {
				count1=rs1.getInt(1);
			}
			inti=1;
			ps3 = conn.prepareStatement(contractcheck);
			ps3.setString(inti++,contractid);
			 rs3=ps3.executeQuery();
			while (rs3.next()) {
				count3=rs3.getInt(1);
			}
			ps1.close();
			rs1.close();
			ps3.close();
			rs3.close();
		}else if (statu==3) {
			inti=1;count1=0;
		 	ps2 = conn.prepareStatement(mycheck);
			ps2.setString(inti++,mypaym);
			 ps2.setString(inti++, mypayid);
			 rs2=ps2.executeQuery();
			while (rs2.next()) {
				count2=rs2.getInt(1);
			}
			inti=1;
			ps3 = conn.prepareStatement(contractcheck);
			ps3.setString(inti++,contractid);
			 rs3=ps3.executeQuery();
			while (rs3.next()) {
				count3=rs3.getInt(1);
			}
			ps2.close();
			rs2.close();
			ps3.close();
			rs3.close();
		}else {
			inti=1;
			ps1 = conn.prepareStatement(oppcheck);
			ps1.setString(inti++,opppaym);
			 ps1.setString(inti++, opppayid);
			 rs1=ps1.executeQuery();
			while (rs1.next()) {
				count1=rs1.getInt(1);
			}
			inti=1;
		 	ps2 = conn.prepareStatement(mycheck);
			ps2.setString(inti++,mypaym);
			 ps2.setString(inti++, mypayid);
			 rs2=ps2.executeQuery();
			while (rs2.next()) {
				count2=rs2.getInt(1);
			}
			inti=1;
			ps3 = conn.prepareStatement(contractcheck);
			ps3.setString(inti++,contractid);
			 rs3=ps3.executeQuery();
			while (rs3.next()) {
				count3=rs3.getInt(1);
			}
			ps1.close();
			rs1.close();
			ps2.close();
			rs2.close();
			ps3.close();
			rs3.close();
		}
		//System.out.println("count1="+count1);
			if (count1!=0) {
				a=1;
			}else if (count2!=0) {
				a=2;
			}else if (count3!=0) {
				a=4;
			}else {
				a=3;
			}
			
		
		conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return a;
	}
	
	
	public static boolean Oppall(String oppa,String oppad,String oppe,String oppe2,String oppid,String oppmail,String oppn,String oppp,String oppu,String oppx,String opppaya ,String opppaya2,String opppayb,String opppaye ,String opppayh ,String opppayid,String opppaym,String opppayz) {
		boolean a=false;
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			//String sql = "update # set  #=?  where ##=?";
			String sql = "insert into CONTRACTOPP (oppu,oppp,oppa,oppn,oppe,oppx,oppmail,oppid,oppe2,oppad) values(?,?,?,?,?,?,?,?,?,?)";
			String sql2 = "insert into OPPPAY (opppayb,opppaya,opppayz,opppayh,opppaye,opppaya2,opppaym,opppayid) values(?,?,?,?,?,?,?,?)";
			String sqlcheck = "select count(*) from OPPPAY where opppaym=? or opppayid=?";
			//String sql = "delete from ## where ##=?";
			//String sql="select * from ## where ##=?";
			PreparedStatement ps = null;
			PreparedStatement ps2 = null;
			PreparedStatement ps3 = null;
			int count=0;
			ps3 = conn.prepareStatement(sqlcheck);
			ps3.setString(inti++,opppaym);
			ps3.setString(inti++, opppayid);
			ResultSet rs3=ps3.executeQuery();
			while (rs3.next()) {
				count=rs3.getInt(1);
			}
			System.out.println(count);
			if (count==0) {
				inti=1;
				ps = conn.prepareStatement(sql);
				ps.setString(inti++,oppu);
				ps.setString(inti++, oppp);
				ps.setString(inti++, oppa);
				ps.setString(inti++, oppn);
				ps.setString(inti++, oppe);
				ps.setString(inti++, oppx);
				ps.setString(inti++, oppmail);
				ps.setString(inti++, oppid);
				ps.setString(inti++, oppe2);
				ps.setString(inti++, oppad);
				ps.executeUpdate();
				ps.close();
				
				inti = 1;
				
				ps2 = conn.prepareStatement(sql2);
				ps2.setString(inti++,opppayb);
				ps2.setString(inti++, opppaya);
				ps2.setString(inti++, opppayz);
				ps2.setString(inti++, opppayh);
				ps2.setString(inti++, opppaye);
				ps2.setString(inti++, opppaya2);
				ps2.setString(inti++, opppaym);
				ps2.setString(inti++, opppayid);
				ps2.executeUpdate();
				//ResultSet rs=ps.executeQuery();
				//while (rs.next()) {
				//	Equ equ=new Equ();
				//	equ.setName(rs.getString("name"));
				//	list.add(equ);}
				//rs.close();
				ps2.close();
				a=true;
			}else {
				a=false;
			}
			
			ps3.close();
			rs3.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return a;
	}
	
	public static List<Equ> classf() {
		List<Equ> list =new ArrayList<Equ>();
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql="select distinct classfamily from CONTRACTCLASS";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setClassfamily(rs.getString("classfamily"));
				list.add(equ);}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	public static List<Equ> listson(String classfamily) {
		List<Equ> list=new ArrayList<Equ>();
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql = "select classson from  CONTRACTCLASS where classfamily=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(inti++, classfamily);
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setClassson(rs.getString("classson"));
				list.add(equ);}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	public static List<Equ> listpayname(String classfamily) {
		List<Equ> list=new ArrayList<Equ>();
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql = "select payname from  CONTRACTPAY where classfamily=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(inti++, classfamily);
			//ps.executeUpdate();
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setPayname(rs.getString("payname"));
				list.add(equ);}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	public static String plan2(String contractid) {
		String plan2=null;
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql="select planm2 from dxtestcontract where contractid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(inti++, contractid);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
			plan2=	rs.getString(1);
			}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return plan2;
	}
	
	public static String plan1(String contractid) {
		String plan1=null;
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql="select plan1 from dxtestcontract where contractid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(inti++, contractid);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
			plan1=	rs.getString(1);
			}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return plan1;
	}
	
	public void upDataPlanm2(String planm2,String contractid ) {
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql = "update dxtestcontract set  planm2=?  where contractid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(inti++, planm2);
			ps.setString(inti++, contractid);
			ResultSet rs=ps.executeQuery();
			ps.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static List<Equ> contractList() {
		List<Equ> contractList=new ArrayList<Equ>();
		try {
			int inti=1;
			conn=com.clas.JDBCconnect.getConnection();
			String sql="select contractid,contractname,markdate,contractnlife,oppunit,camount from  dxtestcontract order by plandate2";
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setContractid(rs.getString("contractid"));
				equ.setContractname(rs.getString("contractname"));
				equ.setMarkdate(rs.getString("markdate"));
				equ.setContractnlife(rs.getString("contractnlife"));
				equ.setOppunit(rs.getString("oppunit"));
				equ.setCamount(rs.getString("camount"));
				contractList.add(equ);
				
			}
			
	            st.close();
	            rs.close();
	            conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return contractList;
	}
	
	public static List<Equ> contractListMain(String sdate,String edate) {
		List<Equ> contractList=new ArrayList<Equ>();
		try {
			int inti=1;
			conn=com.clas.JDBCconnect.getConnection();
			String sql="select contractid,contractname,markdate,contractnlife,oppunit,camount from  dxtestcontract where markdate>='"+sdate+"' and markdate<'"+edate+"'  order by plandate2";
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while (rs.next()) {
				Equ equ=new Equ();
				equ.setContractid(rs.getString("contractid"));
				equ.setContractname(rs.getString("contractname"));
				equ.setMarkdate(rs.getString("markdate"));
				equ.setContractnlife(rs.getString("contractnlife"));
				equ.setOppunit(rs.getString("oppunit"));
				equ.setCamount(rs.getString("camount"));
				contractList.add(equ);
				
			}
			
	            st.close();
	            rs.close();
	            conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return contractList;
	}
	
	
	public static int insertplan1(String paydate,String payname,String payporall,String classson,String contractid,int end) {
		int a=0;
		
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql = null;
			
				sql="update dxtestcontract set  PLANM1=?,SGMONEY=?,PLANDATE1=?,FINMONEY=?,PLANDATE2=?,statu=?  where contractid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(inti++, payname);
			ps.setString(inti++, payporall);
			ps.setString(inti++, paydate);
			ps.setString(inti++, classson);
			ps.setString(inti++, paydate);
			if (end==1) {
				ps.setString(inti++, "");
			}else {
				ps.setString(inti++, "end");
			}
			ps.setString(inti++, contractid);
			ResultSet rs=ps.executeQuery();
			
			rs.close();
			ps.close();
			conn.close();
			a=2;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			a=1;
		}
		return a;
	}
	
	
	
	public static int insertplan(int s,String plan,String paydate,String payname,String payporall,String classson,String contractid,int end) {
		int a=0;
		
		try {
			int inti = 1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql = null;
			
				sql="update dxtestcontract set  PLANM1=?,SGMONEY=?,PLANDATE1=?,FINMONEY=?,PLANDATE2=?,statu=?,planm2=?  where contractid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			System.out.println(payname);
			System.out.println(payporall);
			System.out.println(paydate);
			System.out.println(classson);
			System.out.println(paydate);
			
			System.out.println(plan);
			System.out.println(contractid);
			
			ps.setString(inti++, payname);
			ps.setString(inti++, payporall);
			ps.setString(inti++, paydate);
			ps.setString(inti++, classson);
			ps.setString(inti++, paydate);
			if (end==1) {
				ps.setString(inti++, "");
			}else {
				ps.setString(inti++, "end");
			}
			ps.setString(inti++, plan);
			ps.setString(inti++, contractid);
			ResultSet rs=ps.executeQuery();
			
			rs.close();
			ps.close();
			conn.close();
			a=2;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			a=1;
		}
		return a;
	}
	
	public static int insertDataContract (String contractid,String contractname,
			String oppunit,String markdate,String contractnlife,
			String myname,String oppname,String oppid,String myid,String plan1,String camount,String plan2,String plan3,String plan4) {
		int a=0;
		String statu="0";
		SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date(System.currentTimeMillis());
	//	System.out.println(formatter.format(date));
		String now=formatter.format(date);
		int compareTo= contractnlife.compareTo(now);
		if (compareTo==-1) {
			statu="end";
		}
		try {
			int inti=1;
			conn = com.clas.JDBCconnect.getConnection();
			String sql="insert into dxtestcontract(contractid,contractname,"
					+ "oppunit,markdate,contractnlife,myname,oppname,statu,oppid,myid,plan1,camount,plan2,plan3,plan4) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			String sql2="select * from dxtestcontract where contractid=?";
			PreparedStatement ps2=null;
			PreparedStatement ps=conn.prepareStatement(sql2);
			ps.setString(inti++, contractid);
			ResultSet rs=ps.executeQuery();
			
			if (rs.next()) {
				a=1;
			}else {
				
				inti=1;
				ps2=conn.prepareStatement(sql);
				ps2.setString(inti++, contractid);
				ps2.setString(inti++, contractname);
				ps2.setString(inti++,oppunit);
				ps2.setString(inti++,markdate);
//				ps2.setString(inti++,ctype);
				ps2.setString(inti++,contractnlife);
//				ps2.setString(inti++,myconn);
//				ps2.setString(inti++,myconnt);
//				ps2.setString(inti++,oppconn);
//				ps2.setString(inti++,oppconnt);
//				ps2.setString(inti++,camount);
//				ps2.setString(inti++,tax);
				ps2.setString(inti++,myname);
				ps2.setString(inti++,oppname);
				ps2.setString(inti++,statu);
				ps2.setString(inti++,oppid);
				ps2.setString(inti++,myid);
				ps2.setString(inti++,plan1);
				ps2.setString(inti++,camount);
				ps2.setString(inti++,plan2);
				ps2.setString(inti++,plan3);
				ps2.setString(inti++,plan4);
				ps2.executeUpdate();
				a=2;
				ps2.close();
			}
			ps.close();
			rs.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return a;
	}
	
}
