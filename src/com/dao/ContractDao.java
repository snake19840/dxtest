/*      */ package com.dao;
/*      */ 
/*      */ import com.clas.Equ;
/*      */ import com.clas.JDBCconnect;
/*      */ import com.dao.ContractDao;
/*      */ import java.sql.Connection;
/*      */ import java.sql.PreparedStatement;
/*      */ import java.sql.ResultSet;
/*      */ import java.sql.Statement;
/*      */ import java.text.SimpleDateFormat;
/*      */ import java.util.ArrayList;
/*      */ import java.util.Date;
/*      */ import java.util.List;
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */ public class ContractDao
/*      */ {
/*   21 */   static Connection conn = null;
/*      */   
/*      */   public void upPicture(String contractid, String contractpicture, String paynameString) {
/*      */     try {
/*   25 */       int inti = 1;
/*   26 */       conn = JDBCconnect.getConnection();
/*      */       
/*   28 */       String sql = "insert into dxtestcontractfile(contractpicture,contractid,plan1,plan2,plan3,plan4) values(?,?,?,'0','0','0')";
/*   29 */       PreparedStatement ps = conn.prepareStatement(sql);
/*   30 */       ps = conn.prepareStatement(sql);
/*   31 */       ps.setString(inti++, contractpicture);
/*   32 */       ps.setString(inti++, contractid);
/*   33 */       ps.setString(inti++, paynameString);
/*      */       
/*   35 */       ps.executeUpdate();
/*   36 */       ps.close();
/*   37 */       conn.close();
/*   38 */     } catch (Exception e) {
/*      */       
/*   40 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */   
/*      */   public void delete(String contractid) {
/*      */     try {
/*   46 */       int inti = 1;
/*   47 */       conn = JDBCconnect.getConnection();
/*   48 */       String sql = "delete from dxtestcontract where contractid=?";
/*   49 */       PreparedStatement ps = conn.prepareStatement(sql);
/*   50 */       ps = conn.prepareStatement(sql);
/*   51 */       ps.setString(inti++, contractid);
/*   52 */       ps.executeUpdate();
/*   53 */       ps.close();
/*   54 */       conn.close();
/*      */     
/*      */     }
/*   57 */     catch (Exception e) {
/*      */       
/*   59 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */   
/*      */   public void edit2(String contractid, String oppu, String oppp, String oppa, String oppn, String oppe, String oppx, String oppmail, String oppid, String oppe2, String oppad, String opppayb, String opppaya, String opppayz, String opppayh, String opppaye, String opppaya2, String opppaym, String opppayid, String myu, String mya, String myp, String myn, String mye, String myad, String mye2, String myx, String myemail, String myid, String mypayb, String mypaya, String mypayz, String mypayh, String mypaye, String mypaya2, String mypaym, String mypayid, String contractname, String oppunit, String markdate, String contractnlife, String camount, String plan1, String myname, String oppname, String planm2) {
/*      */     try {
/*   65 */       int inti = 1;
/*   66 */       conn = JDBCconnect.getConnection();
/*   67 */       String sql1 = "update dxtestcontract set  CONTRACTNAME=?,OPPUNIT=?,MARKDATE=?,CONTRACTNLIFE=?,CAMOUNT=?,PLAN1=?,MYNAME=?,OPPNAME=?,PLANM2=?  where contractid=?";
/*   68 */       PreparedStatement ps = conn.prepareStatement(sql1);
/*   69 */       ps.setString(inti++, contractname);
/*   70 */       ps.setString(inti++, oppunit);
/*   71 */       ps.setString(inti++, markdate);
/*   72 */       ps.setString(inti++, contractnlife);
/*   73 */       ps.setString(inti++, camount);
/*   74 */       ps.setString(inti++, plan1);
/*   75 */       ps.setString(inti++, myname);
/*   76 */       ps.setString(inti++, oppname);
/*   77 */       ps.setString(inti++, contractid);
/*   78 */       ps.setString(inti++, planm2);
/*   79 */       ps.executeUpdate();
/*   80 */       ps.close();
/*   81 */       inti = 1;
/*   82 */       sql1 = "update contractopp set  oppu=?,oppp=?,oppa=?,oppn=?,oppe=?,oppx=?,oppmail=?,oppe2=?,oppad=?   where oppid=?";
/*   83 */       ps = conn.prepareStatement(sql1);
/*   84 */       ps.setString(inti++, oppu);
/*   85 */       ps.setString(inti++, oppp);
/*   86 */       ps.setString(inti++, oppa);
/*   87 */       ps.setString(inti++, oppn);
/*   88 */       ps.setString(inti++, oppe);
/*   89 */       ps.setString(inti++, oppx);
/*   90 */       ps.setString(inti++, oppmail);
/*   91 */       ps.setString(inti++, oppe2);
/*   92 */       ps.setString(inti++, oppad);
/*   93 */       ps.setString(inti++, oppid);
/*   94 */       ps.executeUpdate();
/*   95 */       ps.close();
/*   96 */       inti = 1;
/*   97 */       sql1 = "update opppay set  opppayb=?,opppaya=?,opppayz=?,opppayh=?,opppaye=?,opppaya2=?,opppaym=?    where opppayid=?";
/*   98 */       ps = conn.prepareStatement(sql1);
/*   99 */       ps.setString(inti++, opppayb);
/*  100 */       ps.setString(inti++, opppaya);
/*  101 */       ps.setString(inti++, opppayz);
/*  102 */       ps.setString(inti++, opppayh);
/*  103 */       ps.setString(inti++, opppaye);
/*  104 */       ps.setString(inti++, opppaya2);
/*  105 */       ps.setString(inti++, opppaym);
/*  106 */       ps.setString(inti++, opppayid);
/*  107 */       ps.executeUpdate();
/*  108 */       ps.close();
/*  109 */       inti = 1;
/*  110 */       sql1 = "update contractmy set  myu=?,mya=?,myp=?,myn=?,mye=?,myad=?,mye2=?,myx=?,myemail=?   where myid=?";
/*  111 */       ps = conn.prepareStatement(sql1);
/*  112 */       ps.setString(inti++, myu);
/*  113 */       ps.setString(inti++, mya);
/*  114 */       ps.setString(inti++, myp);
/*  115 */       ps.setString(inti++, myn);
/*  116 */       ps.setString(inti++, mye);
/*  117 */       ps.setString(inti++, myad);
/*  118 */       ps.setString(inti++, mye2);
/*  119 */       ps.setString(inti++, myx);
/*  120 */       ps.setString(inti++, myemail);
/*  121 */       ps.setString(inti++, myid);
/*  122 */       ps.executeUpdate();
/*  123 */       ps.close();
/*  124 */       inti = 1;
/*  125 */       sql1 = "update mypay set  mypayb=?,mypaya=?,mypayz=?,mypayh=?,mypaye=?,mypaya2=?,mypaym=?   where mypayid=?";
/*  126 */       ps = conn.prepareStatement(sql1);
/*  127 */       ps.setString(inti++, mypayb);
/*  128 */       ps.setString(inti++, mypaya);
/*  129 */       ps.setString(inti++, mypayz);
/*  130 */       ps.setString(inti++, mypayh);
/*  131 */       ps.setString(inti++, mypaye);
/*  132 */       ps.setString(inti++, mypaya2);
/*  133 */       ps.setString(inti++, mypaym);
/*  134 */       ps.setString(inti++, mypayid);
/*  135 */       ps.executeUpdate();
/*  136 */       ps.close();
/*  137 */       conn.close();
/*  138 */     } catch (Exception e) {
/*      */       
/*  140 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */   
/*      */   public void edit(String contractid, String contractname, String oppunit, String markdate, String ctype, String contractnlife, String myconn, String myconnt, String oppconn, String oppconnt, String camount, String tax, String myname, String oppname) {
/*      */     try {
/*  150 */       int inti = 1;
/*  151 */       conn = JDBCconnect.getConnection();
/*      */       
/*  153 */       String sql = "update dxtestcontract set  contractname=?,oppunit=?,markdate=?,ctype=?,contractnlife=?,myconn=?,myconnt=?,oppconn=?,oppconnt=?,camount=?,tax=?,myname=?,oppname=?  where contractid=?";
/*      */ 
/*      */ 
/*      */ 
/*      */       
/*  158 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  159 */       System.out.println("sl " + contractid);
/*  160 */       ps = conn.prepareStatement(sql);
/*  161 */       ps.setString(inti++, contractname);
/*  162 */       ps.setString(inti++, oppunit);
/*  163 */       ps.setString(inti++, markdate);
/*  164 */       ps.setString(inti++, ctype);
/*  165 */       ps.setString(inti++, contractnlife);
/*  166 */       ps.setString(inti++, myconn);
/*  167 */       ps.setString(inti++, myconnt);
/*  168 */       ps.setString(inti++, oppconn);
/*  169 */       ps.setString(inti++, oppconnt);
/*  170 */       ps.setString(inti++, camount);
/*  171 */       ps.setString(inti++, tax);
/*  172 */       ps.setString(inti++, myname);
/*  173 */       ps.setString(inti++, oppname);
/*  174 */       ps.setString(inti++, contractid);
/*  175 */       ps.executeUpdate();
/*      */ 
/*      */       
/*  178 */       ps.close();
/*  179 */       conn.close();
/*      */     }
/*  181 */     catch (Exception e) {
/*      */       
/*  183 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */   
/*      */   public String layoutPlanm2(String contractid) {
/*  188 */     String a = null;
/*      */     try {
/*  190 */       int inti = 1;
/*  191 */       conn = JDBCconnect.getConnection();
/*  192 */       String sql = "select planm2 from dxtestcontract where contractid=?";
/*  193 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  194 */       ps.setString(inti++, contractid);
/*      */       
/*  196 */       ResultSet rs = ps.executeQuery();
/*  197 */       while (rs.next()) {
/*  198 */         a = rs.getString("planm2");
/*      */       }
/*  200 */       rs.close();
/*  201 */       ps.close();
/*  202 */       conn.close();
/*  203 */     } catch (Exception e) {
/*      */       
/*  205 */       e.printStackTrace();
/*      */     } 
/*  207 */     return a;
/*      */   }
/*      */   
/*      */   public static List<Equ> classonitem(String contractid) {
/*  211 */     List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/*  213 */       int inti = 1;
/*  214 */       conn = JDBCconnect.getConnection();
/*  215 */       String sqlf = "select plan4 from dxtestcontract where contractid=?";
/*  216 */       String sql = "select classson from CONTRACTCLASS where classfamily=?";
/*  217 */       String classfamily = null;
/*      */ 
/*      */ 
/*      */       
/*  221 */       PreparedStatement ps = conn.prepareStatement(sqlf);
/*  222 */       ps.setString(inti++, contractid);
/*  223 */       ResultSet rs = ps.executeQuery();
/*  224 */       while (rs.next()) {
/*  225 */         classfamily = rs.getString(1);
/*      */       }
/*  227 */       inti = 1;
/*  228 */       PreparedStatement ps2 = conn.prepareStatement(sql);
/*  229 */       ps2.setString(inti++, classfamily);
/*  230 */       ResultSet rs2 = ps2.executeQuery();
/*  231 */       while (rs2.next()) {
/*  232 */         Equ equ = new Equ();
/*  233 */         equ.setClassson(rs2.getString("classson"));
/*  234 */         list.add(equ);
/*      */       } 
/*  236 */       ps.close();
/*  237 */       ps2.close();
/*  238 */       rs2.close();
/*  239 */       rs.close();
/*  240 */       conn.close();
/*  241 */     } catch (Exception e) {
/*      */       
/*  243 */       e.printStackTrace();
/*      */     } 
/*  245 */     return list;
/*      */   }
/*      */   public static List<Equ> paynameitem(String contractid) {
/*  248 */     List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/*  250 */       int inti = 1;
/*  251 */       conn = JDBCconnect.getConnection();
/*  252 */       String sqlf = "select plan4 from dxtestcontract where contractid=?";
/*  253 */       String sql = "select payname from CONTRACTpay where classfamily=?";
/*  254 */       String classfamily = null;
/*      */ 
/*      */ 
/*      */       
/*  258 */       PreparedStatement ps = conn.prepareStatement(sqlf);
/*  259 */       ps.setString(inti++, contractid);
/*  260 */       ResultSet rs = ps.executeQuery();
/*  261 */       while (rs.next()) {
/*  262 */         classfamily = rs.getString(1);
/*      */       }
/*  264 */       inti = 1;
/*  265 */       PreparedStatement ps2 = conn.prepareStatement(sql);
/*  266 */       ps2.setString(inti++, classfamily);
/*  267 */       ResultSet rs2 = ps2.executeQuery();
/*  268 */       while (rs2.next()) {
/*  269 */         Equ equ = new Equ();
/*  270 */         equ.setPayname(rs2.getString("payname"));
/*  271 */         list.add(equ);
/*      */       } 
/*  273 */       ps.close();
/*  274 */       ps2.close();
/*  275 */       rs.close();
/*  276 */       rs2.close();
/*  277 */       conn.close();
/*  278 */     } catch (Exception e) {
/*      */       
/*  280 */       e.printStackTrace();
/*      */     } 
/*  282 */     return list;
/*      */   }
/*      */   
/*      */   public static List<Equ> contractListItemFile(String contractid) {
/*  286 */     List<Equ> contractListItemFile = new ArrayList<Equ>();
/*      */     
/*      */     try {
/*  289 */       int inti = 1;
/*  290 */       conn = JDBCconnect.getConnection();
/*  291 */       String sql = "select contractpicture,contractid,contractnowdate,plan1 from dxtestcontractfile where contractid=?";
/*  292 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  293 */       ps.setString(inti++, contractid);
/*  294 */       ResultSet rs = ps.executeQuery();
/*  295 */       while (rs.next()) {
/*  296 */         Equ equ = new Equ();
/*  297 */         equ.setContractpicture(rs.getString("contractpicture"));
/*  298 */         equ.setContractid(rs.getString("contractid"));
/*  299 */         equ.setContractnowdate(rs.getString("contractnowdate"));
/*  300 */         equ.setPlan1(rs.getString("plan1"));
/*  301 */         contractListItemFile.add(equ);
/*      */       } 
/*  303 */       ps.close();
/*  304 */       rs.close();
/*  305 */       conn.close();
/*  306 */     } catch (Exception e) {
/*      */       
/*  308 */       e.printStackTrace();
/*      */     } 
/*  310 */     return contractListItemFile;
/*      */   }
/*      */ 
/*      */   
/*      */   public static List<Equ> contractListItem(String contractid) {
/*  315 */     List<Equ> contractListItem = new ArrayList<Equ>();
/*      */     
/*      */     try {
/*  318 */       int inti = 1;
/*  319 */       conn = JDBCconnect.getConnection();
/*  320 */       String sql = "SELECT * FROM DXTESTCONTRACT a,CONTRACTopp b1,opppay b2,CONTRACTmy c1,mypay c2 WHERE a.OPPID= b1.oppid AND a.oppid =b2.opppayid and a.myid=c1.myid and a.myid=c2.mypayid and CONTRACTid='" + contractid + "'";
/*  321 */       PreparedStatement ps = conn.prepareStatement(sql);
/*      */       
/*  323 */       ResultSet rs = ps.executeQuery();
/*  324 */       while (rs.next()) {
/*  325 */         Equ equ = new Equ();
/*  326 */         System.out.println(rs.getString("oppa"));
/*  327 */         equ.setContractpicture(rs.getString("contractpicture"));
/*  328 */         equ.setContractid(rs.getString("contractid"));
/*  329 */         equ.setContractsdate(rs.getString("contractsdate"));
/*  330 */         equ.setContractedate(rs.getString("contractedate"));
/*  331 */         equ.setContractname(rs.getString("contractname"));
/*  332 */         equ.setContractnowdate(rs.getString("contractnowdate"));
/*  333 */         equ.setStatu(rs.getString("statu"));
/*  334 */         equ.setOppunit(rs.getString("oppunit"));
/*  335 */         equ.setMarkdate(rs.getString("markdate"));
/*  336 */         equ.setContractnlife(rs.getString("contractnlife"));
/*  337 */         equ.setCamount(rs.getString("camount"));
/*  338 */         equ.setMyconn(rs.getString("myconn"));
/*  339 */         equ.setOppconn(rs.getString("oppconn"));
/*  340 */         equ.setMyconnt(rs.getString("myconnt"));
/*  341 */         equ.setOppconnt(rs.getString("oppconnt"));
/*  342 */         equ.setCtype(rs.getString("ctype"));
/*  343 */         equ.setTax(rs.getString("tax"));
/*  344 */         equ.setPlan1(rs.getString("plan1"));
/*  345 */         equ.setPlandate1(rs.getString("plandate1"));
/*  346 */         equ.setPlan2(rs.getString("plan2"));
/*  347 */         equ.setPlandate2(rs.getString("plandate2"));
/*  348 */         equ.setPlan3(rs.getString("plan3"));
/*  349 */         equ.setPlandate3(rs.getInt("plandate3"));
/*  350 */         equ.setPlan4(rs.getString("plan4"));
/*  351 */         equ.setPlandate4(rs.getString("plandate4"));
/*  352 */         equ.setPlanm1(rs.getString("planm1"));
/*  353 */         equ.setPlanm4(rs.getString("planm4"));
/*  354 */         equ.setPlanm3(rs.getString("planm3"));
/*  355 */         equ.setPlanm2(rs.getString("planm2"));
/*  356 */         equ.setSgmoney(rs.getString("sgmoney"));
/*  357 */         equ.setInitmoney(rs.getString("initmoney"));
/*  358 */         equ.setFinmoney(rs.getString("finmoney"));
/*  359 */         equ.setWarmoney(rs.getString("warmoney"));
/*  360 */         equ.setMyname(rs.getString("myname"));
/*  361 */         equ.setOppname(rs.getString("oppname"));
/*  362 */         equ.setOppu(rs.getString("oppu"));
/*  363 */         equ.setOppp(rs.getString("oppp"));
/*  364 */         equ.setOppa(rs.getString("oppa"));
/*  365 */         equ.setOppn(rs.getString("oppn"));
/*  366 */         equ.setOppe(rs.getString("oppe"));
/*  367 */         equ.setOppx(rs.getString("oppx"));
/*  368 */         equ.setOppmail(rs.getString("oppmail"));
/*  369 */         equ.setOppid(rs.getString("oppid"));
/*  370 */         equ.setOppe2(rs.getString("oppe2"));
/*  371 */         equ.setOppad(rs.getString("oppad"));
/*  372 */         equ.setOpppayb(rs.getString("opppayb"));
/*  373 */         equ.setOpppaya(rs.getString("opppaya"));
/*  374 */         equ.setOpppayz(rs.getString("opppayz"));
/*  375 */         equ.setOpppayh(rs.getString("opppayh"));
/*  376 */         equ.setOpppaye(rs.getString("opppaye"));
/*  377 */         equ.setOpppaya2(rs.getString("opppaya2"));
/*  378 */         equ.setOpppaym(rs.getString("opppaym"));
/*  379 */         equ.setOpppayid(rs.getString("opppayid"));
/*  380 */         equ.setMyu(rs.getString("myu"));
/*  381 */         equ.setMya(rs.getString("mya"));
/*  382 */         equ.setMyp(rs.getString("myp"));
/*  383 */         equ.setMyn(rs.getString("myn"));
/*  384 */         equ.setMye(rs.getString("mye"));
/*  385 */         equ.setMyad(rs.getString("myad"));
/*  386 */         equ.setMye2(rs.getString("mye2"));
/*  387 */         equ.setMyx(rs.getString("myx"));
/*  388 */         equ.setMyemail(rs.getString("myemail"));
/*  389 */         equ.setMyid(rs.getString("myid"));
/*  390 */         equ.setMypayb(rs.getString("mypayb"));
/*  391 */         equ.setMypaya(rs.getString("mypaya"));
/*  392 */         equ.setMypayz(rs.getString("mypayz"));
/*  393 */         equ.setMypayh(rs.getString("mypayh"));
/*  394 */         equ.setMypaye(rs.getString("mypaye"));
/*  395 */         equ.setMypaya2(rs.getString("mypaya2"));
/*  396 */         equ.setMypaym(rs.getString("mypaym"));
/*  397 */         equ.setMypayid(rs.getString("mypayid"));
/*  398 */         equ.setClassson(rs.getString("classson"));
/*  399 */         contractListItem.add(equ);
/*      */       } 
/*      */       
/*  402 */       conn.close();
/*  403 */       ps.close();
/*  404 */       rs.close();
/*  405 */       sql = null;
/*  406 */     } catch (Exception e) {
/*      */       
/*  408 */       e.printStackTrace();
/*      */     } 
/*  410 */     return contractListItem;
/*      */   }
/*      */   
/*      */   public static void DelFile(String contractpicture) {
/*      */     try {
/*  415 */       int inti = 1;
/*  416 */       conn = JDBCconnect.getConnection();
/*      */       
/*  418 */       String sql = "delete from dxtestcontractfile where contractpicture=?";
/*      */       
/*  420 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  421 */       System.out.println("contractpicture=" + contractpicture);
/*  422 */       ps = conn.prepareStatement(sql);
/*  423 */       ps.setString(inti++, contractpicture);
/*  424 */       ps.executeUpdate();
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */       
/*  431 */       ps.close();
/*  432 */       conn.close();
/*      */     
/*      */     }
/*  435 */     catch (Exception e) {
/*      */       
/*  437 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */   public static List<Equ> contractSearch(String sdate, String edate, String message) {
/*  441 */     List<Equ> contractSearch = new ArrayList<Equ>();
/*      */     try {
/*  443 */       int inti = 1;
/*  444 */       message = "%" + message + "%";
/*  445 */       conn = JDBCconnect.getConnection();
/*  446 */       String sql1 = "select * from dxtestcontractfile where contractnowdate>=? and contractpicture like ?";
/*  447 */       String sql2 = "select * from dxtestcontractfile where contractnowdate>=? and contractnowdate<=? contractpicture like ?";
/*  448 */       String sql3 = "select * from dxtestcontractfile where contractnowdate<=? and contractpicture like ?";
/*  449 */       String sql4 = "select * from dxtestcontractfile where  contractpicture like ?";
/*  450 */       PreparedStatement ps = null;
/*  451 */       if (edate == "" && sdate != "") {
/*  452 */         sdate = String.valueOf(sdate) + " 00:00:00";
/*  453 */         ps = conn.prepareStatement(sql1);
/*  454 */         ps = conn.prepareStatement(sql1);
/*  455 */         ps.setString(inti++, sdate);
/*  456 */         ps.setString(inti++, message);
/*  457 */       } else if (edate != "" && sdate != "") {
/*  458 */         sdate = String.valueOf(sdate) + " 00:00:00";
/*  459 */         edate = String.valueOf(edate) + " 00:00:00";
/*  460 */         ps = conn.prepareStatement(sql2);
/*  461 */         ps = conn.prepareStatement(sql2);
/*  462 */         ps.setString(inti++, sdate);
/*  463 */         ps.setString(inti++, edate);
/*  464 */         ps.setString(inti++, message);
/*  465 */       } else if (edate != "" && sdate == "") {
/*  466 */         edate = String.valueOf(edate) + " 00:00:00";
/*  467 */         System.out.println(edate);
/*  468 */         ps = conn.prepareStatement(sql3);
/*  469 */         ps = conn.prepareStatement(sql3);
/*      */         
/*  471 */         ps.setString(inti++, edate);
/*  472 */         ps.setString(inti++, message);
/*      */       } else {
/*  474 */         ps = conn.prepareStatement(sql4);
/*  475 */         ps = conn.prepareStatement(sql4);
/*      */         
/*  477 */         ps.setString(inti++, message);
/*      */       } 
/*      */ 
/*      */ 
/*      */ 
/*      */       
/*  483 */       ResultSet rs = ps.executeQuery();
/*  484 */       while (rs.next()) {
/*  485 */         Equ equ = new Equ();
/*  486 */         equ.setContractpicture(rs.getString("contractpicture"));
/*  487 */         equ.setContractid(rs.getString("contractid"));
/*  488 */         equ.setContractnowdate(rs.getString("contractnowdate"));
/*  489 */         equ.setPlan1(rs.getString("plan1"));
/*  490 */         equ.setPlan2(rs.getString("plan2"));
/*  491 */         equ.setPlan3(rs.getString("plan3"));
/*  492 */         equ.setPlan4(rs.getString("plan4"));
/*  493 */         contractSearch.add(equ);
/*      */       } 
/*  495 */       ps.close();
/*  496 */       conn.close();
/*  497 */     } catch (Exception e) {
/*      */       
/*  499 */       e.printStackTrace();
/*      */     } 
/*  501 */     return contractSearch;
/*      */   }
/*      */   public static List<Equ> contractPlanList() {
/*  504 */  List<Equ>   contractPlanList = new ArrayList<Equ>();
/*      */     try {
/*  506 */       int inti = 1;
/*  507 */       conn = JDBCconnect.getConnection();
/*  508 */       String sql = "select CLASSSON,PLAN4,contractid,\tcontractname,\tmarkdate,\tcontractnlife,\toppunit,\tplanm1,\tplandate2,\tplandate1,sgmoney from  dxtestcontract where (statu!='end'or statu is null) order by plandate2";
/*  509 */       Statement st = conn.createStatement();
/*  510 */       ResultSet rs = st.executeQuery(sql);
/*  511 */       while (rs.next()) {
/*  512 */         Equ equ = new Equ();
/*  513 */         equ.setContractid(rs.getString("contractid"));
/*  514 */         equ.setContractname(rs.getString("contractname"));
/*  515 */         equ.setMarkdate(rs.getString("markdate"));
/*  516 */         equ.setContractnlife(rs.getString("contractnlife"));
/*  517 */         equ.setOppunit(rs.getString("oppunit"));
/*  518 */         equ.setPlanm1(rs.getString("planm1"));
/*  519 */         equ.setPlandate2(rs.getString("plandate2"));
/*  520 */         equ.setPlandate1(rs.getString("plandate1"));
/*  521 */         equ.setSgmoney(rs.getString("sgmoney"));
					equ.setPlan4(rs.getString("plan4"));
					equ.setClassson(rs.getString("classson"));
/*  525 */         contractPlanList.add(equ);
/*      */       } 
/*      */       
/*  528 */       conn.close();
/*  529 */       st.close();
/*  530 */       rs.close();
/*      */     }
/*  532 */     catch (Exception e) {
/*      */       
/*  534 */       e.printStackTrace();
/*      */     } 
/*      */     
/*  537 */     return contractPlanList;
/*      */   }
/*      */   public static List<Equ> contractPlanItem(String contractid) {
/*  540 */     List<Equ> contractPlanItem = new ArrayList<Equ>();
/*      */     try {
/*  542 */       int inti = 1;
/*  543 */       conn = JDBCconnect.getConnection();
/*      */ 
/*      */       
/*  546 */       String sql = "select * from dxtestcontract where contractid=?";
/*  547 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  548 */       ps = conn.prepareStatement(sql);
/*  549 */       ps.setString(inti++, contractid);
/*      */       
/*  551 */       ResultSet rs = ps.executeQuery();
/*  552 */       while (rs.next()) {
/*  553 */         Equ equ = new Equ();
/*  554 */         equ.setContractpicture(rs.getString("contractpicture"));
/*  555 */         equ.setContractid(rs.getString("contractid"));
/*  556 */         equ.setContractsdate(rs.getString("contractsdate"));
/*  557 */         equ.setContractedate(rs.getString("contractedate"));
/*  558 */         equ.setContractname(rs.getString("contractname"));
/*  559 */         equ.setContractnowdate(rs.getString("contractnowdate"));
/*  560 */         equ.setStatu(rs.getString("statu"));
/*  561 */         equ.setOppunit(rs.getString("oppunit"));
/*  562 */         equ.setMarkdate(rs.getString("markdate"));
/*  563 */         equ.setContractnlife(rs.getString("contractnlife"));
/*  564 */         equ.setCamount(rs.getString("camount"));
/*  565 */         equ.setMyconn(rs.getString("myconn"));
/*  566 */         equ.setOppconn(rs.getString("oppconn"));
/*  567 */         equ.setMyconnt(rs.getString("myconnt"));
/*  568 */         equ.setOppconnt(rs.getString("oppconnt"));
/*  569 */         equ.setCtype(rs.getString("ctype"));
/*  570 */         equ.setTax(rs.getString("tax"));
/*  571 */         equ.setPlan1(rs.getString("plan1"));
/*  572 */         equ.setPlandate1(rs.getString("plandate1"));
/*  573 */         equ.setPlan2(rs.getString("plan2"));
/*  574 */         equ.setPlandate2(rs.getString("plandate2"));
/*  575 */         equ.setPlan3(rs.getString("plan3"));
/*  576 */         equ.setPlandate3(rs.getInt("plandate3"));
/*  577 */         equ.setPlan4(rs.getString("plan4"));
/*  578 */         equ.setPlandate4(rs.getString("plandate4"));
/*  579 */         equ.setPlanm1(rs.getString("planm1"));
/*  580 */         equ.setPlanm4(rs.getString("planm4"));
/*  581 */         equ.setPlanm3(rs.getString("planm3"));
/*  582 */         equ.setPlanm2(rs.getString("planm2"));
/*  583 */         equ.setSgmoney(rs.getString("sgmoney"));
/*  584 */         equ.setInitmoney(rs.getString("initmoney"));
/*  585 */         equ.setFinmoney(rs.getString("finmoney"));
/*  586 */         equ.setWarmoney(rs.getString("warmoney"));
/*  587 */         equ.setMyname(rs.getString("myname"));
/*  588 */         equ.setOppname(rs.getString("oppname"));
/*  589 */         contractPlanItem.add(equ);
/*      */       } 
/*  591 */       ps.close();
/*  592 */       conn.close();
/*  593 */     } catch (Exception e) {
/*      */       
/*  595 */       e.printStackTrace();
/*      */     } 
/*  597 */     return contractPlanItem;
/*      */   }
/*      */   
/*      */   public static int Payall(String classfamily, String payname) {
/*  601 */     int a = 0;
/*      */     try {
/*  603 */       int inti = 1;
/*  604 */       conn = JDBCconnect.getConnection();
/*  605 */       String sql = "insert into CONTRACTPAY (classfamily,payname) values(?,?)";
/*  606 */       String sqlcheck = "select count(*) from CONTRACTPAY where classfamily=? and payname=?";
/*  607 */       PreparedStatement ps = null;
/*  608 */       PreparedStatement ps2 = null;
/*  609 */       int count = 0;
/*  610 */       ps = conn.prepareStatement(sqlcheck);
/*  611 */       ps.setString(inti++, classfamily);
/*  612 */       ps.setString(inti++, payname);
/*  613 */       ResultSet rs = ps.executeQuery();
/*  614 */       if (rs.next()) {
/*  615 */         count = rs.getInt(1);
/*      */       }
/*  617 */       if (count == 0) {
/*  618 */         inti = 1;
/*  619 */         ps2 = conn.prepareStatement(sql);
/*  620 */         ps2.setString(inti++, classfamily);
/*  621 */         ps2.setString(inti++, payname);
/*  622 */         ps2.executeUpdate();
/*  623 */         ps2.close();
/*  624 */         a = 1;
/*      */       } else {
/*  626 */         a = 2;
/*      */       } 
/*  628 */       rs.close();
/*  629 */       ps.close();
/*  630 */       conn.close();
/*  631 */     } catch (Exception e) {
/*      */       
/*  633 */       e.printStackTrace();
/*      */     } 
/*  635 */     return a;
/*      */   }
/*      */   
/*      */   public static List<Equ> list1() {
/*  639 */   List<Equ>  list = new ArrayList<Equ>();
/*      */     try {
/*  641 */       int inti = 1;
/*  642 */       conn = JDBCconnect.getConnection();
/*  643 */       String sql = "select oppid,oppu,oppp,oppn,opppaym from contractopp a join opppay b on a.oppid=b.opppayid";
/*  644 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  645 */       ps = conn.prepareStatement(sql);
/*      */ 
/*      */       
/*  648 */       ResultSet rs = ps.executeQuery();
/*  649 */       while (rs.next()) {
/*  650 */         Equ equ = new Equ();
/*  651 */         equ.setOppid(rs.getString("oppid"));
/*  652 */         equ.setOppu(rs.getString("oppu"));
/*  653 */         equ.setOppp(rs.getString("oppp"));
/*  654 */         equ.setOppn(rs.getString("oppn"));
/*  655 */         equ.setOpppaym(rs.getString("opppaym"));
/*  656 */         list.add(equ);
/*  657 */       }  rs.close();
/*  658 */       ps.close();
/*  659 */       conn.close();
/*  660 */     } catch (Exception e) {
/*      */       
/*  662 */       e.printStackTrace();
/*      */     } 
/*  664 */     return list;
/*      */   }
/*      */   
/*      */   public static List<Equ> list2() {
/*  668 */    List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/*  670 */       int inti = 1;
/*  671 */       conn = JDBCconnect.getConnection();
/*  672 */       String sql = "select myid,myu,myp,myn,mypaym from contractmy a join mypay b on a.myid=b.mypayid";
/*  673 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  674 */       ps = conn.prepareStatement(sql);
/*      */ 
/*      */       
/*  677 */       ResultSet rs = ps.executeQuery();
/*  678 */       while (rs.next()) {
/*  679 */         Equ equ = new Equ();
/*  680 */         equ.setMyid(rs.getString("myid"));
/*  681 */         equ.setMyu(rs.getString("myu"));
/*  682 */         equ.setMyp(rs.getString("myp"));
/*  683 */         equ.setMyn(rs.getString("myn"));
/*  684 */         equ.setMypaym(rs.getString("mypaym"));
/*  685 */         list.add(equ);
/*  686 */       }  rs.close();
/*  687 */       ps.close();
/*  688 */       conn.close();
/*  689 */     } catch (Exception e) {
/*      */       
/*  691 */       e.printStackTrace();
/*      */     } 
/*  693 */     return list;
/*      */   }
/*      */   
/*      */   public static List<Equ> list3() {
/*  697 */   List<Equ>  list = new ArrayList<Equ>();
/*      */     try {
/*  699 */       int inti = 1;
/*  700 */       conn = JDBCconnect.getConnection();
/*  701 */       String sql = "select contractid,contractname,oppp,oppn,CAMOUNT from DXTESTCONTRACT a join CONTRACTopp b on a.oppid=b.oppid where plan2='否'";
/*  702 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  703 */       ps = conn.prepareStatement(sql);
/*      */ 
/*      */       
/*  706 */       ResultSet rs = ps.executeQuery();
/*  707 */       while (rs.next()) {
/*  708 */         Equ equ = new Equ();
/*  709 */         equ.setContractid(rs.getString("contractid"));
/*  710 */         equ.setContractname(rs.getString("contractname"));
/*  711 */         equ.setOppp(rs.getString("oppp"));
/*  712 */         equ.setOppn(rs.getString("oppn"));
/*  713 */         equ.setCamount(rs.getString("camount"));
/*  714 */         list.add(equ);
/*  715 */       }  rs.close();
/*  716 */       ps.close();
/*  717 */       conn.close();
/*  718 */     } catch (Exception e) {
/*      */       
/*  720 */       e.printStackTrace();
/*      */     } 
/*  722 */     return list;
/*      */   }
/*      */ 
/*      */   
/*      */   public static List<Equ> opplayout(String oppid) {
/*  727 */     List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/*  729 */       int inti = 1;
/*  730 */       conn = JDBCconnect.getConnection();
/*  731 */       String sql = "select * from contractopp a join opppay b on a.oppid=b.opppayid where oppid=?";
/*  732 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  733 */       ps.setString(inti++, oppid);
/*      */       
/*  735 */       ResultSet rs = ps.executeQuery();
/*  736 */       while (rs.next()) {
/*  737 */         Equ equ = new Equ();
/*  738 */         equ.setOppu(rs.getString("oppu"));
/*  739 */         equ.setOppp(rs.getString("oppp"));
/*  740 */         equ.setOppa(rs.getString("oppa"));
/*  741 */         equ.setOppn(rs.getString("oppn"));
/*  742 */         equ.setOppe(rs.getString("oppe"));
/*  743 */         equ.setOppx(rs.getString("oppx"));
/*  744 */         equ.setOppmail(rs.getString("oppmail"));
/*  745 */         equ.setOppid(rs.getString("oppid"));
/*  746 */         equ.setOppe2(rs.getString("oppe2"));
/*  747 */         equ.setOppad(rs.getString("oppad"));
/*  748 */         equ.setOpppayb(rs.getString("opppayb"));
/*  749 */         equ.setOpppaya(rs.getString("opppaya"));
/*  750 */         equ.setOpppayz(rs.getString("opppayz"));
/*  751 */         equ.setOpppayh(rs.getString("opppayh"));
/*  752 */         equ.setOpppaye(rs.getString("opppaye"));
/*  753 */         equ.setOpppaya2(rs.getString("opppaya2"));
/*  754 */         equ.setOpppaym(rs.getString("opppaym"));
/*  755 */         equ.setOpppayid(rs.getString("opppayid"));
/*  756 */         list.add(equ);
/*  757 */       }  rs.close();
/*  758 */       ps.close();
/*  759 */       conn.close();
/*  760 */     } catch (Exception e) {
/*      */       
/*  762 */       e.printStackTrace();
/*      */     } 
/*  764 */     return list;
/*      */   }
/*      */   
/*      */   public static List<Equ> mylayout(String myid) {
/*  768 */     List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/*  770 */       int inti = 1;
/*  771 */       conn = JDBCconnect.getConnection();
/*  772 */       String sql = "select * from contractmy a join mypay b on a.myid=b.mypayid where myid=?";
/*  773 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  774 */       ps.setString(inti++, myid);
/*      */       
/*  776 */       ResultSet rs = ps.executeQuery();
/*  777 */       while (rs.next()) {
/*  778 */         Equ equ = new Equ();
/*  779 */         equ.setMyu(rs.getString("myu"));
/*  780 */         equ.setMyp(rs.getString("myp"));
/*  781 */         equ.setMya(rs.getString("mya"));
/*  782 */         equ.setMyn(rs.getString("myn"));
/*  783 */         equ.setMye(rs.getString("mye"));
/*  784 */         equ.setMyx(rs.getString("myx"));
/*  785 */         equ.setMyemail(rs.getString("myemail"));
/*  786 */         equ.setMyid(rs.getString("myid"));
/*  787 */         equ.setMye2(rs.getString("mye2"));
/*  788 */         equ.setMyad(rs.getString("myad"));
/*  789 */         equ.setMypayb(rs.getString("mypayb"));
/*  790 */         equ.setMypaya(rs.getString("mypaya"));
/*  791 */         equ.setMypayz(rs.getString("mypayz"));
/*  792 */         equ.setMypayh(rs.getString("mypayh"));
/*  793 */         equ.setMypaye(rs.getString("mypaye"));
/*  794 */         equ.setMypaya2(rs.getString("mypaya2"));
/*  795 */         equ.setMypaym(rs.getString("mypaym"));
/*  796 */         equ.setMypayid(rs.getString("mypayid"));
/*  797 */         list.add(equ);
/*  798 */       }  rs.close();
/*  799 */       ps.close();
/*  800 */       conn.close();
/*  801 */     } catch (Exception e) {
/*      */       
/*  803 */       e.printStackTrace();
/*      */     } 
/*  805 */     return list;
/*      */   }
/*      */   
/*      */   public void upDataPlanDate1(String paydate, String contractid) {
/*      */     try {
/*  810 */       int inti = 1;
/*  811 */       conn = JDBCconnect.getConnection();
/*  812 */       String sql = "update dxtestCONTRACT set  plandate1=?,plandate2=?  where contractid=?";
/*      */       
/*  814 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  815 */       ps.setString(inti++, paydate);
/*  816 */       ps.setString(inti++, paydate);
/*  817 */       ps.setString(inti++, contractid);
/*      */       
/*  819 */       ResultSet rs = ps.executeQuery();
/*  824 */       rs.close();
/*  825 */       ps.close();
/*  826 */       conn.close();
/*  827 */     } catch (Exception e) {
/*      */       
/*  829 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */ 
/*      */   
/*      */   public static int Classall(String classfamily, String classson) {
/*  835 */     int a = 0;
/*      */     try {
/*  837 */       int inti = 1;
/*  838 */       conn = JDBCconnect.getConnection();
/*  839 */       String sql = "insert into CONTRACTCLASS (classfamily,classson) values(?,?)";
/*  840 */       String sqlcheck = "select * from CONTRACTCLASS where classfamily=? and rownum=1 order by id";
/*  841 */       String sqlup = "update CONTRACTCLASS set classson=? where classfamily=?";
/*  842 */       String sqlchecks = "select count(*) from CONTRACTCLASS where classfamily=? and classson=?";
/*  843 */       PreparedStatement ps = null;
/*  844 */       PreparedStatement ps2 = null;
/*  845 */       PreparedStatement ps3 = null;
/*  846 */       PreparedStatement ps4 = null;
/*  847 */       ResultSet rs4 = null;
/*  848 */       String f = null;
/*  849 */       String s = null;
/*  850 */       int count = 0;
/*  851 */       ps3 = conn.prepareStatement(sqlcheck);
/*  852 */       ps3.setString(inti++, classfamily);
/*  853 */       ResultSet rs3 = ps3.executeQuery();
/*      */       
/*  855 */       if (rs3.next()) {
/*  856 */         f = rs3.getString("classfamily");
/*  857 */         s = rs3.getString("classson");
/*      */         
/*  859 */         if (classson == null || classson == "") {
/*  860 */           a = 2;
/*      */         
/*      */         }
/*  863 */         else if (s == null || s == "") {
/*      */ 
/*      */           
/*  866 */           inti = 1;
/*  867 */           ps2 = conn.prepareStatement(sqlup);
/*  868 */           ps2.setString(inti++, classson);
/*  869 */           ps2.setString(inti++, classfamily);
/*  870 */           ps2.executeUpdate();
/*  871 */           ps2.close();
/*  872 */           a = 1;
/*      */         } else {
/*      */           
/*  875 */           inti = 1;
/*  876 */           ps4 = conn.prepareStatement(sqlchecks);
/*      */ 
/*      */           
/*  879 */           ps4.setString(inti++, classfamily);
/*  880 */           ps4.setString(inti++, classson);
/*  881 */           rs4 = ps4.executeQuery();
/*  882 */           while (rs4.next()) {
/*  883 */             count = rs4.getInt(1);
/*      */           }
/*      */ 
/*      */           
/*  887 */           if (count == 0) {
/*  888 */             inti = 1;
/*  889 */             ps = conn.prepareStatement(sql);
/*  890 */             ps.setString(inti++, classfamily);
/*  891 */             ps.setString(inti++, classson);
/*  892 */             ps.executeUpdate();
/*  893 */             ps.close();
/*  894 */             ps4.close();
/*  895 */             rs4.close();
/*  896 */             ps.close();
/*  897 */             a = 3;
/*      */           } else {
/*  899 */             ps4.close();
/*  900 */             rs4.close();
/*  901 */             a = 5;
/*      */           
/*      */           }
/*      */         
/*      */         }
/*      */       
/*      */       }
/*      */       else {
/*      */         
/*  910 */         inti = 1;
/*  911 */         ps = conn.prepareStatement(sql);
/*  912 */         ps.setString(inti++, classfamily);
/*  913 */         ps.setString(inti++, classson);
/*  914 */         ps.executeUpdate();
/*  915 */         ps.close();
/*  916 */         a = 4;
/*      */       } 
/*      */ 
/*      */       
/*  920 */       ps3.close();
/*  921 */       rs3.close();
/*      */       
/*  923 */       conn.close();
/*  924 */     } catch (Exception e) {
/*      */       
/*  926 */       e.printStackTrace();
/*      */     } 
/*  928 */     return a;
/*      */   }
/*      */ 
/*      */ 
/*      */   
/*      */   public static boolean Myall(String mya, String myad, String mye, String mye2, String myid, String myemail, String myn, String myp, String mypaya, String mypaya2, String mypayb, String mypaye, String mypayh, String mypayid, String mypaym, String mypayz, String myu, String myx) {
/*  934 */     boolean a = false;
/*      */     try {
/*  936 */       int inti = 1;
/*  937 */       conn = JDBCconnect.getConnection();
/*  938 */       String sql = "insert into CONTRACTMY (myu,myp,mya,myn,mye,myx,myemail,myid,mye2,myad) values(?,?,?,?,?,?,?,?,?,?)";
/*  939 */       String sql2 = "insert into MYPAY (mypayb,mypaya,mypayz,mypayh,mypaye,mypaya2,mypaym,mypayid) values(?,?,?,?,?,?,?,?)";
/*  940 */       String sqlcheck = "select count(*)  from (select * from contractmy a join mypay b on a.myid=b.mypayid) where mypaym=? and myp=?  and myn=? ";
/*  941 */       PreparedStatement ps = null;
/*  942 */       PreparedStatement ps2 = null;
/*  943 */       PreparedStatement ps3 = null;
/*  944 */       int count = 0;
/*  945 */       ps3 = conn.prepareStatement(sqlcheck);
/*  946 */       ps3.setString(inti++, mypaym);
/*  947 */       ps3.setString(inti++, myp);
/*  948 */       ps3.setString(inti++, myn);
/*  949 */       ResultSet rs3 = ps3.executeQuery();
/*  950 */       while (rs3.next()) {
/*  951 */         count = rs3.getInt(1);
/*      */       }
/*      */       
/*  954 */       if (count == 0) {
/*  955 */         inti = 1;
/*  956 */         ps = conn.prepareStatement(sql);
/*  957 */         ps.setString(inti++, myu);
/*  958 */         ps.setString(inti++, myp);
/*  959 */         ps.setString(inti++, mya);
/*  960 */         ps.setString(inti++, myn);
/*  961 */         ps.setString(inti++, mye);
/*  962 */         ps.setString(inti++, myx);
/*  963 */         ps.setString(inti++, myemail);
/*  964 */         ps.setString(inti++, myid);
/*  965 */         ps.setString(inti++, mye2);
/*  966 */         ps.setString(inti++, myad);
/*  967 */         ps.executeUpdate();
/*  968 */         ps.close();
/*      */         
/*  970 */         inti = 1;
/*      */         
/*  972 */         ps2 = conn.prepareStatement(sql2);
/*  973 */         ps2.setString(inti++, mypayb);
/*  974 */         ps2.setString(inti++, mypaya);
/*  975 */         ps2.setString(inti++, mypayz);
/*  976 */         ps2.setString(inti++, mypayh);
/*  977 */         ps2.setString(inti++, mypaye);
/*  978 */         ps2.setString(inti++, mypaya2);
/*  979 */         ps2.setString(inti++, mypaym);
/*  980 */         ps2.setString(inti++, mypayid);
/*  981 */         ps2.executeUpdate();
/*  982 */         ps2.close();
/*  983 */         a = true;
/*      */       } else {
/*  985 */         a = false;
/*      */       } 
/*  987 */       ps3.close();
/*  988 */       rs3.close();
/*      */       
/*  990 */       conn.close();
/*  991 */     } catch (Exception e) {
/*      */       
/*  993 */       e.printStackTrace();
/*      */     } 
/*  995 */     return a;
/*      */   }
/*      */   public static int oppmycheck(String opppaym, String opppayid, String mypaym, String mypayid, String contractid, int statu) {
/*  998 */     int a = 0;
/*      */     try {
/* 1000 */       int inti = 1;
/* 1001 */       conn = JDBCconnect.getConnection();
/* 1002 */       String oppcheck = "select count(*) from OPPPAY where opppaym=? or opppayid=?";
/* 1003 */       String mycheck = "select count(*) from MYPAY where mypaym=? or mypayid=?";
/* 1004 */       String contractcheck = "select count(*) from dxtestcontract where contractid=? ";
/* 1005 */       PreparedStatement ps1 = null, ps2 = null, ps3 = null;
/* 1006 */       ResultSet rs1 = null, rs2 = null, rs3 = null;
/* 1007 */       int count1 = 0, count2 = 0, count3 = 0;
/* 1008 */       if (statu == 1) {
/* 1009 */         inti = 1; count1 = 0; count2 = 0;
/* 1010 */         ps3 = conn.prepareStatement(contractcheck);
/* 1011 */         ps3.setString(inti++, contractid);
/* 1012 */         rs3 = ps3.executeQuery();
/* 1013 */         while (rs3.next()) {
/* 1014 */           count3 = rs3.getInt(1);
/*      */         }
/* 1016 */         ps3.close();
/* 1017 */         rs3.close();
/* 1018 */       } else if (statu == 2) {
/* 1019 */         inti = 1; count2 = 0;
/* 1020 */         ps1 = conn.prepareStatement(oppcheck);
/* 1021 */         ps1.setString(inti++, opppaym);
/* 1022 */         ps1.setString(inti++, opppayid);
/* 1023 */         rs1 = ps1.executeQuery();
/* 1024 */         while (rs1.next()) {
/* 1025 */           count1 = rs1.getInt(1);
/*      */         }
/* 1027 */         inti = 1;
/* 1028 */         ps3 = conn.prepareStatement(contractcheck);
/* 1029 */         ps3.setString(inti++, contractid);
/* 1030 */         rs3 = ps3.executeQuery();
/* 1031 */         while (rs3.next()) {
/* 1032 */           count3 = rs3.getInt(1);
/*      */         }
/* 1034 */         ps1.close();
/* 1035 */         rs1.close();
/* 1036 */         ps3.close();
/* 1037 */         rs3.close();
/* 1038 */       } else if (statu == 3) {
/* 1039 */         inti = 1; count1 = 0;
/* 1040 */         ps2 = conn.prepareStatement(mycheck);
/* 1041 */         ps2.setString(inti++, mypaym);
/* 1042 */         ps2.setString(inti++, mypayid);
/* 1043 */         rs2 = ps2.executeQuery();
/* 1044 */         while (rs2.next()) {
/* 1045 */           count2 = rs2.getInt(1);
/*      */         }
/* 1047 */         inti = 1;
/* 1048 */         ps3 = conn.prepareStatement(contractcheck);
/* 1049 */         ps3.setString(inti++, contractid);
/* 1050 */         rs3 = ps3.executeQuery();
/* 1051 */         while (rs3.next()) {
/* 1052 */           count3 = rs3.getInt(1);
/*      */         }
/* 1054 */         ps2.close();
/* 1055 */         rs2.close();
/* 1056 */         ps3.close();
/* 1057 */         rs3.close();
/*      */       } else {
/* 1059 */         inti = 1;
/* 1060 */         ps1 = conn.prepareStatement(oppcheck);
/* 1061 */         ps1.setString(inti++, opppaym);
/* 1062 */         ps1.setString(inti++, opppayid);
/* 1063 */         rs1 = ps1.executeQuery();
/* 1064 */         while (rs1.next()) {
/* 1065 */           count1 = rs1.getInt(1);
/*      */         }
/* 1067 */         inti = 1;
/* 1068 */         ps2 = conn.prepareStatement(mycheck);
/* 1069 */         ps2.setString(inti++, mypaym);
/* 1070 */         ps2.setString(inti++, mypayid);
/* 1071 */         rs2 = ps2.executeQuery();
/* 1072 */         while (rs2.next()) {
/* 1073 */           count2 = rs2.getInt(1);
/*      */         }
/* 1075 */         inti = 1;
/* 1076 */         ps3 = conn.prepareStatement(contractcheck);
/* 1077 */         ps3.setString(inti++, contractid);
/* 1078 */         rs3 = ps3.executeQuery();
/* 1079 */         while (rs3.next()) {
/* 1080 */           count3 = rs3.getInt(1);
/*      */         }
/* 1082 */         ps1.close();
/* 1083 */         rs1.close();
/* 1084 */         ps2.close();
/* 1085 */         rs2.close();
/* 1086 */         ps3.close();
/* 1087 */         rs3.close();
/*      */       } 
/*      */       
/* 1090 */       if (count1 != 0) {
/* 1091 */         a = 1;
/* 1092 */       } else if (count2 != 0) {
/* 1093 */         a = 2;
/* 1094 */       } else if (count3 != 0) {
/* 1095 */         a = 4;
/*      */       } else {
/* 1097 */         a = 3;
/*      */       } 
/*      */ 
/*      */       
/* 1101 */       conn.close();
/* 1102 */     } catch (Exception e) {
/*      */       
/* 1104 */       e.printStackTrace();
/*      */     } 
/* 1106 */     return a;
/*      */   }
/*      */ 
/*      */   
/*      */   public static boolean Oppall(String oppa, String oppad, String oppe, String oppe2, String oppid, String oppmail, String oppn, String oppp, String oppu, String oppx, String opppaya, String opppaya2, String opppayb, String opppaye, String opppayh, String opppayid, String opppaym, String opppayz) {
/* 1111 */     boolean a = false;
/*      */     try {
/* 1113 */       int inti = 1;
/* 1114 */       conn = JDBCconnect.getConnection();
/*      */       
/* 1116 */       String sql = "insert into CONTRACTOPP (oppu,oppp,oppa,oppn,oppe,oppx,oppmail,oppid,oppe2,oppad) values(?,?,?,?,?,?,?,?,?,?)";
/* 1117 */       String sql2 = "insert into OPPPAY (opppayb,opppaya,opppayz,opppayh,opppaye,opppaya2,opppaym,opppayid) values(?,?,?,?,?,?,?,?)";
/* 1118 */       String sqlcheck = "select count(*) from OPPPAY where opppaym=? or opppayid=?";
/*      */ 
/*      */       
/* 1121 */       PreparedStatement ps = null;
/* 1122 */       PreparedStatement ps2 = null;
/* 1123 */       PreparedStatement ps3 = null;
/* 1124 */       int count = 0;
/* 1125 */       ps3 = conn.prepareStatement(sqlcheck);
/* 1126 */       ps3.setString(inti++, opppaym);
/* 1127 */       ps3.setString(inti++, opppayid);
/* 1128 */       ResultSet rs3 = ps3.executeQuery();
/* 1129 */       while (rs3.next()) {
/* 1130 */         count = rs3.getInt(1);
/*      */       }
/* 1132 */       System.out.println(count);
/* 1133 */       if (count == 0) {
/* 1134 */         inti = 1;
/* 1135 */         ps = conn.prepareStatement(sql);
/* 1136 */         ps.setString(inti++, oppu);
/* 1137 */         ps.setString(inti++, oppp);
/* 1138 */         ps.setString(inti++, oppa);
/* 1139 */         ps.setString(inti++, oppn);
/* 1140 */         ps.setString(inti++, oppe);
/* 1141 */         ps.setString(inti++, oppx);
/* 1142 */         ps.setString(inti++, oppmail);
/* 1143 */         ps.setString(inti++, oppid);
/* 1144 */         ps.setString(inti++, oppe2);
/* 1145 */         ps.setString(inti++, oppad);
/* 1146 */         ps.executeUpdate();
/* 1147 */         ps.close();
/*      */         
/* 1149 */         inti = 1;
/*      */         
/* 1151 */         ps2 = conn.prepareStatement(sql2);
/* 1152 */         ps2.setString(inti++, opppayb);
/* 1153 */         ps2.setString(inti++, opppaya);
/* 1154 */         ps2.setString(inti++, opppayz);
/* 1155 */         ps2.setString(inti++, opppayh);
/* 1156 */         ps2.setString(inti++, opppaye);
/* 1157 */         ps2.setString(inti++, opppaya2);
/* 1158 */         ps2.setString(inti++, opppaym);
/* 1159 */         ps2.setString(inti++, opppayid);
/* 1160 */         ps2.executeUpdate();
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */         
/* 1167 */         ps2.close();
/* 1168 */         a = true;
/*      */       } else {
/* 1170 */         a = false;
/*      */       } 
/*      */       
/* 1173 */       ps3.close();
/* 1174 */       rs3.close();
/* 1175 */       conn.close();
/* 1176 */     } catch (Exception e) {
/*      */       
/* 1178 */       e.printStackTrace();
/*      */     } 
/* 1180 */     return a;
/*      */   }
/*      */   
/*      */   public static List<Equ> classf() {
/* 1184 */   List<Equ>  list = new ArrayList<Equ>();
/*      */     try {
/* 1186 */       int inti = 1;
/* 1187 */       conn = JDBCconnect.getConnection();
/* 1188 */       String sql = "select distinct classfamily from CONTRACTCLASS";
/* 1189 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 1190 */       ResultSet rs = ps.executeQuery();
/* 1191 */       while (rs.next()) {
/* 1192 */         Equ equ = new Equ();
/* 1193 */         equ.setClassfamily(rs.getString("classfamily"));
/* 1194 */         list.add(equ);
/* 1195 */       }  rs.close();
/* 1196 */       ps.close();
/* 1197 */       conn.close();
/* 1198 */     } catch (Exception e) {
/*      */       
/* 1200 */       e.printStackTrace();
/*      */     } 
/* 1202 */     return list;
/*      */   }
/*      */   
/*      */   public static List<Equ> listson(String classfamily) {
/* 1206 */     List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/* 1208 */       int inti = 1;
/* 1209 */       conn = JDBCconnect.getConnection();
/* 1210 */       String sql = "select classson from  CONTRACTCLASS where classfamily=?";
/* 1211 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 1212 */       ps.setString(inti++, classfamily);
/*      */       
/* 1214 */       ResultSet rs = ps.executeQuery();
/* 1215 */       while (rs.next()) {
/* 1216 */         Equ equ = new Equ();
/* 1217 */         equ.setClassson(rs.getString("classson"));
/* 1218 */         list.add(equ);
/* 1219 */       }  rs.close();
/* 1220 */       ps.close();
/* 1221 */       conn.close();
/* 1222 */     } catch (Exception e) {
/* 1224 */       e.printStackTrace();
/*      */     } 
/* 1226 */     return list;
/*      */   }
/*      */   
/*      */   public static List<Equ> listpayname(String classfamily) {
/* 1230 */     List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/* 1232 */       int inti = 1;
/* 1233 */       conn = JDBCconnect.getConnection();
/* 1234 */       String sql = "select payname from  CONTRACTPAY where classfamily=?";
/* 1235 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 1236 */       ps.setString(inti++, classfamily);
/*      */       
/* 1238 */       ResultSet rs = ps.executeQuery();
/* 1239 */       while (rs.next()) {
/* 1240 */         Equ equ = new Equ();
/* 1241 */         equ.setPayname(rs.getString("payname"));
/* 1242 */         list.add(equ);
/* 1243 */       }  rs.close();
/* 1244 */       ps.close();
/* 1245 */       conn.close();
/* 1246 */     } catch (Exception e) {
/*      */       
/* 1248 */       e.printStackTrace();
/*      */     } 
/* 1250 */     return list;
/*      */   }
/*      */   
/*      */   public static String plan2(String contractid) {
/* 1254 */     String plan2 = null;
/*      */     try {
/* 1256 */       int inti = 1;
/* 1257 */       conn = JDBCconnect.getConnection();
/* 1258 */       String sql = "select planm2 from dxtestcontract where contractid=?";
/* 1259 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 1260 */       ps.setString(inti++, contractid);
/* 1261 */       ResultSet rs = ps.executeQuery();
/* 1262 */       while (rs.next()) {
/* 1263 */         plan2 = rs.getString(1);
/*      */       }
/* 1265 */       rs.close();
/* 1266 */       ps.close();
/* 1267 */       conn.close();
/* 1268 */     } catch (Exception e) {
/*      */       
/* 1270 */       e.printStackTrace();
/*      */     } 
/*      */     
/* 1273 */     return plan2;
/*      */   }
/*      */   
/*      */   public static String plan1(String contractid) {
/* 1277 */     String plan1 = null;
/*      */     try {
/* 1279 */       int inti = 1;
/* 1280 */       conn = JDBCconnect.getConnection();
/* 1281 */       String sql = "select plan1 from dxtestcontract where contractid=?";
/* 1282 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 1283 */       ps.setString(inti++, contractid);
/* 1284 */       ResultSet rs = ps.executeQuery();
/* 1285 */       while (rs.next()) {
/* 1286 */         plan1 = rs.getString(1);
/*      */       }
/* 1288 */       rs.close();
/* 1289 */       ps.close();
/* 1290 */       conn.close();
/* 1291 */     } catch (Exception e) {
/*      */       
/* 1293 */       e.printStackTrace();
/*      */     } 
/*      */     
/* 1296 */     return plan1;
/*      */   }
/*      */   
/*      */   public void upDataPlanm2(String planm2, String contractid) {
/*      */     try {
/* 1301 */       int inti = 1;
/* 1302 */       conn = JDBCconnect.getConnection();
/* 1303 */       String sql = "update dxtestcontract set  planm2=?  where contractid=?";
/* 1304 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 1305 */       ps.setString(inti++, planm2);
/* 1306 */       ps.setString(inti++, contractid);
/* 1307 */       ResultSet rs = ps.executeQuery();
/* 1308 */       ps.close();
/* 1309 */       conn.close();
/* 1310 */     } catch (Exception e) {
/*      */       
/* 1312 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */   
/*      */   public static List<Equ> contractList() {
/* 1317 */    List<Equ> contractList = new ArrayList<Equ>();
/*      */     try {
/* 1319 */       int inti = 1;
/* 1320 */       conn = JDBCconnect.getConnection();
/*      */       
/* 1322 */       String sql = "select CLASSSON,PLAN4,contractid,contractname,markdate,contractnlife,oppunit,camount from  dxtestcontract order by plandate2";
/* 1323 */       Statement st = conn.createStatement();
/* 1324 */       ResultSet rs = st.executeQuery(sql);
/* 1325 */       while (rs.next()) {
/* 1326 */         Equ equ = new Equ();
/* 1327 */         equ.setContractid(rs.getString("contractid"));
/* 1328 */         equ.setContractname(rs.getString("contractname"));
/* 1329 */         equ.setMarkdate(rs.getString("markdate"));
/* 1330 */         equ.setContractnlife(rs.getString("contractnlife"));
/* 1331 */         equ.setOppunit(rs.getString("oppunit"));
/* 1332 */         equ.setCamount(rs.getString("camount"));
					equ.setPlan4(rs.getString("plan4"));
					equ.setClassson(rs.getString("classson"));
/* 1333 */         contractList.add(equ);
/*      */       } 
/*      */ 
/*      */       
/* 1337 */       st.close();
/* 1338 */       rs.close();
/* 1339 */       conn.close();
/* 1340 */     } catch (Exception e) {
/*      */       
/* 1342 */       e.printStackTrace();
/*      */     } 
/* 1344 */     return contractList;
/*      */   }
/*      */   
/*      */   public static List<Equ> contractListMain(String sdate, String edate) {
/* 1348 */     List<Equ> contractList = new ArrayList<Equ>();
/*      */     try {
/* 1350 */       int inti = 1;
/* 1351 */       conn = JDBCconnect.getConnection();
/* 1352 */       String sql = "select CLASSSON,PLAN4,contractid,contractname,markdate,contractnlife,oppunit,camount from  dxtestcontract where markdate>='" + sdate + "' and markdate<'" + edate + "'  order by plandate2";
/* 1353 */       Statement st = conn.createStatement();
/* 1354 */       ResultSet rs = st.executeQuery(sql);
/* 1355 */       while (rs.next()) {
/* 1356 */         Equ equ = new Equ();
/* 1357 */         equ.setContractid(rs.getString("contractid"));
/* 1358 */         equ.setContractname(rs.getString("contractname"));
/* 1359 */         equ.setMarkdate(rs.getString("markdate"));
/* 1360 */         equ.setContractnlife(rs.getString("contractnlife"));
/* 1361 */         equ.setOppunit(rs.getString("oppunit"));
/* 1362 */         equ.setCamount(rs.getString("camount"));
					equ.setPlan4(rs.getString("plan4"));
					equ.setClassson(rs.getString("classson"));
/* 1363 */         contractList.add(equ);
/*      */       } 
/*      */ 
/*      */       
/* 1367 */       st.close();
/* 1368 */       rs.close();
/* 1369 */       conn.close();
/* 1370 */     } catch (Exception e) {
/*      */       
/* 1372 */       e.printStackTrace();
/*      */     } 
/* 1374 */     return contractList;
/*      */   }
/*      */ 
/*      */   
/*      */   public static int insertplan1(String paydate, String payname, String payporall, String classson, String contractid, int end) {
/* 1379 */     int a = 0;
/*      */     
/*      */     try {
/* 1382 */       int inti = 1;
/* 1383 */       conn = JDBCconnect.getConnection();
/* 1384 */       String sql = null;
/*      */       
/* 1386 */       sql = "update dxtestcontract set  PLANM1=?,SGMONEY=?,PLANDATE1=?,FINMONEY=?,PLANDATE2=?,statu=?  where contractid=?";
/* 1387 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 1388 */       ps.setString(inti++, payname);
/* 1389 */       ps.setString(inti++, payporall);
/* 1390 */       ps.setString(inti++, paydate);
/* 1391 */       ps.setString(inti++, classson);
/* 1392 */       ps.setString(inti++, paydate);
/* 1393 */       if (end == 1) {
/* 1394 */         ps.setString(inti++, "");
/*      */       } else {
/* 1396 */         ps.setString(inti++, "end");
/*      */       } 
/* 1398 */       ps.setString(inti++, contractid);
/* 1399 */       ResultSet rs = ps.executeQuery();
/*      */       
/* 1401 */       rs.close();
/* 1402 */       ps.close();
/* 1403 */       conn.close();
/* 1404 */       a = 2;
/* 1405 */     } catch (Exception e) {
/*      */       
/* 1407 */       e.printStackTrace();
/* 1408 */       a = 1;
/*      */     } 
/* 1410 */     return a;
/*      */   }
/*      */ 
/*      */ 
/*      */   
/*      */   public static int insertplan(int s, String plan, String paydate, String payname, String payporall, String classson, String contractid, int end) {
/* 1416 */     int a = 0;
/*      */     
/*      */     try {
/* 1419 */       int inti = 1;
/* 1420 */       conn = JDBCconnect.getConnection();
/* 1421 */       String sql = null;
/*      */       
/* 1423 */       sql = "update dxtestcontract set  PLANM1=?,SGMONEY=?,PLANDATE1=?,FINMONEY=?,PLANDATE2=?,statu=?,planm2=?  where contractid=?";
/* 1424 */       PreparedStatement ps = conn.prepareStatement(sql);
///* 1425 */       System.out.println(payname);
///* 1426 */       System.out.println(payporall);
///* 1427 */       System.out.println(paydate);
///* 1428 */       System.out.println(classson);
///* 1429 */       System.out.println(paydate);
///*      */       
///* 1431 */       System.out.println(plan);
///* 1432 */       System.out.println(contractid);
/*      */       
/* 1434 */       ps.setString(inti++, payname);
/* 1435 */       ps.setString(inti++, payporall);
/* 1436 */       ps.setString(inti++, paydate);
/* 1437 */       ps.setString(inti++, classson);
/* 1438 */       ps.setString(inti++, paydate);
/* 1439 */       if (end == 1) {
/* 1440 */         ps.setString(inti++, "");
/*      */       } else {
/* 1442 */         ps.setString(inti++, "end");
/*      */       } 
/* 1444 */       ps.setString(inti++, plan);
/* 1445 */       ps.setString(inti++, contractid);
/* 1446 */       ResultSet rs = ps.executeQuery();
/*      */       
/* 1448 */       rs.close();
/* 1449 */       ps.close();
/* 1450 */       conn.close();
/* 1451 */       a = 2;
/* 1452 */     } catch (Exception e) {
/*      */       
/* 1454 */       e.printStackTrace();
/* 1455 */       a = 1;
/*      */     } 
/* 1457 */     return a;
/*      */   }
/*      */ 
/*      */ 
/*      */   
/*      */   public static int insertDataContract(String contractid, String contractname, String oppunit, String markdate, String contractnlife, String myname, String oppname, String oppid, String myid, String plan1, String camount, String plan2, String plan3, String plan4) {
/* 1463 */     int a = 0;
/* 1464 */     String statu = "0";
/* 1465 */     SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
/* 1466 */     Date date = new Date(System.currentTimeMillis());
/*      */     
/* 1468 */     String now = formatter.format(date);
/* 1469 */     int compareTo = contractnlife.compareTo(now);
/* 1470 */     if (compareTo == -1) {
/* 1471 */       statu = "end";
/*      */     }
/*      */     try {
/* 1474 */       int inti = 1;
/* 1475 */       conn = JDBCconnect.getConnection();
/* 1476 */       String sql = "insert into dxtestcontract(contractid,contractname,oppunit,markdate,contractnlife,myname,oppname,statu,oppid,myid,plan1,camount,plan2,plan3,plan4) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
/*      */ 
/*      */       
/* 1479 */       String sql2 = "select * from dxtestcontract where contractid=?";
/* 1480 */       PreparedStatement ps2 = null;
/* 1481 */       PreparedStatement ps = conn.prepareStatement(sql2);
/* 1482 */       ps.setString(inti++, contractid);
/* 1483 */       ResultSet rs = ps.executeQuery();
/*      */       
/* 1485 */       if (rs.next()) {
/* 1486 */         a = 1;
/*      */       } else {
/*      */         
/* 1489 */         inti = 1;
/* 1490 */         ps2 = conn.prepareStatement(sql);
/* 1491 */         ps2.setString(inti++, contractid);
/* 1492 */         ps2.setString(inti++, contractname);
/* 1493 */         ps2.setString(inti++, oppunit);
/* 1494 */         ps2.setString(inti++, markdate);
/*      */         
/* 1496 */         ps2.setString(inti++, contractnlife);
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */         
/* 1503 */         ps2.setString(inti++, myname);
/* 1504 */         ps2.setString(inti++, oppname);
/* 1505 */         ps2.setString(inti++, statu);
/* 1506 */         ps2.setString(inti++, oppid);
/* 1507 */         ps2.setString(inti++, myid);
/* 1508 */         ps2.setString(inti++, plan1);
/* 1509 */         ps2.setString(inti++, camount);
/* 1510 */         ps2.setString(inti++, plan2);
/* 1511 */         ps2.setString(inti++, plan3);
/* 1512 */         ps2.setString(inti++, plan4);
/* 1513 */         ps2.executeUpdate();
/* 1514 */         a = 2;
/* 1515 */         ps2.close();
/*      */       } 
/* 1517 */       ps.close();
/* 1518 */       rs.close();
/* 1519 */       conn.close();
/* 1520 */     } catch (Exception e) {
/*      */       
/* 1522 */       e.printStackTrace();
/*      */     } 
/* 1524 */     return a;
/*      */   }
/*      */ }


/* Location:              D:\桌面\dxtest.war!\WEB-INF\classes\com\dao\ContractDao.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       1.0.7
 */