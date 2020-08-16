/*      */ package com.clas;
/*      */ 
/*      */ import com.clas.Equ;
/*      */ import com.clas.JDBCconnect;
/*      */ import java.sql.Connection;
/*      */ import java.sql.PreparedStatement;
/*      */ import java.sql.ResultSet;
/*      */ import java.sql.ResultSetMetaData;
/*      */ import java.sql.SQLException;
/*      */ import java.sql.Statement;
/*      */ import java.text.SimpleDateFormat;
/*      */ import java.util.ArrayList;
/*      */ import java.util.Date;
/*      */ import java.util.HashMap;
/*      */ import java.util.List;
/*      */ import java.util.Map;
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */ public class SelectAll
/*      */ {
/*      */   public static void updataT(int id, String stdate, String sn, String pos, String ip, String styp, String sname, String sid, String pname, String use, String ownname, String proname, String manname, String agename, String mantyp, String did, String port, String cpu, String memory, String disk, String syn, String oracle, String oth) {
/*      */     try {
/*   29 */       int inti = 1;
/*   30 */       Connection conn = JDBCconnect.getConnection();
/*   31 */       String sql = "update Dxtest set  stdate=?,sn=?,pos=?,ip=?,styp=?,sname=?,sid=?,pname=?,use=?,ownname=?,proname=?,manname=?,agename=?,mantyp=?,did=?,port=?,cpu=?,memory=?,disk=?,syn=?,oracle=?,oth=?  where id=?";
/*   32 */       PreparedStatement ps2 = null;
/*   33 */       ResultSet rs2 = null;
/*   34 */       ps2 = conn.prepareStatement(sql);
/*   35 */       ps2.setString(inti++, stdate);
/*   36 */       ps2.setString(inti++, sn);
/*   37 */       ps2.setString(inti++, pos);
/*   38 */       ps2.setString(inti++, ip);
/*   39 */       ps2.setString(inti++, styp);
/*   40 */       ps2.setString(inti++, sname);
/*   41 */       ps2.setString(inti++, sid);
/*   42 */       ps2.setString(inti++, pname);
/*   43 */       ps2.setString(inti++, use);
/*   44 */       ps2.setString(inti++, ownname);
/*   45 */       ps2.setString(inti++, proname);
/*   46 */       ps2.setString(inti++, manname);
/*   47 */       ps2.setString(inti++, agename);
/*   48 */       ps2.setString(inti++, mantyp);
/*   49 */       ps2.setString(inti++, did);
/*   50 */       ps2.setString(inti++, port);
/*   51 */       ps2.setString(inti++, cpu);
/*   52 */       ps2.setString(inti++, memory);
/*   53 */       ps2.setString(inti++, disk);
/*   54 */       ps2.setString(inti++, syn);
/*   55 */       ps2.setString(inti++, oracle);
/*   56 */       ps2.setString(inti++, oth);
/*   57 */       ps2.setInt(inti++, id);
/*   58 */       rs2 = ps2.executeQuery();
/*      */       
/*   60 */       ps2.close();
/*   61 */       rs2.close();
/*      */     
/*      */     }
/*   64 */     catch (Exception e) {
/*      */       
/*   66 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */   
/*      */   public static void uptestp(String stdate, String sn, String pos, String ip, String styp, String sname, String sid, String pname, String use, String ownname, String proname, String manname, String agename, String mantyp, String did, String port, String cpu, String memory, String disk, String syn, String oracle, String oth) {
/*      */     try {
/*   72 */       int inti = 1;
/*   73 */       Connection conn = JDBCconnect.getConnection();
/*   74 */       String sqlR = "select count(*) from Dxtesttemp";
/*   75 */       String sqlin = "insert into Dxtesttemp(stdate,sn,pos,ip,styp,sname,sid,pname,use,ownname,proname,manname,agename,mantyp,did,port,cpu,memory,disk,syn,oracle,oth) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
/*   76 */       String sql = "update Dxtesttemp set  stdate=?,sn=?,pos=?,ip=?,styp=?,sname=?,sid=?,pname=?,use=?,ownname=?,proname=?,manname=?,agename=?,mantyp=?,did=?,port=?,cpu=?,memory=?,disk=?,syn=?,oracle=?,oth=?  where rownum=1";
/*   77 */       PreparedStatement ps1 = null;
/*   78 */       PreparedStatement ps2 = null;
/*   79 */       PreparedStatement ps3 = null;
/*   80 */       ps1 = conn.prepareStatement(sqlR);
/*   81 */       ResultSet rs1 = ps1.executeQuery();
/*   82 */       ResultSet rs2 = null;
/*   83 */       ResultSet rs3 = null;
/*   84 */       int count = 0;
/*   85 */       if (rs1.next()) {
/*   86 */         count = rs1.getInt("count(*)");
/*      */       }
/*      */ 
/*      */       
/*   90 */       if (count > 0) {
/*   91 */         inti = 1;
/*   92 */         conn = JDBCconnect.getConnection();
/*   93 */         ps2 = conn.prepareStatement(sql);
/*   94 */         ps2.setString(inti++, stdate);
/*   95 */         ps2.setString(inti++, sn);
/*   96 */         ps2.setString(inti++, pos);
/*   97 */         ps2.setString(inti++, ip);
/*   98 */         ps2.setString(inti++, styp);
/*   99 */         ps2.setString(inti++, sname);
/*  100 */         ps2.setString(inti++, sid);
/*  101 */         ps2.setString(inti++, pname);
/*  102 */         ps2.setString(inti++, use);
/*  103 */         ps2.setString(inti++, ownname);
/*  104 */         ps2.setString(inti++, proname);
/*  105 */         ps2.setString(inti++, manname);
/*  106 */         ps2.setString(inti++, agename);
/*  107 */         ps2.setString(inti++, mantyp);
/*  108 */         ps2.setString(inti++, did);
/*  109 */         ps2.setString(inti++, port);
/*  110 */         ps2.setString(inti++, cpu);
/*  111 */         ps2.setString(inti++, memory);
/*  112 */         ps2.setString(inti++, disk);
/*  113 */         ps2.setString(inti++, syn);
/*  114 */         ps2.setString(inti++, oracle);
/*  115 */         ps2.setString(inti++, oth);
/*  116 */         rs2 = ps2.executeQuery();
/*      */ 
/*      */         
/*  119 */         ps2.close();
/*  120 */         rs2.close();
/*      */       } else {
/*      */         
/*  123 */         inti = 1;
/*  124 */         conn = JDBCconnect.getConnection();
/*  125 */         ps3 = conn.prepareStatement(sqlin);
/*  126 */         ps3.setString(inti++, stdate);
/*  127 */         ps3.setString(inti++, sn);
/*  128 */         ps3.setString(inti++, pos);
/*  129 */         ps3.setString(inti++, ip);
/*  130 */         ps3.setString(inti++, styp);
/*  131 */         ps3.setString(inti++, sname);
/*  132 */         ps3.setString(inti++, sid);
/*  133 */         ps3.setString(inti++, pname);
/*  134 */         ps3.setString(inti++, use);
/*  135 */         ps3.setString(inti++, ownname);
/*  136 */         ps3.setString(inti++, proname);
/*  137 */         ps3.setString(inti++, manname);
/*  138 */         ps3.setString(inti++, agename);
/*  139 */         ps3.setString(inti++, mantyp);
/*  140 */         ps3.setString(inti++, did);
/*  141 */         ps3.setString(inti++, port);
/*  142 */         ps3.setString(inti++, cpu);
/*  143 */         ps3.setString(inti++, memory);
/*  144 */         ps3.setString(inti++, disk);
/*  145 */         ps3.setString(inti++, syn);
/*  146 */         ps3.setString(inti++, oracle);
/*  147 */         ps3.setString(inti++, oth);
/*  148 */         rs3 = ps3.executeQuery();
/*      */         
/*  150 */         ps3.close();
/*  151 */         rs3.close();
/*      */       } 
/*      */       
/*  154 */       ps1.close();
/*  155 */       rs1.close();
/*  156 */       conn.close();
/*  157 */     } catch (Exception e) {
/*      */       
/*  159 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */   
/*      */   public static List<Equ> testformall() {
/*  164 */    List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/*  166 */       int inti = 1;
/*  167 */       Connection conn = JDBCconnect.getConnection();
/*  168 */       String sql = "select * from dxtesttemp where rownum=1";
/*  169 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  170 */       ps = conn.prepareStatement(sql);
/*  171 */       ResultSet rs = ps.executeQuery();
/*  172 */       while (rs.next()) {
/*  173 */         Equ equ = new Equ();
/*  174 */         equ.setPname(rs.getString("pname"));
/*  175 */         equ.setSn(rs.getString("sn"));
/*  176 */         equ.setPos(rs.getString("pos"));
/*  177 */         equ.setIp(rs.getString("ip"));
/*  178 */         equ.setStyp(rs.getString("styp"));
/*  179 */         equ.setSname(rs.getString("sname"));
/*  180 */         equ.setSid(rs.getString("sid"));
/*  181 */         equ.setDid(rs.getString("did"));
/*  182 */         equ.setStdate(rs.getString("stdate"));
/*  183 */         equ.setUse(rs.getString("use"));
/*  184 */         equ.setOwnname(rs.getString("ownname"));
/*  185 */         equ.setProname(rs.getString("proname"));
/*  186 */         equ.setManname(rs.getString("manname"));
/*  187 */         equ.setAgename(rs.getString("agename"));
/*  188 */         equ.setMantyp(rs.getString("mantyp"));
/*  189 */         equ.setPort(rs.getString("port"));
/*  190 */         equ.setCpu(rs.getString("cpu"));
/*  191 */         equ.setMemory(rs.getString("memory"));
/*  192 */         equ.setDisk(rs.getString("disk"));
/*  193 */         equ.setSyn(rs.getString("syn"));
/*  194 */         equ.setOracle(rs.getString("oracle"));
/*  195 */         equ.setOth(rs.getString("oth"));
/*  196 */         list.add(equ);
/*      */       } 
/*      */       
/*  199 */       rs.close();
/*  200 */       ps.close();
/*  201 */       conn.close();
/*  202 */     } catch (Exception e) {
/*      */       
/*  204 */       e.printStackTrace();
/*      */     } 
/*  206 */     return list;
/*      */   }
/*      */   
/*      */   public static void UpPlanServlet(String sdate, String edate, String statu, String username) {
/*      */     try {
/*  211 */       int inti = 1;
/*  212 */       Connection conn = JDBCconnect.getConnection();
/*  213 */       String sql = "update dxtestwork set  username=?  where sdate=? and edate=? and statu=?";
/*      */ 
/*      */ 
/*      */       
/*  217 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  218 */       ps = conn.prepareStatement(sql);
/*  219 */       ps.setString(inti++, username);
/*  220 */       ps.setString(inti++, sdate);
/*  221 */       ps.setString(inti++, edate);
/*  222 */       ps.setString(inti++, statu);
/*      */       
/*  224 */       ResultSet rs = ps.executeQuery("update dxtestwork set  username='" + username + "'  where sdate='" + sdate + "' and edate='" + edate + "' and statu='" + statu + "'");
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */       
/*  231 */       rs.close();
/*  232 */       ps.close();
/*  233 */       conn.close();
/*  234 */     } catch (Exception e) {
/*      */       
/*  236 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */   
/*      */   public static List<String> typeList() {
/*  241 */   List<String>  list = new ArrayList<String>();
/*      */     try {
/*  243 */       int inti = 1;
/*  244 */       Connection conn = JDBCconnect.getConnection();
/*      */       
/*  246 */       String sql = "select styp from dxtest";
/*  247 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  248 */       ResultSet rs = ps.executeQuery();
/*  249 */       while (rs.next()) {
/*  250 */         String a = rs.getString(1);
/*  251 */         if (a == null) {
/*  252 */           a = "";
/*      */         }
/*  254 */         a = a.substring(0, a.indexOf("/"));
/*  255 */         if (a.length() == 0) {
/*      */           continue;
/*      */         }
/*  258 */         if (list.indexOf(a) == -1) {
/*  259 */           list.add(a);
/*      */         }
/*      */       } 
/*      */ 
/*      */ 
/*      */ 
/*      */       
/*  266 */       rs.close();
/*  267 */       ps.close();
/*  268 */       conn.close();
/*  269 */     } catch (Exception e) {
/*      */       
/*  271 */       e.printStackTrace();
/*      */     } 
/*      */     
/*  274 */     return list;
/*      */   }
/*      */ 
/*      */   
/*      */   public static List<Equ> usersall() {
/*  279 */   List<Equ>  list = new ArrayList<Equ>();
/*      */     try {
/*  281 */       int inti = 1;
/*  282 */       Connection conn = JDBCconnect.getConnection();
/*  283 */       String sql = "select * from DXTESTUSER where userid is not null";
/*  284 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  285 */       ps = conn.prepareStatement(sql);
/*  286 */       ResultSet rs = ps.executeQuery();
/*  287 */       while (rs.next()) {
/*  288 */         Equ equ = new Equ();
/*  289 */         equ.setUserid(rs.getString("userid"));
/*  290 */         equ.setUsername(rs.getString("username"));
/*  291 */         equ.setUserpwd(rs.getString("userpwd"));
/*  292 */         equ.setAut(rs.getInt("aut"));
/*  293 */         equ.setDay(rs.getString("day"));
/*  294 */         equ.setEdi(rs.getString("edi"));
/*  295 */         equ.setDel(rs.getString("del"));
/*  296 */         equ.setCon(rs.getString("con"));
/*  297 */         equ.setConedit(rs.getString("conedit"));
/*  298 */         equ.setCondel(rs.getString("condel"));
/*  299 */         equ.setAddevent(rs.getString("addevent"));
/*  300 */         equ.setLevela(rs.getString("levela"));
/*  301 */         list.add(equ);
/*  302 */       }  rs.close();
/*  303 */       ps.close();
/*  304 */       conn.close();
/*  305 */     } catch (Exception e) {
/*      */       
/*  307 */       e.printStackTrace();
/*      */     } 
/*  309 */     return list;
/*      */   }
/*      */   
/*      */   public static boolean updataAuthor(String username, String con, String addevent, String levela, String day) {
/*  313 */     boolean a = false;
/*      */     try {
/*  315 */       int inti = 1;
/*  316 */       Connection conn = JDBCconnect.getConnection();
/*  317 */       String sql = "update DXTESTUSER set  con=?,addevent=?,levela=?,day=?  where username=?";
/*  318 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  319 */       ps = conn.prepareStatement(sql);
/*  320 */       ps.setString(inti++, con);
/*  321 */       ps.setString(inti++, addevent);
/*  322 */       ps.setString(inti++, levela);
/*  323 */       ps.setString(inti++, day);
/*  324 */       ps.setString(inti++, username);
/*      */       
/*  326 */       ResultSet rs = ps.executeQuery();
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */       
/*  332 */       ps.close();
/*  333 */       conn.close();
/*  334 */       a = true;
/*  335 */     } catch (Exception e) {
/*      */       
/*  337 */       e.printStackTrace();
/*  338 */       a = false;
/*      */     } 
/*  340 */     return a;
/*      */   }
/*      */   
/*      */   public static boolean updataUser(String userid, String userpwd, String username, String con, String addevent, String levela) {
/*  344 */     boolean a = false;
/*      */     try {
/*  346 */       int inti = 1;
/*  347 */       Connection conn = JDBCconnect.getConnection();
/*  348 */       String sql = "insert into DXTESTUSER (userid,username,userpwd,aut,day,edi,del,con,addevent,levela) values(?,?,?,'2','7','1','1',?,?,?)";
/*  349 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  350 */       ps.setString(inti++, userid);
/*  351 */       ps.setString(inti++, username);
/*  352 */       ps.setString(inti++, userpwd);
/*  353 */       ps.setString(inti++, con);
/*  354 */       ps.setString(inti++, addevent);
/*  355 */       ps.setString(inti++, levela);
/*  356 */       ResultSet rs = ps.executeQuery();
/*  357 */       ps.close();
/*  358 */       conn.close();
/*  359 */       a = true;
/*  360 */     } catch (Exception e) {
/*      */       
/*  362 */       e.printStackTrace();
/*      */     } 
/*  364 */     return a;
/*      */   }
/*      */   
/*      */   public static List<Equ> searchAuthor(String username) {
/*  368 */     List<Equ> list = new ArrayList<Equ>(); try {
/*  369 */       int inti = 1;
/*  370 */       Connection conn = JDBCconnect.getConnection();
/*      */       
/*  372 */       String sql = "select * from DXTESTUSER where username=?";
/*  373 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  374 */       ps.setString(inti++, username);
/*      */       
/*  376 */       ResultSet rs = ps.executeQuery();
/*  377 */       while (rs.next()) {
/*  378 */         Equ equ = new Equ();
/*  379 */         equ.setUserid(rs.getString("userid"));
/*  380 */         equ.setUsername(rs.getString("username"));
/*  381 */         equ.setAut(rs.getInt("aut"));
/*  382 */         equ.setDay(rs.getString("day"));
/*  383 */         equ.setCon(rs.getString("con"));
/*  384 */         equ.setConedit(rs.getString("conedit"));
/*  385 */         equ.setCondel(rs.getString("condel"));
/*  386 */         equ.setAddevent(rs.getString("addevent"));
/*  387 */         equ.setLevela(rs.getString("levela"));
/*  388 */         list.add(equ);
/*  389 */       }  rs.close();
/*  390 */       ps.close();
/*  391 */       conn.close();
/*      */     }
/*  393 */     catch (Exception e) {
/*      */       
/*  395 */       e.printStackTrace();
/*      */     } 
/*  397 */     return list;
/*      */   }
/*      */   
/*      */   public static List<Equ> listTemp() {
/*  401 */   List<Equ>  list = new ArrayList<Equ>();
/*  402 */     int id = 1;
/*      */     try {
/*  404 */       Connection conn = JDBCconnect.getConnection();
/*      */       
/*  406 */       String sql = "select * from dxtesttemp where rownum=1";
/*  407 */       Statement stmt = conn.createStatement();
/*  408 */       ResultSet rs = stmt.executeQuery(sql);
/*      */       
/*  410 */       while (rs.next()) {
/*      */         
/*  412 */         Equ equ = new Equ();
/*      */         
/*  414 */         equ.setId(id);
/*  415 */         equ.setSid(rs.getString("sid"));
/*  416 */         equ.setDid(rs.getString("did"));
/*  417 */         equ.setStdate(rs.getString("stdate"));
/*  418 */         equ.setUse(rs.getString("use"));
/*  419 */         equ.setOwnname(rs.getString("ownname"));
/*  420 */         equ.setProname(rs.getString("proname"));
/*  421 */         equ.setManname(rs.getString("manname"));
/*  422 */         equ.setAgename(rs.getString("agename"));
/*  423 */         equ.setMantyp(rs.getString("mantyp"));
/*  424 */         equ.setPort(rs.getString("port"));
/*  425 */         equ.setCpu(rs.getString("cpu"));
/*  426 */         equ.setMemory(rs.getString("memory"));
/*  427 */         equ.setDisk(rs.getString("disk"));
/*  428 */         equ.setSyn(rs.getString("syn"));
/*  429 */         equ.setOracle(rs.getString("oracle"));
/*  430 */         equ.setOth(rs.getString("oth"));
/*  431 */         equ.setPname(rs.getString("pname"));
/*  432 */         equ.setSn(rs.getString("sn"));
/*  433 */         equ.setPos(rs.getString("pos"));
/*  434 */         equ.setIp(rs.getString("ip"));
/*  435 */         equ.setStyp(rs.getString("styp"));
/*  436 */         equ.setSname(rs.getString("sname"));
/*      */ 
/*      */         
/*  439 */         list.add(equ);
/*      */       } 
/*  441 */       rs.close();
/*  442 */       conn.close();
/*  443 */     } catch (Exception exception) {}
/*      */ 
/*      */     
/*  446 */     return list;
/*      */   }
/*      */   
/*      */   public static boolean insertItem(String sql) {
//	insert into classinfo(classid,classname) values(01,'测试一班');
/*  450 */     boolean a = false;
/*      */     try {
/*  452 */       Connection conn = JDBCconnect.getConnection();
/*  453 */       conn.setAutoCommit(true);
/*      */       
/*  455 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  456 */       ResultSet rs = ps.executeQuery();
/*  457 */       a = true;
/*  458 */       rs.close();
/*  459 */       ps.close();
/*  460 */       conn.close();
/*  461 */     } catch (Exception e) {
/*      */       
/*  463 */       e.printStackTrace();
/*      */     } 
/*  465 */     return a;
/*      */   }
/*      */   
/*      */   public static boolean Del(String sql) {
/*  469 */     boolean a = false;
/*      */     
/*      */     try {
/*  472 */       Connection conn = JDBCconnect.getConnection();
/*  473 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  474 */       ResultSet rs = ps.executeQuery();
/*  475 */       a = true;
/*  476 */       rs.close();
/*  477 */       ps.close();
/*  478 */       conn.close();
/*  479 */     } catch (Exception e) {
/*      */       
/*  481 */       e.printStackTrace();
/*      */     } 
/*  483 */     return a;
/*      */   }
/*      */   
/*      */   public static boolean Update(String sql) {
/*  487 */     boolean a = false;
///*      */     update studentinfo set studentname='李五',studentsex='女',studentage=15 where studentid=2;
/*      */     try {
/*  490 */       Connection conn = JDBCconnect.getConnection();
/*  491 */       conn.setAutoCommit(true);
/*  492 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  493 */       int rs = ps.executeUpdate();
/*      */       
/*  495 */       a = true;
/*      */       
/*  497 */       ps.close();
/*  498 */       conn.close();
/*  499 */     } catch (Exception e) {
/*  500 */       e.printStackTrace();
/*      */     } 
/*      */     
/*  503 */     return a;
/*      */   }
/*      */ 
/*      */ 
/*      */   
/*      */   public boolean Updata_PlanSub(String a, String b, String c, String d, String e, String f, String g) {
/*  509 */     String sql = "update PLANSUB set  PAYNAME=?,PAYPOR=?,STATU_SUB=?,REALPAY=?,PAYPLAN=?  where contractid=? and PAYNAME=?";
/*  510 */     int i = 1;
/*  511 */     PreparedStatement ps = null;
/*      */     try {
/*  513 */       Connection conn = JDBCconnect.getConnection();
/*      */       
/*  515 */       ps = conn.prepareStatement(sql);
/*  516 */       ps.setString(i++, a);
/*  517 */       ps.setString(i++, b);
/*  518 */       ps.setString(i++, c);
/*  519 */       ps.setString(i++, d);
/*  520 */       ps.setString(i++, e);
/*  521 */       ps.setString(i++, f);
/*  522 */       ps.setString(i++, g);
/*  523 */       ResultSet rs = ps.executeQuery();
/*      */       
/*  525 */       ps.close();
/*  526 */       rs.close();
/*  527 */       conn.close();
/*      */     
/*      */     }
/*  530 */     catch (Exception exception) {
/*  531 */       exception.printStackTrace();
/*      */     } 
/*      */ 
/*      */     
/*  535 */     return true;
/*      */   }
/*      */ 
/*      */   
/*      */   public static String getKey(String sql, String key) {
/*  540 */     String a = "";
/*      */     
/*      */     try {
/*  543 */       Connection conn = JDBCconnect.getConnection();
/*  544 */       conn.setAutoCommit(true);
/*  545 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  546 */       ps = conn.prepareStatement(sql);
/*      */ 
/*      */       
/*  549 */       ResultSet rs = ps.executeQuery();
/*  550 */       if (rs.next()) {
/*  551 */         a = rs.getString(key);
/*      */       }
/*      */       
/*  554 */       rs.close();
/*  555 */       ps.close();
/*  556 */       conn.close();
/*  557 */     } catch (Exception e) {
/*      */       
/*  559 */       a = "";
/*      */     } 
/*  561 */     return a;
/*      */   }
/*      */   
/*      */   public static int getCount(String sql) {
/*  565 */     int a = 0;
/*      */     
/*      */     try {
/*  568 */       Connection conn = JDBCconnect.getConnection();
/*  569 */       conn.setAutoCommit(true);
/*      */       
/*  571 */       PreparedStatement ps = conn.prepareStatement(sql);
/*      */ 
/*      */       
/*  574 */       ResultSet rs = ps.executeQuery();
/*  575 */       while (rs.next()) {
/*  576 */         a = rs.getInt(1);
/*      */       }
/*      */       
/*  579 */       rs.close();
/*  580 */       ps.close();
/*  581 */       conn.close();
/*      */     }
/*  583 */     catch (Exception e) {
/*      */       
/*  585 */       e.printStackTrace();
/*      */     } 
/*  587 */     return a;
/*      */   }
/*      */ 
/*      */   
/*      */   public static int getRownum(String sql) {
/*  592 */     int a = 0;
/*      */     try {
/*  594 */       Connection conn = JDBCconnect.getConnection();
/*  595 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  596 */       ps = conn.prepareStatement(sql);
/*      */ 
/*      */       
/*  599 */       ResultSet rs = ps.executeQuery();
/*  600 */       if (rs.next()) {
/*  601 */         a = rs.getInt("id");
/*      */       }
/*      */       
/*  604 */       rs.close();
/*  605 */       ps.close();
/*  606 */       conn.close();
/*  607 */     } catch (Exception e) {
/*      */       
/*  609 */       a = 0;
/*      */     } 
/*  611 */     return a;
/*      */   }
/*      */   
/*      */   public static boolean deluser(String username) {
/*  615 */     boolean deluser = false;
/*      */     try {
/*  617 */       int inti = 1;
/*  618 */       Connection conn = JDBCconnect.getConnection();
/*  619 */       String sql = "delete from DXTESTUSER where username=?";
/*  620 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  621 */       ps.setString(inti++, username);
/*  622 */       ResultSet rs = ps.executeQuery();
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */       
/*  628 */       deluser = true;
/*  629 */       ps.close();
/*  630 */       conn.close();
/*  631 */     } catch (Exception e) {
/*      */       
/*  633 */       e.printStackTrace();
/*  634 */       deluser = false;
/*      */     } 
/*  636 */     return deluser;
/*      */   }
/*      */ 
/*      */   
/*      */   public static List<Equ> delEqu(String id) {
/*  641 */     List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/*  643 */       int inti = 1;
/*  644 */       Connection conn = JDBCconnect.getConnection();
/*  645 */       String sql = "delete from DXTEST where id=?";
/*  646 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  647 */       ps = conn.prepareStatement(sql);
/*  648 */       ps.setString(inti++, id);
/*  649 */       ResultSet rs = ps.executeQuery();
/*  650 */       Statement stmt = conn.createStatement();
/*  651 */       sql = "select * from dxtest ";
/*  652 */       rs = stmt.executeQuery(sql);
/*  653 */       while (rs.next()) {
/*  654 */         Equ equ = new Equ();
/*  655 */         equ.setId(rs.getInt("id"));
/*  656 */         equ.setSid(rs.getString("sid"));
/*  657 */         equ.setStdate(rs.getString("stdate"));
/*  658 */         equ.setSdate(rs.getString("sdate"));
/*  659 */         equ.setEdate(rs.getString("edate"));
/*  660 */         equ.setRedate(rs.getString("redate"));
/*  661 */         equ.setPname(rs.getString("pname"));
/*  662 */         equ.setUse(rs.getString("use"));
/*  663 */         equ.setOwnname(rs.getString("ownname"));
/*  664 */         equ.setProname(rs.getString("proname"));
/*  665 */         equ.setManname(rs.getString("manname"));
/*  666 */         equ.setAgename(rs.getString("agename"));
/*  667 */         equ.setMantyp(rs.getString("mantyp"));
/*  668 */         equ.setSname(rs.getString("sname"));
/*  669 */         equ.setStyp(rs.getString("styp"));
/*  670 */         equ.setPos(rs.getString("pos"));
/*  671 */         equ.setIp(rs.getString("ip"));
/*  672 */         equ.setPort(rs.getString("port"));
/*  673 */         equ.setCpu(rs.getString("cpu"));
/*  674 */         equ.setMemory(rs.getString("memory"));
/*  675 */         equ.setDisk(rs.getString("disk"));
/*  676 */         equ.setSyn(rs.getString("syn"));
/*  677 */         equ.setOracle(rs.getString("oracle"));
/*  678 */         equ.setSn(rs.getString("sn"));
/*  679 */         equ.setOth(rs.getString("oth"));
/*  680 */         equ.setSroot(rs.getString("sroot"));
/*  681 */         equ.setSpwd(rs.getString("spwd"));
/*  682 */         equ.setOroot(rs.getString("oroot"));
/*  683 */         equ.setOpwd(rs.getString("opwd"));
/*  684 */         equ.setAroot(rs.getString("aroot"));
/*  685 */         equ.setApwd(rs.getString("apwd"));
/*  686 */         equ.setTitle(rs.getString("title"));
/*  687 */         equ.setUrl(rs.getString("url"));
/*  688 */         equ.setDid(rs.getString("did"));
/*  689 */         list.add(equ);
/*      */       } 
/*      */       
/*  692 */       rs.close();
/*  693 */       stmt.close();
/*  694 */       ps.close();
/*  695 */       conn.close();
/*  696 */     } catch (Exception e) {
/*      */       
/*  698 */       e.printStackTrace();
/*      */     } 
/*  700 */     return list;
/*      */   }
/*      */   public static List<Equ> allEqus() {
/*  703 */    List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/*  705 */       Connection conn = JDBCconnect.getConnection();
/*      */ 
/*      */       
/*  708 */       Statement stmt = conn.createStatement();
/*      */ 
/*      */       
/*  711 */       String sql = "select * from dxtest WHERE sname!='虚拟机'";
/*  712 */       ResultSet rs = stmt.executeQuery(sql);
/*      */ 
/*      */ 
/*      */       
/*  716 */       while (rs.next()) {
/*  717 */         Equ equ = new Equ();
/*  718 */         equ.setId(rs.getInt("id"));
/*  719 */         equ.setSid(rs.getString("sid"));
/*  720 */         equ.setStdate(rs.getString("stdate"));
/*  721 */         equ.setSdate(rs.getString("sdate"));
/*  722 */         equ.setEdate(rs.getString("edate"));
/*  723 */         equ.setRedate(rs.getString("redate"));
/*  724 */         equ.setPname(rs.getString("pname"));
/*  725 */         equ.setUse(rs.getString("use"));
/*  726 */         equ.setOwnname(rs.getString("ownname"));
/*  727 */         equ.setProname(rs.getString("proname"));
/*  728 */         equ.setManname(rs.getString("manname"));
/*  729 */         equ.setAgename(rs.getString("agename"));
/*  730 */         equ.setMantyp(rs.getString("mantyp"));
/*  731 */         equ.setSname(rs.getString("sname"));
/*  732 */         equ.setStyp(rs.getString("styp"));
/*  733 */         equ.setPos(rs.getString("pos"));
/*  734 */         equ.setIp(rs.getString("ip"));
/*  735 */         equ.setPort(rs.getString("port"));
/*  736 */         equ.setCpu(rs.getString("cpu"));
/*  737 */         equ.setMemory(rs.getString("memory"));
/*  738 */         equ.setDisk(rs.getString("disk"));
/*  739 */         equ.setSyn(rs.getString("syn"));
/*  740 */         equ.setOracle(rs.getString("oracle"));
/*  741 */         equ.setSn(rs.getString("sn"));
/*  742 */         equ.setOth(rs.getString("oth"));
/*  743 */         equ.setSroot(rs.getString("sroot"));
/*  744 */         equ.setSpwd(rs.getString("spwd"));
/*  745 */         equ.setOroot(rs.getString("oroot"));
/*  746 */         equ.setOpwd(rs.getString("opwd"));
/*  747 */         equ.setAroot(rs.getString("aroot"));
/*  748 */         equ.setApwd(rs.getString("apwd"));
/*  749 */         equ.setTitle(rs.getString("title"));
/*  750 */         equ.setUrl(rs.getString("url"));
/*  751 */         equ.setDid(rs.getString("did"));
/*      */         
/*  753 */         list.add(equ);
/*      */       } 
/*      */ 
/*      */       
/*  757 */       rs.close();
/*      */       
/*  759 */       stmt.close();
/*      */       
/*  761 */       conn.close();
/*      */     
/*      */     }
/*  764 */     catch (Exception e) {
/*      */       
/*  766 */       e.printStackTrace();
/*      */     } 
/*      */     
/*  769 */     return list;
/*      */   }
/*      */ 
/*      */   
/*      */   public static void deletePlan(String username, String sdate, String edate, String statu) {
/*      */     try {
/*  775 */       int intid = 1;
/*  776 */       Connection conn = JDBCconnect.getConnection();
/*      */       
/*  778 */       String sql = "delete from dxtestwork where username=? and sdate=? and edate=? and statu=? ";
/*      */       
/*  780 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  781 */       ps.setString(intid++, username);
/*  782 */       ps.setString(intid++, sdate);
/*  783 */       ps.setString(intid++, edate);
/*  784 */       ps.setString(intid++, statu);
/*      */       
/*  786 */       ResultSet rs = ps.executeQuery();
/*      */       
/*  788 */       ps.close();
/*  789 */       rs.close();
/*  790 */       conn.close();
/*      */     
/*      */     }
/*  793 */     catch (Exception e) {
/*      */       
/*  795 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */   
/*      */   public static List<Equ> userAddListRe(String userid) {
/*  800 */     List<Equ> listus = new ArrayList<Equ>();
/*      */     try {
/*  802 */       int intid = 1;
/*  803 */       Connection conn = JDBCconnect.getConnection();
/*  804 */       String sql = "select * from dxtestuser where userid=? ";
/*  805 */       PreparedStatement ps = null;
/*  806 */       ps = conn.prepareStatement(sql);
/*  807 */       ps.setString(intid++, userid);
/*  808 */       ResultSet rs = ps.executeQuery();
/*      */       
/*  810 */       while (rs.next()) {
/*  811 */         Equ equ = new Equ();
/*  812 */         equ.setUsername(rs.getString("username"));
/*  813 */         equ.setUserpwd(rs.getString("userpwd"));
/*  814 */         equ.setAut(rs.getInt("aut"));
/*  815 */         equ.setUserid(rs.getString("userid"));
/*  816 */         listus.add(equ);
/*      */       } 
/*      */       
/*  819 */       rs.close();
/*  820 */       ps.close();
/*  821 */       conn.close();
/*      */     }
/*  823 */     catch (Exception e) {
/*      */       
/*  825 */       e.printStackTrace();
/*      */     } 
/*      */     
/*  828 */     return listus;
/*      */   }
/*      */ 
/*      */   
/*      */   public static int daydf() {
/*  833 */   int dd=0;
/*      */     try {
/*  835 */       int inti = 1;
/*  836 */       Connection conn = JDBCconnect.getConnection();
/*      */       
/*  838 */       String sql = "select day from DXTESTUSER where ##=?";
/*  839 */       PreparedStatement ps = conn.prepareStatement(sql);
/*  840 */       ps = conn.prepareStatement(sql);
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */       
/*  849 */       ps.close();
/*  850 */       conn.close();
/*  851 */     } catch (Exception exception) {}
/*      */ 
/*      */ 
/*      */     
/*  855 */     return dd;
/*      */   }
/*      */ 
/*      */   
/*      */   public static List<Equ> userAddList(String username, String userpwd) {
/*  860 */     List<Equ> listus = new ArrayList<Equ>();
/*      */     
/*      */     try {
/*  863 */       int intid = 1;
/*  864 */       Connection conn = JDBCconnect.getConnection();
/*  865 */       String sql = "select * from dxtestuser where username=? and userpwd=?";
/*  866 */       PreparedStatement ps = null;
/*  867 */       ps = conn.prepareStatement(sql);
/*  868 */       ps.setString(intid++, username);
/*  869 */       ps.setString(intid++, userpwd);
/*  870 */       ResultSet rs = ps.executeQuery();
/*      */ 
/*      */ 
/*      */ 
/*      */       
/*  875 */       while (rs.next()) {
/*  876 */         Equ equ = new Equ();
/*  877 */         equ.setUsername(rs.getString("username"));
/*  878 */         equ.setUserpwd(rs.getString("userpwd"));
/*  879 */         equ.setAut(rs.getInt("aut"));
/*  880 */         equ.setUserid(rs.getString("userid"));
/*  881 */         equ.setDay(rs.getString("day"));
/*  882 */         equ.setEdi(rs.getString("edi"));
/*  883 */         equ.setDel(rs.getString("del"));
/*  884 */         equ.setCon(rs.getString("con"));
/*  885 */         equ.setLevela(rs.getString("levela"));
/*  886 */         equ.setConedit(rs.getString("conedit"));
/*  887 */         equ.setCondel(rs.getString("condel"));
/*  888 */         listus.add(equ);
/*      */       } 
/*      */ 
/*      */ 
/*      */ 
/*      */       
/*  894 */       rs.close();
/*  895 */       ps.close();
/*  896 */       conn.close();
/*      */     
/*      */     }
/*  899 */     catch (Exception e) {
/*      */       
/*  901 */       e.printStackTrace();
/*      */     } 
/*  903 */     return listus;
/*      */   }
/*      */ 
/*      */ 
/*      */   
/*      */   public int findCount(Integer count, String sdate, String edate, String statu) {
/*  909 */     Connection conn = JDBCconnect.getConnection();
/*      */     
/*  911 */     String sql = "select count(*) from dxtestwork where  sdate>=? and edate<? and statu= ? order by nowdate,statu desc";
/*  912 */     System.out.println(sdate);
/*  913 */     System.out.println(edate);
/*  914 */     System.out.println(statu);
/*      */     try {
/*  916 */       int intid = 1;
/*  917 */       PreparedStatement ps = null;
/*  918 */       ps = conn.prepareStatement(sql);
/*  919 */       ps.setString(intid++, sdate);
/*  920 */       ps.setString(intid++, edate);
/*  921 */       ps.setString(intid++, statu);
/*  922 */       ResultSet rs = ps.executeQuery();
/*      */       
/*  924 */       if (rs.next()) {
/*  925 */         count = Integer.valueOf(rs.getInt(1));
/*  926 */         System.out.println(count);
/*      */       } 
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */       
/*  933 */       rs.close();
/*  934 */       ps.close();
/*  935 */       conn.close();
/*      */     }
/*  937 */     catch (SQLException e) {
/*  938 */       e.printStackTrace();
/*      */     } 
/*      */     
/*  941 */     return count.intValue();
/*      */   }
/*      */ 
/*      */   
/*      */   public static List<Equ> SelectItemPart2(String sn, String nowdate, String stno) {
/*  946 */     List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/*  948 */       String sql = "select * from dxtestwork where stno=? order by nowdate,statu desc";
/*  949 */       Connection conn = null;
/*  950 */       PreparedStatement ps = null;
/*  951 */       ResultSet rs = null;
/*      */       
/*  953 */       int intN = 1;
/*  954 */       conn = JDBCconnect.getConnection();
/*  955 */       ps = conn.prepareStatement(sql);
/*      */ 
/*      */       
/*  958 */       ps.setString(intN++, stno);
/*  959 */       rs = ps.executeQuery();
/*      */       
/*  961 */       while (rs.next()) {
/*  962 */         Equ equ = new Equ();
/*  963 */         equ.setMessage(rs.getString("message"));
/*  964 */         equ.setUsername(rs.getString("username"));
/*  965 */         equ.setUserpwd(rs.getString("userpwd"));
/*  966 */         equ.setNowdate(rs.getString("nowdate"));
/*  967 */         equ.setSn(rs.getString("sn"));
/*  968 */         equ.setStatu(rs.getString("statu"));
/*  969 */         equ.setPicture(rs.getString("picture"));
/*  970 */         equ.setSdate(rs.getString("sdate"));
/*  971 */         equ.setEdate(rs.getString("edate"));
/*  972 */         list.add(equ);
/*      */       } 
/*      */       
/*  975 */       rs.close();
/*  976 */       ps.close();
/*  977 */       conn.close();
/*      */     }
/*  979 */     catch (Exception e) {
/*      */       
/*  981 */       e.printStackTrace();
/*      */     } 
/*  983 */     return list;
/*      */   }
/*      */ 
/*      */ 
/*      */   
/*      */   public static List<String> ston(String sdate, String edate, String statu) {
/*  989 */     List<String> ston = new ArrayList<String>();
/*      */     try {
/*  991 */       int intid = 1;
/*  992 */       Connection conn = JDBCconnect.getConnection();
/*  993 */       String sql1 = "select * from dxtestwork where  sdate>= ? and edate<=? and statu like ? order by nowdate,statu desc,statu desc";
/*  994 */       PreparedStatement ps = null;
/*  995 */       ps = conn.prepareStatement(sql1);
/*  996 */       ps.setString(intid++, sdate);
/*  997 */       ps.setString(intid++, edate);
/*  998 */       ps.setString(intid++, statu);
/*  999 */       ResultSet rs = ps.executeQuery();
/* 1000 */       while (rs.next())
/*      */       {
/*      */         
/* 1003 */         ston.add(rs.getString(11));
/*      */       }
/*      */       
/* 1006 */       ps.close();
/* 1007 */       rs.close();
/* 1008 */       conn.close();
/* 1009 */     } catch (Exception exception) {}
/*      */ 
/*      */ 
/*      */ 
/*      */     
/* 1014 */     return ston;
/*      */   }
/*      */   
/*      */   public static List<Equ> sucList(String stno, String edate, String sdate) {
/* 1018 */     List<Equ> sucList = new ArrayList<Equ>();
/*      */     try {
/* 1020 */       int intid = 1;
/* 1021 */       Connection conn = JDBCconnect.getConnection();
/* 1022 */       String sql1 = "select * from dxtestwork where stno=? and edate=? and sdate=?  order by nowdate desc,statu desc";
/* 1023 */       PreparedStatement ps = null;
/* 1024 */       ps = conn.prepareStatement(sql1);
/* 1025 */       ps.setString(intid++, stno);
/* 1026 */       ps.setString(intid++, edate);
/* 1027 */       ps.setString(intid++, sdate);
/*      */       
/* 1029 */       ResultSet rs = ps.executeQuery("select * from dxtestwork where stno='" + stno + "' and edate='" + edate + "' and sdate='" + sdate + "'  order by nowdate desc,statu desc");
/*      */       
/* 1031 */       while (rs.next()) {
/* 1032 */         Equ equ = new Equ();
/* 1033 */         equ.setUsername(rs.getString("username"));
/* 1034 */         equ.setUserpwd(rs.getString("userpwd"));
/* 1035 */         equ.setNowdate(rs.getString("nowdate"));
/* 1036 */         equ.setSn(rs.getString("sn"));
/* 1037 */         equ.setStatu(rs.getString("statu"));
/* 1038 */         equ.setPicture(rs.getString("picture"));
/* 1039 */         equ.setSdate(rs.getString("sdate"));
/* 1040 */         equ.setEdate(rs.getString("edate"));
/* 1041 */         equ.setStno(rs.getString("stno"));
/* 1042 */         equ.setMessage(rs.getString("message"));
/* 1043 */         sucList.add(equ);
/*      */       } 
/*      */       
/* 1046 */       ps.close();
/* 1047 */       rs.close();
/* 1048 */       conn.close();
/*      */     }
/* 1050 */     catch (Exception e) {
/*      */       
/* 1052 */       e.printStackTrace();
/*      */     } 
/*      */ 
/*      */     
/* 1056 */     return sucList;
/*      */   }
/*      */   
/*      */   public static boolean userpwd(String stno) {
/* 1060 */     boolean userpwd = false;
/*      */     
/* 1062 */     if (stno.equals("0")) {
/* 1063 */       userpwd = true;
/*      */     } else {
/*      */       try {
/* 1066 */         int intid = 1;
/* 1067 */         Connection conn = JDBCconnect.getConnection();
/* 1068 */         String sql1 = "select * from(select * from dxtestwork where stno=?  order by nowdate desc) where rownum=1";
/* 1069 */         PreparedStatement ps = null;
/* 1070 */         ps = conn.prepareStatement(sql1);
/* 1071 */         ps.setString(intid++, stno);
/*      */         
/* 1073 */         ResultSet rs = ps.executeQuery();
/* 1074 */         String pwdString = null;
/* 1075 */         while (rs.next()) {
/* 1076 */           pwdString = rs.getString(4);
///* 1077 */           System.out.println(pwdString);
/* 1078 */           if (pwdString == null) {
/* 1079 */             pwdString = "";
/*      */           }
/*      */         } 
/*      */         
/* 1083 */         if (pwdString.equals("restore"))
/*      */         {
/* 1085 */           userpwd = true;
/*      */         }
/* 1087 */         ps.close();
/* 1088 */         rs.close();
/* 1089 */         conn.close();
/* 1090 */       } catch (Exception e) {
/*      */         
/* 1092 */         e.printStackTrace();
/*      */       } 
/*      */     } 
/*      */ 
/*      */ 
/*      */     
/* 1098 */     return userpwd;
/*      */   }
/*      */   



/*      */   public static List<Equ> SelectItemPart(String sdate, String edate, String statu) {
/* 1102 */     List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/* 1104 */       int intid = 1;
/* 1105 */       Connection conn = JDBCconnect.getConnection();
/* 1106 */       String sql1 = "select * from dxtestwork where  sdate= ? and edate=? and statu=? order by nowdate,statu";
/*      */       
/* 1108 */       String sql = "select * from dxtestwork t1,dxtest t2 where t1.sn=t2.sn and   stno=? and task='0'   and time is not null";
/* 1109 */       String sql3 = "select * from dxtestwork where  sdate= ? and edate=? and stno='0'  order by nowdate,statu desc";
/* 1110 */       PreparedStatement ps = null;
/* 1111 */       PreparedStatement ps3 = null;
/* 1112 */       PreparedStatement ps2 = null;
/* 1113 */       ResultSet rs = null;
/* 1114 */       ResultSet rs2 = null;
/* 1115 */       ResultSet rs3 = null;
/* 1116 */       String stno = null;
/* 1117 */       String s0 = "";
/* 1118 */       String s1 = "";
/* 1119 */       boolean flag = true;
/* 1120 */       ps = conn.prepareStatement(sql1);
/* 1121 */       ps.setString(intid++, sdate);
/* 1122 */       ps.setString(intid++, edate);
/* 1123 */       ps.setString(intid++, statu);
/* 1124 */       rs = ps.executeQuery();
/* 1125 */       while (rs.next()) {
/* 1126 */         stno = rs.getString(11);
/* 1127 */         if (stno.equals("0")) {
/* 1128 */           if (flag) {
/* 1129 */             ps3 = conn.prepareStatement(sql3);
/* 1130 */             intid = 1;
/* 1131 */             ps3.setString(intid++, sdate);
/* 1132 */             ps3.setString(intid++, edate);
/* 1133 */             rs3 = ps3.executeQuery();
/* 1134 */             while (rs3.next()) {
/* 1135 */               Equ equ = new Equ();
/* 1136 */               equ.setMessage(rs3.getString("message"));
/* 1137 */               equ.setUsername(rs3.getString("username"));
/* 1138 */               equ.setUserpwd(rs3.getString("userpwd"));
/* 1139 */               equ.setNowdate(rs3.getString("nowdate"));
/* 1140 */               equ.setSn(rs3.getString("sn"));
/* 1141 */               equ.setPos("无");
/* 1142 */               equ.setStatu(rs3.getString("statu"));
/* 1143 */               equ.setPicture(rs3.getString("picture"));
/* 1144 */               equ.setSdate(rs3.getString("sdate"));
/* 1145 */               equ.setEdate(rs3.getString("edate"));
/* 1146 */               equ.setStno(rs3.getString("stno"));
/* 1147 */               equ.setTime(rs3.getString("time"));
/* 1148 */               list.add(equ);
/* 1149 */             }  flag = false;
/*      */           }  continue;
/*      */         } 
/* 1152 */         s1 = stno;
/* 1153 */         if (s0.equals(s1)) {
/*      */           continue;
/*      */         }
/*      */         
/* 1157 */         if (flag) {
/* 1158 */           ps3 = conn.prepareStatement(sql3);
/* 1159 */           intid = 1;
/* 1160 */           ps3.setString(intid++, sdate);
/* 1161 */           ps3.setString(intid++, edate);
/* 1162 */           rs3 = ps3.executeQuery();
/* 1163 */           while (rs3.next()) {
/* 1164 */             Equ equ = new Equ();
/* 1165 */             equ.setMessage(rs3.getString("message"));
/* 1166 */             equ.setUsername(rs3.getString("username"));
/* 1167 */             equ.setUserpwd(rs3.getString("userpwd"));
/* 1168 */             equ.setNowdate(rs3.getString("nowdate"));
/* 1169 */             equ.setSn(rs3.getString("sn"));
/* 1170 */             equ.setPos("无");
/* 1171 */             equ.setStatu(rs3.getString("statu"));
/* 1172 */             equ.setPicture(rs3.getString("picture"));
/* 1173 */             equ.setSdate(rs3.getString("sdate"));
/* 1174 */             equ.setEdate(rs3.getString("edate"));
/* 1175 */             equ.setStno(rs3.getString("stno"));
/* 1176 */             equ.setTime(rs3.getString("time"));
/* 1177 */             list.add(equ);
/* 1178 */           }  flag = false;
/*      */         } 
/* 1180 */         s0 = s1;
/* 1181 */         intid = 1;
/* 1182 */         ps2 = conn.prepareStatement(sql);
/* 1183 */         ps2.setString(intid++, s0);
/* 1184 */         rs2 = ps2.executeQuery();
/* 1185 */         while (rs2.next()) {
/* 1186 */           Equ equ = new Equ();
/* 1187 */           equ.setMessage(rs2.getString("message"));
/* 1188 */           equ.setUsername(rs2.getString("username"));
/* 1189 */           equ.setUserpwd(rs2.getString("userpwd"));
/* 1190 */           equ.setNowdate(rs2.getString("nowdate"));
/* 1191 */           equ.setSn(rs2.getString("sn"));
/* 1192 */           equ.setPos(rs2.getString("pos"));
/* 1193 */           equ.setStatu(rs2.getString("statu"));
/* 1194 */           equ.setPicture(rs2.getString("picture"));
/* 1195 */           equ.setSdate(rs2.getString("sdate"));
/* 1196 */           equ.setEdate(rs2.getString("edate"));
/* 1197 */           equ.setStno(rs2.getString("stno"));
/* 1198 */           equ.setTime(rs2.getString("time"));
/* 1199 */           list.add(equ);
/*      */         } 
/*      */       } 
/*      */ 
/*      */ 
/*      */       
/* 1205 */       ps.close();
/*      */       
/* 1207 */       ps3.close();
///* 1208 */       rs2.close();
/* 1209 */       rs3.close();
/* 1210 */       rs.close();
/* 1211 */       conn.close();
/* 1212 */     } catch (Exception e) {
/*      */       
/* 1214 */       e.printStackTrace();
/*      */     } 
/*      */     
/* 1217 */     return list;
/*      */   }
/*      */   
/*      */   public static List<Equ> SelectItemnow(String sn, String userid, String nowdate) {
/* 1221 */     List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/* 1223 */       int intid = 1;
/* 1224 */       Connection conn = JDBCconnect.getConnection();
/* 1225 */       String sql = "select * from dxtestwork where sn=? and nowdate= ? and usrname=?  order by nowdate,statu desc";
/* 1226 */       PreparedStatement ps = null;
/* 1227 */       ps = conn.prepareStatement(sql);
/* 1228 */       ps.setString(intid++, sn);
/* 1229 */       ps.setString(intid++, nowdate);
/* 1230 */       ps.setString(intid++, userid);
/*      */       
/* 1232 */       ps.close();
/* 1233 */       conn.close();
/* 1234 */     } catch (Exception e) {
/*      */       
/* 1236 */       e.printStackTrace();
/*      */     } 
/*      */     
/* 1239 */     return list;
/*      */   }
/*      */   
/*      */   public void UpPwd(String username, String userpwd, String userpwd1) {
/*      */     try {
/* 1244 */       int intid = 1;
/* 1245 */       Connection conn = JDBCconnect.getConnection();
/* 1246 */       String sql = "update DXTESTUSER set  userpwd=?  where username=? and userpwd=?";
/* 1247 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 1248 */       ps.setString(intid++, userpwd1);
/* 1249 */       ps.setString(intid++, username);
/* 1250 */       ps.setString(intid++, userpwd);
/* 1251 */       ResultSet rs = ps.executeQuery();
/*      */       
/* 1253 */       rs.close();
/* 1254 */       ps.close();
/* 1255 */       conn.close();
/*      */     }
/* 1257 */     catch (Exception e) {
/*      */       
/* 1259 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */   
/*      */   public static void delmessage(String nowdate, String message) {
/*      */     try {
/* 1265 */       int inti = 1;
/* 1266 */       Connection conn = JDBCconnect.getConnection();
/* 1267 */       String sql = "delete from dxtestwork where nowdate=? and message=?";
/* 1268 */       String sql2 = "select stno,statu from dxtestwork where nowdate=? and message=?";
/* 1269 */       String sql3 = "update dxtestwork set  userpwd=''  where stno=?";
/* 1270 */       PreparedStatement ps2 = null;
/* 1271 */       PreparedStatement ps = null;
/* 1272 */       PreparedStatement ps3 = null;
/*      */       
/* 1274 */       ResultSet rs2 = null;
/* 1275 */       ResultSet rs3 = null;
/* 1276 */       String ston = "";
/* 1277 */       String statu = "";
/* 1278 */       ps2 = conn.prepareStatement(sql2);
/* 1279 */       ps2.setString(inti++, nowdate);
/* 1280 */       ps2.setString(inti++, message);
/* 1281 */       rs2 = ps2.executeQuery();
/* 1282 */       while (rs2.next()) {
/* 1283 */         ston = rs2.getString(1);
/* 1284 */         statu = rs2.getString(2);
/* 1285 */         if (statu.equals("恢复")) {
/* 1286 */           System.out.println("恢复+++");
/* 1287 */           inti = 1;
/* 1288 */           ps = conn.prepareStatement(sql);
/* 1289 */           ps.setString(inti++, nowdate);
/* 1290 */           ps.setString(inti++, message);
/* 1291 */           ps.executeUpdate();
/* 1292 */           inti = 1;
/* 1293 */           ps3 = conn.prepareStatement(sql3);
/* 1294 */           ps3.setString(inti, ston);
/* 1295 */           ps3.executeUpdate(); continue;
/*      */         } 
/* 1297 */         inti = 1;
/* 1298 */         ps = conn.prepareStatement(sql);
/* 1299 */         ps.setString(inti++, nowdate);
/* 1300 */         ps.setString(inti++, message);
/* 1301 */         ps.executeUpdate();
/*      */       } 
/*      */       
/* 1304 */       ps.close();
/* 1305 */       ps2.close();
/* 1306 */       ps3.close();
/* 1307 */       rs2.close();
/* 1308 */       conn.close();
/* 1309 */     } catch (Exception e) {
/*      */       
/* 1311 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */   
/*      */   public static void updatamessage(String nowdate, String message) {
/* 1316 */     List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/* 1318 */       int inti = 1;
/* 1319 */       Connection conn = JDBCconnect.getConnection();
/* 1320 */       String sql = "update dxtestwork set  message=?  where nowdate=?";
/* 1321 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 1322 */       ps = conn.prepareStatement(sql);
/* 1323 */       ps.setString(inti++, message);
/* 1324 */       ps.setString(inti++, nowdate);
/*      */       
/* 1326 */       ResultSet rs = ps.executeQuery();
/*      */       
/* 1328 */       rs.close();
/* 1329 */       ps.close();
/* 1330 */       conn.close();
/* 1331 */     } catch (Exception e) {
/*      */       
/* 1333 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */ 
/*      */   
/*      */   public static String[] sse2(String message, String nowdate, String sn) {
/* 1339 */     String[] sse = new String[3];
/*      */     try {
/* 1341 */       int inti = 1;
/* 1342 */       Connection conn = JDBCconnect.getConnection();
/* 1343 */       String sql = "select stno,sdate,edate,statu from dxtestwork where message=? and nowdate=? and sn=? and rownum=1";
/* 1344 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 1345 */       ps = conn.prepareStatement(sql);
/* 1346 */       ps.setString(inti++, message);
/* 1347 */       ps.setString(inti++, nowdate);
/* 1348 */       ps.setString(inti++, sn);
/* 1349 */       System.out.println(message);
/* 1350 */       System.out.println(nowdate);
/* 1351 */       System.out.println(sn);
/* 1352 */       String stno = null;
/* 1353 */       String sdate = null;
/* 1354 */       String edate = null;
/* 1355 */       String statu = null;
/*      */       
/* 1357 */       ResultSet rs = ps.executeQuery("select stno,sdate,edate from dxtestwork where message='" + message + "' and nowdate='" + nowdate + "' and sn='" + sn + "' and rownum=1");
/*      */       
/* 1359 */       while (rs.next()) {
/* 1360 */         inti = 1;
/* 1361 */         stno = rs.getString(inti++);
/* 1362 */         sdate = rs.getString(inti++);
/* 1363 */         edate = rs.getString(inti++);
/* 1364 */         statu = rs.getString(inti++);
/* 1365 */         System.out.println(stno);
/* 1366 */         System.out.println(sdate);
/* 1367 */         System.out.println(edate);
/* 1368 */         System.out.println(statu);
/* 1369 */         inti = 0;
/* 1370 */         sse[inti++] = stno;
/* 1371 */         sse[inti++] = sdate;
/* 1372 */         sse[inti++] = edate;
/* 1373 */         sse[inti++] = statu;
/* 1374 */       }  rs.close();
/* 1375 */       ps.close();
/* 1376 */       conn.close();
/* 1377 */     } catch (Exception e) {
/*      */       
/* 1379 */       e.printStackTrace();
/*      */     } 
/* 1381 */     return sse;
/*      */   }
/*      */ 
/*      */   
/*      */   public static String[] sse(String message, String nowdate, String sn) {
/* 1386 */     String[] sse = new String[3];
/*      */     try {
/* 1388 */       int inti = 1;
/* 1389 */       Connection conn = JDBCconnect.getConnection();
/* 1390 */       String sql = "select stno,sdate,edate from dxtestwork where message=? and nowdate=? and sn=? and rownum=1";
/* 1391 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 1392 */       ps = conn.prepareStatement(sql);
/* 1393 */       ps.setString(inti++, message);
/* 1394 */       ps.setString(inti++, nowdate);
/* 1395 */       ps.setString(inti++, sn);
/* 1396 */       System.out.println(message);
/* 1397 */       System.out.println(nowdate);
/* 1398 */       System.out.println(sn);
/* 1399 */       String stno = null;
/* 1400 */       String sdate = null;
/* 1401 */       String edate = null;
/*      */       
/* 1403 */       ResultSet rs = ps.executeQuery("select stno,sdate,edate from dxtestwork where message='" + message + "' and nowdate='" + nowdate + "' and sn='" + sn + "' and rownum=1");
/*      */       
/* 1405 */       while (rs.next()) {
/* 1406 */         inti = 1;
/* 1407 */         stno = rs.getString(inti++);
/* 1408 */         sdate = rs.getString(inti++);
/* 1409 */         edate = rs.getString(inti++);
/* 1410 */         System.out.println(stno);
/* 1411 */         System.out.println(sdate);
/* 1412 */         System.out.println(edate);
/* 1413 */         inti = 0;
/* 1414 */         sse[inti++] = stno;
/* 1415 */         sse[inti++] = sdate;
/* 1416 */         sse[inti++] = edate;
/*      */       } 
/* 1418 */       rs.close();
/* 1419 */       ps.close();
/* 1420 */       conn.close();
/* 1421 */     } catch (Exception e) {
/*      */       
/* 1423 */       e.printStackTrace();
/*      */     } 
/* 1425 */     return sse;
/*      */   }
/*      */   
/*      */   public static List<Equ> SelectItemAll(String sn) {
/* 1429 */     List<Equ> list = new ArrayList<Equ>();
/*      */     
/*      */     try {
/* 1432 */       int intid = 1;
/*      */       
/* 1434 */       Connection conn = JDBCconnect.getConnection();
/* 1435 */       String sql = "select * from dxtestwork where sn=? order by nowdate desc,statu desc";
/*      */       
/* 1437 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 1438 */       System.out.println("sn=" + sn);
/* 1439 */       ps.setString(intid++, sn.trim());
/*      */       
/* 1441 */       ResultSet rs = ps.executeQuery();
/* 1442 */       while (rs.next()) { Equ equ = new Equ();
/* 1443 */         equ.setMessage(rs.getString("message"));
/* 1444 */         equ.setUsername(rs.getString("username"));
/* 1445 */         equ.setUserpwd(rs.getString("userpwd"));
/* 1446 */         equ.setNowdate(rs.getString("nowdate")); equ.setSn(rs.getString("sn"));
/* 1447 */         equ.setStatu(rs.getString("statu")); equ.setPicture(rs.getString("picture"));
/* 1448 */         equ.setSdate(rs.getString("sdate")); equ.setEdate(rs.getString("edate"));
/* 1449 */         equ.setStno(rs.getString("stno"));
/* 1450 */         list.add(equ); }
/*      */       
/* 1452 */       rs.close();
/* 1453 */       ps.close();
/* 1454 */       conn.close();
/*      */     
/*      */     }
/* 1457 */     catch (Exception e) {
/*      */       
/* 1459 */       e.printStackTrace();
/*      */     } 
/*      */     
/* 1462 */     return list;
/*      */   }
/*      */ 
/*      */ 
/*      */   
/*      */   public static List<Equ> SelectItem2(String stno) {
/* 1468 */     List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/* 1470 */       int intid = 1;
/* 1471 */       Connection conn = JDBCconnect.getConnection();
/* 1472 */       String sql1 = "select * from dxtestwork where stno='" + stno + "' order by nowdate,statu desc";
/* 1473 */       PreparedStatement ps = null;
/* 1474 */       ResultSet rs = null;
/* 1475 */       ps = conn.prepareStatement(sql1);
/*      */       
/* 1477 */       rs = ps.executeQuery(sql1);
/* 1478 */       while (rs.next()) {
/* 1479 */         Equ equ = new Equ();
/* 1480 */         equ.setMessage(rs.getString("message"));
/* 1481 */         equ.setUsername(rs.getString("username"));
/* 1482 */         equ.setUserpwd(rs.getString("userpwd"));
/* 1483 */         equ.setNowdate(rs.getString("nowdate"));
/* 1484 */         equ.setSn(rs.getString("sn"));
/* 1485 */         equ.setStatu(rs.getString("statu"));
/* 1486 */         equ.setPicture(rs.getString("picture"));
/* 1487 */         equ.setSdate(rs.getString("sdate"));
/* 1488 */         equ.setEdate(rs.getString("edate"));
/* 1489 */         equ.setStno(rs.getString("stno"));
/* 1490 */         list.add(equ);
/*      */       } 
/* 1492 */       rs.close();
/* 1493 */       ps.close();
/* 1494 */       conn.close();
/*      */     }
/* 1496 */     catch (Exception exception) {}
/*      */ 
/*      */     
/* 1499 */     return list;
/*      */   }
/*      */ 
/*      */   
/*      */   public static List<Equ> SelectItem(String sdate, String edate, String sn, String statu) {
/* 1504 */     List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/* 1506 */       int intid = 1;
/* 1507 */       statu = "%" + statu + "%";
/* 1508 */       Connection conn = JDBCconnect.getConnection();
/* 1509 */       String sql1 = "select * from dxtestwork where sn=? and sdate>= ? and statu like ?  order by nowdate,statu desc";
/* 1510 */       String sql2 = "select * from dxtestwork where sn=? and sdate>= ? and edate<=? and statu like ?  order by nowdate,statu desc";
/* 1511 */       String sql3 = "select * from dxtestwork where sn=? and edate<= ? and  statu like ?  order by nowdate,statu desc";
/* 1512 */       String sql4 = "select * from dxtestwork where sn=? and  statu like ?  order by nowdate,statu desc";
/* 1513 */       PreparedStatement ps = null;
/* 1514 */       ResultSet rs = null;
/* 1515 */       if (sdate != "" && edate == "") {
/* 1516 */         System.out.println(1);
/*      */         
/* 1518 */         ps = conn.prepareStatement(sql1);
/* 1519 */         ps.setString(intid++, sn);
/* 1520 */         ps.setString(intid++, sdate);
/* 1521 */         ps.setString(intid++, statu);
/*      */ 
/*      */         
/* 1524 */         rs = ps.executeQuery("select * from dxtestwork where sn='" + sn.trim() + "' and sdate>='" + sdate + "' and statu like '%" + statu.trim() + "%'  order by nowdate,statu desc");
/* 1525 */       } else if (sdate != "" && edate != "") {
/* 1526 */         System.out.println(2);
/* 1527 */         ps = conn.prepareStatement(sql2);
/*      */ 
/*      */         
/* 1530 */         ps.setString(intid++, sn);
/* 1531 */         ps.setString(intid++, sdate);
/* 1532 */         ps.setString(intid++, edate);
/* 1533 */         ps.setString(intid++, statu);
/*      */         
/* 1535 */         rs = ps.executeQuery("select * from dxtestwork where sn='" + sn.trim() + "' and sdate>= '" + sdate + "' and sdate<='" + edate + "' and statu like '%" + statu.trim() + "%' order by nowdate,statu desc");
/* 1536 */       } else if (sdate == "" && edate != "") {
/*      */         
/* 1538 */         ps = conn.prepareStatement(sql3);
/* 1539 */         ps.setString(intid++, sn);
/* 1540 */         ps.setString(intid++, edate);
/* 1541 */         ps.setString(intid++, statu);
/*      */ 
/*      */ 
/*      */ 
/*      */         
/* 1546 */         rs = ps.executeQuery("select * from dxtestwork where sn='" + sn.trim() + "' and sdate<= '" + edate + "' and  statu like '%" + statu.trim() + "%'  order by nowdate,statu desc");
/*      */       } else {
/*      */         
/* 1549 */         ps = conn.prepareStatement(sql4);
/* 1550 */         ps.setString(intid++, sn.trim());
/* 1551 */         ps.setString(intid++, statu.trim());
/*      */         
/* 1553 */         rs = ps.executeQuery("select * from dxtestwork where sn='" + sn.trim() + "' and  statu like '%" + statu.trim() + "%'  order by nowdate,statu desc");
/*      */       } 
/*      */       
/* 1556 */       while (rs.next()) {
/* 1557 */         Equ equ = new Equ();
/* 1558 */         equ.setMessage(rs.getString("message"));
/* 1559 */         equ.setUsername(rs.getString("username"));
/* 1560 */         equ.setUserpwd(rs.getString("userpwd"));
/* 1561 */         equ.setNowdate(rs.getString("nowdate"));
/* 1562 */         equ.setSn(rs.getString("sn"));
/* 1563 */         equ.setStatu(rs.getString("statu"));
/* 1564 */         equ.setPicture(rs.getString("picture"));
/* 1565 */         equ.setSdate(rs.getString("sdate"));
/* 1566 */         equ.setEdate(rs.getString("edate"));
/* 1567 */         equ.setStno(rs.getString("stno"));
/* 1568 */         equ.setTask(rs.getString("task"));
/* 1569 */         list.add(equ);
/*      */       } 
/* 1571 */       rs.close();
/* 1572 */       ps.close();
/* 1573 */       conn.close();
/*      */     
/*      */     }
/* 1576 */     catch (Exception e) {
/*      */       
/* 1578 */       e.printStackTrace();
/*      */     } 
/*      */ 
/*      */     
/* 1582 */     return list;
/*      */   }
/*      */ 
/*      */ 
/*      */   
/*      */   public static List<Equ> SelectItem5(String sdate, String edate, String sn, String statu, String stno) {
/* 1588 */     List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/* 1590 */       int intid = 1;
/* 1591 */       statu = "%" + statu + "%";
/* 1592 */       Connection conn = JDBCconnect.getConnection();
/* 1593 */       String sql1 = "select * from dxtestwork where sn=? and sdate>= ? and statu like ? and stno=? order by nowdate,statu desc";
/* 1594 */       String sql2 = "select * from dxtestwork where sn=? and sdate>= ? and edate<=? and statu like ? and stno=? order by nowdate,statu desc";
/* 1595 */       String sql3 = "select * from dxtestwork where sn=? and edate<= ? and  statu like ? and stno=? order by nowdate,statu desc";
/* 1596 */       String sql4 = "select * from dxtestwork where sn=? and  statu like ? and stno=? order by nowdate,statu desc";
/* 1597 */       PreparedStatement ps = null;
/* 1598 */       ResultSet rs = null;
/* 1599 */       if (sdate != "" && edate == "") {
/* 1600 */         System.out.println(1);
/*      */         
/* 1602 */         ps = conn.prepareStatement(sql1);
/* 1603 */         ps.setString(intid++, sn);
/* 1604 */         ps.setString(intid++, sdate);
/* 1605 */         ps.setString(intid++, statu);
/* 1606 */         ps.setString(intid++, stno);
/*      */         
/* 1608 */         rs = ps.executeQuery("select * from dxtestwork where sn='" + sn.trim() + "' and sdate>='" + sdate + "' and statu like '%" + statu.trim() + "%' and stno='" + stno + "' order by nowdate,statu desc");
/* 1609 */       } else if (sdate != "" && edate != "") {
/* 1610 */         System.out.println(2);
/* 1611 */         ps = conn.prepareStatement(sql2);
/*      */ 
/*      */         
/* 1614 */         ps.setString(intid++, sn);
/* 1615 */         ps.setString(intid++, sdate);
/* 1616 */         ps.setString(intid++, edate);
/* 1617 */         ps.setString(intid++, statu);
/* 1618 */         ps.setString(intid++, stno);
/* 1619 */         rs = ps.executeQuery("select * from dxtestwork where sn='" + sn.trim() + "' and sdate>= '" + sdate + "' and sdate<='" + edate + "' and statu like '%" + statu.trim() + "%' and stno='" + stno + "'order by nowdate,statu desc");
/* 1620 */       } else if (sdate == "" && edate != "") {
/*      */         
/* 1622 */         ps = conn.prepareStatement(sql3);
/* 1623 */         ps.setString(intid++, sn);
/* 1624 */         ps.setString(intid++, edate);
/* 1625 */         ps.setString(intid++, statu);
/* 1626 */         ps.setString(intid++, stno);
/*      */ 
/*      */ 
/*      */         
/* 1630 */         rs = ps.executeQuery("select * from dxtestwork where sn='" + sn.trim() + "' and sdate<= '" + edate + "' and  statu like '%" + statu.trim() + "%' and stno='" + stno + "' order by nowdate,statu desc");
/*      */       } else {
/*      */         
/* 1633 */         ps = conn.prepareStatement(sql4);
/* 1634 */         ps.setString(intid++, sn.trim());
/* 1635 */         ps.setString(intid++, statu.trim());
/* 1636 */         ps.setString(intid++, stno);
/* 1637 */         rs = ps.executeQuery("select * from dxtestwork where sn='" + sn.trim() + "' and  statu like '%" + statu.trim() + "%' and stno='" + stno + "' order by nowdate,statu desc");
/*      */       } 
/*      */       
/* 1640 */       while (rs.next()) {
/* 1641 */         Equ equ = new Equ();
/* 1642 */         equ.setMessage(rs.getString("message"));
/* 1643 */         equ.setUsername(rs.getString("username"));
/* 1644 */         equ.setUserpwd(rs.getString("userpwd"));
/* 1645 */         equ.setNowdate(rs.getString("nowdate"));
/* 1646 */         equ.setSn(rs.getString("sn"));
/* 1647 */         equ.setStatu(rs.getString("statu"));
/* 1648 */         equ.setPicture(rs.getString("picture"));
/* 1649 */         equ.setSdate(rs.getString("sdate"));
/* 1650 */         equ.setEdate(rs.getString("edate"));
/* 1651 */         equ.setStno(rs.getString("stno"));
/* 1652 */         equ.setTask(rs.getString("task"));
/* 1653 */         list.add(equ);
/*      */       } 
/* 1655 */       rs.close();
/* 1656 */       ps.close();
/* 1657 */       conn.close();
/*      */     
/*      */     }
/* 1660 */     catch (Exception e) {
/*      */       
/* 1662 */       e.printStackTrace();
/*      */     } 
/*      */ 
/*      */     
/* 1666 */     return list;
/*      */   }
/*      */   public static List<Equ> listWaring(String stno, String edate, String sdate, String message) {
/* 1669 */     List<Equ> listWaring = new ArrayList<Equ>();
/*      */     try {
/* 1671 */       int intid = 1;
/* 1672 */       message = "%" + message + "%";
/* 1673 */       stno = "%" + stno + "%";
/* 1674 */       Connection conn = JDBCconnect.getConnection();
/* 1675 */       String sql1 = "select * from dxtestwork where stno in (select DISTINCT stno from ( select * from dxtestwork where stno!='0'  and  (sdate>= ? and stno like ? and message like ?)))   and time is not null order by sdate";
/* 1676 */       String sql2 = "select * from dxtestwork where stno in  (select DISTINCT stno from ( select * from dxtestwork where stno!='0'  and  (sdate>= ? and edate<=? and stno like ? and message like ?)))    and time is not null order by sdate";
/* 1677 */       String sql3 = "select * from dxtestwork where stno in (select DISTINCT stno from ( select * from dxtestwork where stno!='0'  and  (edate<= ? and  and stno like ? and message like ?)))   and time is not null order by sdate";
/* 1678 */       String sql4 = "select * from dxtestwork where stno in (select DISTINCT stno from ( select * from dxtestwork where stno!='0'  and  (stno like ? and message like ?)))  and time is not null order by sdate";
/*      */       
/* 1680 */       String s1 = "0";
/* 1681 */       String s0 = "0";
/* 1682 */       PreparedStatement ps = null;
/* 1683 */       ResultSet rs = null;
/* 1684 */       if (sdate != "" && edate == "") {
/* 1685 */         System.out.println(1);
/* 1686 */         sdate = String.valueOf(sdate) + " 00:00:00";
/*      */         
/* 1688 */         ps = conn.prepareStatement(sql1);
/*      */ 
/*      */         
/* 1691 */         ps.setString(intid++, sdate);
/* 1692 */         ps.setString(intid++, stno);
/* 1693 */         ps.setString(intid++, message);
/*      */ 
/*      */         
/* 1696 */         rs = ps.executeQuery();
/* 1697 */       } else if (sdate != "" && edate != "") {
/* 1698 */         System.out.println(2);
/* 1699 */         ps = conn.prepareStatement(sql2);
/*      */ 
/*      */         
/* 1702 */         sdate = String.valueOf(sdate) + " 00:00:00";
/* 1703 */         edate = String.valueOf(edate) + " 00:00:00";
/* 1704 */         ps.setString(intid++, sdate);
/* 1705 */         ps.setString(intid++, edate);
/* 1706 */         ps.setString(intid++, stno);
/* 1707 */         ps.setString(intid++, message);
/*      */         
/* 1709 */         rs = ps.executeQuery();
/* 1710 */       } else if (sdate == "" && edate != "") {
/* 1711 */         System.out.println(3);
/* 1712 */         ps = conn.prepareStatement(sql3);
/* 1713 */         edate = String.valueOf(edate) + " 00:00:00";
/* 1714 */         ps.setString(intid++, edate);
/* 1715 */         ps.setString(intid++, stno);
/* 1716 */         ps.setString(intid++, message);
/*      */ 
/*      */ 
/*      */ 
/*      */         
/* 1721 */         rs = ps.executeQuery();
/*      */       } else {
/* 1723 */         System.out.println(4);
/* 1724 */         ps = conn.prepareStatement(sql4);
/* 1725 */         ps.setString(intid++, stno);
/* 1726 */         ps.setString(intid++, message);
/*      */         
/* 1728 */         rs = ps.executeQuery();
/*      */       } 
/*      */       
/* 1731 */       while (rs.next()) {
/*      */         
/* 1733 */         Equ equ = new Equ();
/* 1734 */         s0 = rs.getString("stno");
/*      */ 
/*      */         
/* 1737 */         if (s0.equals(s1)) {
/*      */           continue;
/*      */         }
/*      */ 
/*      */         
/* 1742 */         s1 = s0;
/* 1743 */         equ.setMessage(rs.getString("message"));
/* 1744 */         equ.setUsername(rs.getString("username"));
/* 1745 */         equ.setUserpwd(rs.getString("userpwd"));
/* 1746 */         equ.setNowdate(rs.getString("nowdate"));
/* 1747 */         equ.setSn(rs.getString("sn"));
/* 1748 */         equ.setStatu(rs.getString("statu"));
/* 1749 */         equ.setPicture(rs.getString("picture"));
/* 1750 */         equ.setSdate(rs.getString("sdate"));
/* 1751 */         equ.setEdate(rs.getString("edate"));
/* 1752 */         equ.setStno(rs.getString("stno"));
/* 1753 */         equ.setTask(rs.getString("task"));
/* 1754 */         equ.setTime(rs.getString("time"));
/* 1755 */         listWaring.add(equ);
/*      */       } 
/*      */ 
/*      */ 
/*      */ 
/*      */       
/* 1761 */       rs.close();
/* 1762 */       ps.close();
/* 1763 */       conn.close();
/*      */     
/*      */     }
/* 1766 */     catch (Exception e) {
/*      */       
/* 1768 */       e.printStackTrace();
/*      */     } 
/*      */     
/* 1771 */     return listWaring;
/*      */   }
/*      */   
/*      */   public static int LateAlert(String plandate3, String contractid,String username) {
/* 1775 */     int a = 0;
/*      */     try {
/* 1777 */       int inti = 1;
/* 1778 */       Connection conn = JDBCconnect.getConnection();
/* 1779 */       conn.setAutoCommit(true);
/* 1780 */       String sql = "update CONTRACTDAY set  plandate3=?  where contractid=? and username=?";
/* 1781 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 1782 */       ps.setString(inti++, plandate3);
/* 1784 */       ps.setString(inti++, contractid);
				ps.setString(inti++, username);
/* 1785 */       ResultSet rs = ps.executeQuery();
/*      */ 
/*      */       
/* 1791 */       rs.close();
/* 1792 */       ps.close();
/* 1793 */       conn.close();
/* 1794 */     } catch (Exception e) {
/*      */       
/* 1796 */       e.printStackTrace();
/*      */     } 
/* 1798 */     return a;
/*      */   }
/*      */ 
/*      */   
/*      */   public static List<Equ> planalertlist(String planAlertStr,String planAlertStr_compare,String username) {
/* 1803 */     List<Equ> list = new ArrayList<Equ>();
/* 1804 */     SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
/* 1805 */     Date nowdateDate = new Date(System.currentTimeMillis());
/* 1806 */     Date plandate1Date = null;
/* 1807 */     int lastday = 0;
/* 1808 */     long ms = 0L;
/* 1809 */     String p1 = "", p2 = "";
/*      */     int PLANDATE3=0;
/*      */     try {
/* 1812 */       int inti = 1;
/* 1813 */       Connection conn = JDBCconnect.getConnection();
/* 1814 */       String sql = "select t2.PLANDATE3,t1.camount,t1.planm2, planm1,sgmoney,plandate1,plandate2,finmoney,t1.contractid,contractname from DXTESTCONTRACT t1,CONTRACTDAY t2 where t1.contractid=t2.contractid and  t1.plandate1<=? and (t1.statu!='end' or t1.statu is null) and t2.username=?";
/* 1815 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 1816 */       ps.setString(inti++, planAlertStr_compare);
				ps.setString(inti++, username);
/* 1817 */       ResultSet rs = ps.executeQuery();
/* 1818 */       while (rs.next()) {
/* 1819 */         Equ equ = new Equ();
/* 1820 */         equ.setPlanm1(rs.getString("planm1"));
/* 1821 */         equ.setSgmoney(rs.getString("sgmoney"));
/* 1822 */         equ.setPlandate1(rs.getString("plandate1"));
/* 1823 */         equ.setPlandate2(rs.getString("plandate2"));
/* 1824 */         p1 = rs.getString("plandate1");
/* 1825 */         p2 = rs.getString("plandate2");
/* 1826 */         if (p1 == "" || p1 == null) {
/* 1827 */           p1 = p2;
/*      */         }
/* 1829 */         plandate1Date = formatter.parse(p1);
/* 1830 */         ms = plandate1Date.getTime() - nowdateDate.getTime();
/* 1831 */         lastday = (int)(ms / 1000L / 60L / 60L / 24L);
/* 1832 */        
					PLANDATE3=rs.getInt("plandate3");
					if (PLANDATE3-lastday<0) {
						continue;
					}
					 equ.setLastday(lastday);
					 equ.setPlandate3(PLANDATE3);
/* 1833 */         equ.setFinmoney(rs.getString("finmoney"));
/* 1834 */         equ.setContractid(rs.getString("contractid"));
/* 1835 */         equ.setContractname(rs.getString("contractname"));
/* 1836 */         equ.setCamount(rs.getString("camount"));
/* 1837 */         equ.setPlanm2(rs.getString("planm2"));
/* 1838 */         list.add(equ);
/* 1839 */       }  rs.close();
/* 1840 */       ps.close();
/* 1841 */       conn.close();
/* 1842 */     } catch (Exception e) {
/*      */       
/* 1844 */       e.printStackTrace();
/*      */     } 
/* 1846 */     return list;
/*      */   }
/*      */ 
/*      */   
/*      */   public static List<Equ> userIds() {
	List<Equ>  list = new ArrayList<Equ>();
/*      */     try {
/* 1853 */       int inti = 1;
/* 1854 */       Connection conn = JDBCconnect.getConnection();
/* 1855 */       String sql = "select userid from DXTESTUSER where userid!='蒋勇' and userid is not null";
/* 1856 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 1857 */       ps = conn.prepareStatement(sql);
/*      */ 
/*      */       
/* 1860 */       ResultSet rs = ps.executeQuery();
/* 1861 */       while (rs.next()) {
/* 1862 */         Equ equ = new Equ();
/* 1863 */         equ.setUserid(rs.getString("userid"));
/* 1864 */         list.add(equ);
/* 1865 */       }  rs.close();
/* 1866 */       ps.close();
/* 1867 */       conn.close();
/* 1868 */     } catch (Exception e) {
/*      */       
/* 1870 */       e.printStackTrace();
/*      */     } 
/* 1872 */     return list;
/*      */   }
/*      */   

			public static List<Equ> SelectAllDxtestwork3() {
				 List<Equ> listAllDxtestwork2 = new ArrayList<Equ>();
				 try {
					 Connection conn = JDBCconnect.getConnection();
					 String sql="";
					 Statement statement = conn.createStatement();
					 ResultSet rs = statement.executeQuery(sql);
					 
					 
					 
				} catch (Exception e) {
					// TODO: handle exception
					 e.printStackTrace();
				}
				 
				return listAllDxtestwork2;
			}

/*      */   public static List<Equ> SelectAllDxtestwork2() {
/* 1876 */    List<Equ> listAllDxtestwork2 = new ArrayList<Equ>();
/*      */     try {
/* 1878 */       int intid = 1;
/* 1879 */       Connection conn = JDBCconnect.getConnection();
/*      */       
/* 1881 */       String sql = "select distinct username,sdate,edate,statu from (select * from dxtestwork where (task is null or task='0') and (statu='环境' or statu='巡检人员' or statu='故障') order by sdate desc)order by statu  desc";
/* 1882 */       String sql2 = "select distinct username,sdate,edate,statu from (select * from dxtestwork where (task is null or task='0') and (statu='恢复' and stno!='0') order by sdate desc)order by sdate  desc";
/* 1883 */       String sql3 = "select count(*) from ( select distinct userpwd,sdate,edate from (select * from dxtestwork where (task is null or task='0') and  (statu='环境' or statu='故障') and sdate=? and edate=?  order by sdate desc)order by sdate desc,edate)";
/*      */ 
/*      */       
/* 1886 */       String sql4 = "select distinct username,sdate,edate,statu from (select * from dxtestwork where stno='0') order by sdate ";
/* 1887 */       String sql5 = "select count(*) from(select stno from dxtestwork where sdate=? and edate=? and stno!='0')";
/* 1888 */       Statement statement = null;
/* 1889 */       int count = 0;
/* 1890 */       PreparedStatement ps5 = null;
/* 1891 */       PreparedStatement ps3 = null;
/* 1892 */       ResultSet rs3 = null;
/* 1893 */       ResultSet rs5 = null;
/* 1894 */       ResultSet rs2 = null;
/* 1895 */       Statement statement2 = null;
/* 1896 */       String s0 = "0";
/* 1897 */       String e0 = "0";
/* 1898 */       String e1 = "0";
/* 1899 */       String s1 = "0";
/*      */       
/* 1901 */       statement = conn.createStatement();
/* 1902 */       ResultSet rs = statement.executeQuery(sql);
/* 1903 */       while (rs.next()) {
/*      */         
/* 1905 */         Equ equ = new Equ();
/* 1906 */         equ.setUsername(rs.getString("username"));
/* 1907 */         equ.setEdate(rs.getString("edate"));
/* 1908 */         equ.setSdate(rs.getString("sdate"));
/* 1909 */         equ.setStatu(rs.getString("statu"));
/* 1910 */         listAllDxtestwork2.add(equ);
/*      */       } 
/* 1912 */       statement.close();
/* 1913 */       rs.close();
/*      */       
/* 1915 */       statement2 = conn.createStatement();
/* 1916 */       rs2 = statement2.executeQuery(sql2);
/* 1917 */       while (rs2.next()) {
/* 1918 */         s1 = rs2.getString("sdate");
/* 1919 */         e1 = rs2.getString("edate");
/* 1920 */         if (s0.equals(s1) && e0.equals(e1)) {
/*      */           continue;
/*      */         }
/*      */         
/* 1924 */         s0 = s1;
/* 1925 */         e0 = e1;
/* 1926 */         ps3 = conn.prepareStatement(sql3);
/* 1927 */         ps3.setString(1, s0);
/* 1928 */         ps3.setString(2, e0);
/* 1929 */         rs3 = ps3.executeQuery();
/* 1930 */         while (rs3.next()) {
/* 1931 */           count = rs3.getInt(1);
/* 1932 */           if (count > 1) {
/*      */             continue;
/*      */           }
/* 1935 */           Equ equ = new Equ();
/* 1936 */           equ.setUsername(rs2.getString("username"));
/* 1937 */           equ.setEdate(rs2.getString("edate"));
/* 1938 */           equ.setSdate(rs2.getString("sdate"));
/* 1939 */           equ.setStatu(rs2.getString("statu"));
/* 1940 */           listAllDxtestwork2.add(equ);
/*      */         } 
/*      */         
/* 1943 */         ps3.close();
/* 1944 */         rs3.close();
/*      */       } 
/*      */       
/* 1947 */       statement2.close();
/* 1948 */       rs2.close();
/*      */       
/* 1950 */       String s10 = "0";
/* 1951 */       String e10 = "0";
/* 1952 */       String e11 = "0";
/* 1953 */       String s11 = "0";
/* 1954 */       int count1 = 0;
/* 1955 */       Statement statement4 = conn.createStatement();
/* 1956 */       ResultSet rs4 = statement4.executeQuery(sql4);
/* 1957 */       while (rs4.next()) {
/* 1958 */         s11 = rs4.getString("sdate");
/* 1959 */         e11 = rs4.getString("edate");
/*      */ 
/*      */         
/* 1962 */         if (s10.equals(s11) && e10.equals(e11)) {
/*      */           continue;
/*      */         }
/*      */         
/* 1966 */         s10 = s11;
/* 1967 */         e10 = e11;
/* 1968 */         ps5 = conn.prepareStatement(sql5);
/* 1969 */         ps5.setString(1, s10);
/* 1970 */         ps5.setString(2, e10);
/* 1971 */         rs5 = ps5.executeQuery();
/*      */         
/* 1973 */         while (rs5.next()) {
/* 1974 */           count1 = rs5.getInt(1);
/*      */ 
/*      */           
/* 1977 */           if (count1 != 0) {
/*      */             continue;
/*      */           }
/* 1980 */           Equ equ = new Equ();
/* 1981 */           equ.setUsername(rs4.getString("username"));
/* 1982 */           equ.setEdate(rs4.getString("edate"));
/* 1983 */           equ.setSdate(rs4.getString("sdate"));
/* 1984 */           equ.setStatu(rs4.getString("statu"));
/* 1985 */           listAllDxtestwork2.add(equ);
/*      */         } 
/*      */         
/* 1988 */         ps5.close();
/* 1989 */         rs5.close();
/*      */       } 
/*      */       
/* 1992 */       statement4.close();
/* 1993 */       rs4.close();
/* 1994 */       conn.close();
/*      */     }
/* 1996 */     catch (Exception e) {
/*      */       
/* 1998 */       e.printStackTrace();
/*      */     } 
/* 2000 */     return listAllDxtestwork2;
/*      */   }
/*      */   
/*      */   public static List<Equ> typeclass() {
	List<Equ>  list = new ArrayList<Equ>();
/*      */     try {
/* 2006 */       int inti = 1;
/* 2007 */       Connection conn = JDBCconnect.getConnection();
/* 2008 */       String sql = "select typeclass from typeclass ";
/* 2009 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 2010 */       ResultSet rs = ps.executeQuery();
/* 2011 */       while (rs.next()) {
/* 2012 */         Equ equ = new Equ();
/* 2013 */         equ.setTypeclass(rs.getString("typeclass"));
/* 2014 */         list.add(equ);
/* 2015 */       }  rs.close();
/* 2016 */       ps.close();
/* 2017 */       conn.close();
/* 2018 */     } catch (Exception e) {
/*      */       
/* 2020 */       e.printStackTrace();
/*      */     } 
/* 2022 */     return list;
/*      */   }
/*      */   
/*      */   public static List<Equ> SelectAllDxtestwork() {
/* 2026 */   List<Equ>  listAllDxtestwork = new ArrayList<Equ>();
/*      */     try {
/* 2028 */       int intid = 1;
/* 2029 */       Connection conn = JDBCconnect.getConnection();
/*      */       
/* 2031 */       String sql = "select t1.ID,\tt1.MESSAGE,\tt1.USERNAME,\tt1.USERPWD,\tt1.NOWDATE,\tt1.SDATE,\tt1.EDATE,\tt1.SN,\tt1.PICTURE,\tt1.STATU,\tt1.STNO,\tt1.TASK,\tt1.TIME,t2.ID AS ID_t2,\tt2.STDATE AS STDATE_t2,\tt2.SDATE AS SDATE_t2,\tt2.EDATE AS EDATE_t2,\tt2.REDATE AS REDATE_t2,\tt2.PNAME AS PNAME_t2,\tt2.USE AS USE_t2,\tt2.OWNNAME AS OWNNAME_t2,\tt2.PRONAME AS PRONAME_t2,\tt2.MANNAME AS MANNAME_t2,\tt2.AGENAME AS AGENAME_t2,\tt2.MANTYP AS MANTYP_t2,\tt2.SNAME AS SNAME_t2,\tt2.STYP AS STYP_t2,\tt2.POS AS POS_t2,\tt2.IP AS IP_t2,\tt2.PORT AS PORT_t2,\tt2.CPU AS CPU_t2,\tt2.MEMORY AS MEMORY_t2,\tt2.DISK AS DISK_t2,\tt2.SYN AS SYN_t2,\tt2.ORACLE AS ORACLE_t2,\tt2.SN AS SN_t2,\tt2.OTH AS OTH_t2,\tt2.SID AS SID_t2 from dxtestwork t1,dxtest t2 where t2.sn!='0' and t1.sn=t2.sn and t1.stno!='0' and t1.userpwd is null and task='0' order by t1.sdate desc";

/*      */ 
/*      */       
/* 2041 */       Statement statement = null;
/* 2042 */       statement = conn.createStatement();
/* 2043 */       ResultSet rs = statement.executeQuery(sql);
/* 2044 */       while (rs.next()) {
/*      */         
/* 2046 */         Equ equ = new Equ();
/* 2047 */         equ.setMessage(rs.getString("message"));
/* 2048 */         equ.setUsername(rs.getString("username"));
/* 2049 */         equ.setUserpwd(rs.getString("userpwd"));
/* 2050 */         equ.setNowdate(rs.getString("nowdate"));
/* 2051 */         equ.setSn(rs.getString("sn"));
/* 2052 */         equ.setStatu(rs.getString("statu"));
/* 2053 */         equ.setPicture(rs.getString("picture"));
/* 2054 */         equ.setEdate(rs.getString("edate"));
/* 2055 */         equ.setSdate(rs.getString("sdate"));
/* 2056 */         equ.setStno(rs.getString("stno"));
/* 2057 */         equ.setTask(rs.getString("task"));
/* 2058 */         equ.setPNAME_T2(rs.getString("PNAME_T2"));
/* 2059 */         equ.setIP_T2(rs.getString("IP_T2"));
/* 2060 */         equ.setPOS_T2(rs.getString("POS_T2"));
/* 2061 */         listAllDxtestwork.add(equ);
/*      */       } 
				sql="select * FROM dxtestwork WHERE statu='环境' and task<>'1' AND USERPWD is null";
				rs=statement.executeQuery(sql);
				while (rs.next()) {
					Equ equ = new Equ();
/* 2047 */         equ.setMessage(rs.getString("message"));
/* 2048 */         equ.setUsername(rs.getString("username"));
/* 2049 */         equ.setUserpwd(rs.getString("userpwd"));
/* 2050 */         equ.setNowdate(rs.getString("nowdate"));
/* 2051 */         equ.setSn(rs.getString("sn"));
/* 2052 */         equ.setStatu(rs.getString("statu"));
/* 2053 */         equ.setPicture(rs.getString("picture"));
/* 2054 */         equ.setEdate(rs.getString("edate"));
/* 2055 */         equ.setSdate(rs.getString("sdate"));
/* 2056 */         equ.setStno(rs.getString("stno"));
/* 2057 */         equ.setTask(rs.getString("task"));
/* 2058 */         equ.setPNAME_T2("9楼机房环境问题");
/* 2059 */         equ.setIP_T2("无");
/* 2060 */         equ.setPOS_T2("无");
/* 2061 */         listAllDxtestwork.add(equ);
					
				}


/* 2063 */       rs.close();
/* 2064 */       statement.close();
/* 2065 */       conn.close();
/*      */     }
/* 2067 */     catch (Exception e) {
/*      */       
/* 2069 */       e.printStackTrace();
/*      */     } 
/* 2071 */     return listAllDxtestwork;
/*      */   }
/*      */   
/*      */   public static List<Equ> SelectAllMessageItem(String sn, String stno) {
/* 2075 */     List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/* 2077 */       int intid = 1;
/* 2078 */       Connection conn = JDBCconnect.getConnection();
/* 2079 */       String sql = "select * from dxtestwork where sn=? and stno=? order by nowdate,statu desc";
/* 2080 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 2081 */       ps.setString(intid++, sn);
/* 2082 */       ResultSet rs = ps.executeQuery("select * from dxtestwork where sn='" + sn.trim() + "' and stno='" + stno + "' order by nowdate,statu desc");
/* 2083 */       while (rs.next()) {
/* 2084 */         Equ equ = new Equ();
/* 2085 */         equ.setMessage(rs.getString("message"));
/* 2086 */         equ.setUsername(rs.getString("username"));
/* 2087 */         equ.setUserpwd(rs.getString("userpwd"));
/* 2088 */         equ.setNowdate(rs.getString("nowdate"));
/* 2089 */         equ.setSn(rs.getString("sn"));
/* 2090 */         equ.setStatu(rs.getString("statu"));
/* 2091 */         equ.setPicture(rs.getString("picture"));
/* 2092 */         equ.setEdate(rs.getString("edate"));
/* 2093 */         equ.setSdate(rs.getString("sdate"));
/* 2094 */         list.add(equ);
/*      */       } 
/* 2096 */       rs.close();
/* 2097 */       ps.close();
/* 2098 */       conn.close();
/*      */     
/*      */     }
/* 2101 */     catch (Exception e) {
/*      */       
/* 2103 */       e.printStackTrace();
/*      */     } 
/* 2105 */     return list;
/*      */   }
/*      */ 
/*      */   
/*      */   public static List<Equ> SelectAllMessage(String sn) {
/* 2110 */     List<Equ> list = new ArrayList<Equ>();
/*      */     try {
/* 2112 */       int intid = 1;
/* 2113 */       Connection conn = JDBCconnect.getConnection();
/* 2114 */       String sql = "select * from dxtestwork where sn=? order by nowdate desc,statu desc";
/* 2115 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 2116 */       ps.setString(intid++, sn);
/* 2117 */       ResultSet rs = ps.executeQuery("select * from dxtestwork where sn='" + sn.trim() + "' order by nowdate desc,statu desc");
/* 2118 */       while (rs.next()) {
/* 2119 */         Equ equ = new Equ();
/* 2120 */         equ.setMessage(rs.getString("message"));
/* 2121 */         equ.setUsername(rs.getString("username"));
/* 2122 */         equ.setUserpwd(rs.getString("userpwd"));
/* 2123 */         equ.setNowdate(rs.getString("nowdate"));
/* 2124 */         equ.setSn(rs.getString("sn"));
/* 2125 */         equ.setStatu(rs.getString("statu"));
/* 2126 */         equ.setPicture(rs.getString("picture"));
/* 2127 */         equ.setEdate(rs.getString("edate"));
/* 2128 */         equ.setSdate(rs.getString("sdate"));
/* 2129 */         list.add(equ);
/*      */       } 
/* 2131 */       rs.close();
/* 2132 */       ps.close();
/* 2133 */       conn.close();
/*      */     }
/* 2135 */     catch (Exception e) {
/*      */       
/* 2137 */       e.printStackTrace();
/*      */     } 
/* 2139 */     return list;
/*      */   }
/*      */   public static void updata_dxtestworkPer(String username, String sdate, String edate, String statu) {
/*      */     try {
/* 2143 */       int intid = 1;
/* 2144 */       Connection conn = JDBCconnect.getConnection();
/*      */       
/* 2146 */       String sql1 = "insert into dxtestwork(username,sdate,edate,statu) values(?,?,?,?)";
/* 2147 */       String sql2 = "select * from dxtestwork where username=? and sdate=? and edate=? and statu=?";
/* 2148 */       PreparedStatement ps1 = null;
/* 2149 */       PreparedStatement ps2 = conn.prepareStatement(sql2);
/* 2150 */       ps2.setString(intid++, username);
/* 2151 */       ps2.setString(intid++, sdate);
/* 2152 */       ps2.setString(intid++, edate);
/* 2153 */       ps2.setString(intid++, statu);
/* 2154 */       ResultSet rs = ps2.executeQuery();
/* 2155 */       if (!rs.next()) {
/* 2156 */         intid = 1;
/*      */         
/* 2158 */         ps1 = conn.prepareStatement(sql1);
/* 2159 */         ps1.setString(intid++, username);
/* 2160 */         ps1.setString(intid++, sdate);
/* 2161 */         ps1.setString(intid++, edate);
/* 2162 */         ps1.setString(intid++, statu);
/*      */ 
/*      */         
/* 2165 */         ps1.executeUpdate();
/* 2166 */         ps1.close();
/*      */       } 
/*      */ 
/*      */ 
/*      */ 
/*      */       
/* 2172 */       ps2.close();
/* 2173 */       rs.close();
/* 2174 */       conn.close();
/*      */     }
/* 2176 */     catch (Exception e) {
/*      */       
/* 2178 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */   
/*      */   public static boolean upfileP(String sql) {
/* 2183 */     boolean a = false;
/*      */     
/*      */     try {
/* 2186 */       Connection conn = JDBCconnect.getConnection();
/* 2187 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 2188 */       ResultSet rs = ps.executeQuery();
/* 2189 */       a = true;
/* 2190 */       rs.close();
/* 2191 */       ps.close();
/* 2192 */       conn.close();
/*      */     }
/* 2194 */     catch (Exception e) {
/*      */       
/* 2196 */       e.printStackTrace();
/* 2197 */       a = false;
/*      */     } 
/* 2199 */     return a;
/*      */   }
/*      */   
/*      */   public static void updataItemRes(String sn, String message, String userid, String nowdate, String statu, String picture, String edate, String sdate, String stno) {
/*      */     try {
/* 2204 */       int intid = 1;
/* 2205 */       Connection conn = JDBCconnect.getConnection();
/* 2206 */       String sql = "insert into dxtestwork(message,username,nowdate,sn,statu,picture,edate,sdate,stno,task) values(?,?,?,?,?,?,?,?,?,?)";
/* 2207 */       String sql2 = "select * from dxtestwork where stno=? and message=?";
/* 2208 */       String sql3 = "update dxtestwork set  userpwd=?  where  stno=?";
/* 2209 */       PreparedStatement ps2 = conn.prepareStatement(sql2);
/* 2210 */       ps2.setString(intid++, stno);
/* 2211 */       ps2.setString(intid++, message);
/* 2212 */       ResultSet rs = ps2.executeQuery();
/* 2213 */       if (!rs.next()) {
/* 2214 */         intid = 1;
/* 2215 */         PreparedStatement ps = conn.prepareStatement(sql);
/* 2216 */         ps.setString(intid++, message);
/* 2217 */         ps.setString(intid++, userid);
/* 2218 */         ps.setString(intid++, nowdate);
/* 2219 */         ps.setString(intid++, sn);
/* 2220 */         ps.setString(intid++, statu);
/* 2221 */         ps.setString(intid++, picture);
/* 2222 */         ps.setString(intid++, edate);
/* 2223 */         ps.setString(intid++, sdate);
/* 2224 */         ps.setString(intid++, stno);
/* 2225 */         ps.setString(intid++, "0");
/* 2226 */         ps.executeUpdate();
/* 2227 */         intid = 1;
/* 2228 */         PreparedStatement ps3 = conn.prepareStatement(sql3);
/* 2229 */         ps3.setString(intid++, "restore");
/* 2230 */         ps3.setString(intid++, stno);
/* 2231 */         ps3.executeUpdate();
/* 2232 */         ps.close();
/* 2233 */         ps3.close();
/*      */       } 
/*      */ 
/*      */ 
/*      */       
/* 2238 */       ps2.close();
/* 2239 */       rs.close();
/* 2240 */       conn.close();
/*      */     }
/* 2242 */     catch (Exception e) {
/*      */       
/* 2244 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */ 
/*      */   
/*      */   public static void updata_dxtestwork2(String sn, String message, String time, String userid, String nowdate, String statu, String picture, String edate, String sdate, String stno) {
/*      */     try {
/* 2251 */       int intid = 1;
/* 2252 */       Connection conn = JDBCconnect.getConnection();
/* 2253 */       String sql = "insert into dxtestwork(message,username,nowdate,sn,statu,picture,edate,sdate,stno,task,time) values(?,?,?,?,?,?,?,?,?,?,?)";
/* 2254 */       String sql2 = "select * from dxtestwork where stno=? and message=?";
/* 2255 */       String sql3 = "update dxtestwork set  userpwd='restore'   where  stno=?";
/*      */       
/* 2257 */       PreparedStatement ps = null;
/* 2258 */       PreparedStatement ps2 = conn.prepareStatement(sql2);
/* 2259 */       PreparedStatement ps3 = null;
/* 2260 */       ps2.setString(intid++, stno);
/* 2261 */       ps2.setString(intid++, message);
/* 2262 */       ResultSet rs = ps2.executeQuery();
/* 2263 */       if (!rs.next()) {
/* 2264 */         intid = 1;
/* 2265 */         ps = conn.prepareStatement(sql);
/* 2266 */         ps.setString(intid++, message);
/* 2267 */         ps.setString(intid++, userid);
/* 2268 */         ps.setString(intid++, nowdate);
/* 2269 */         ps.setString(intid++, sn);
/* 2270 */         ps.setString(intid++, statu);
/* 2271 */         ps.setString(intid++, picture);
/* 2272 */         ps.setString(intid++, edate);
/* 2273 */         ps.setString(intid++, sdate);
/* 2274 */         ps.setString(intid++, stno);
/* 2275 */         ps.setString(intid++, "0");
/* 2276 */         ps.setString(intid++, time);
/* 2277 */         ps.executeUpdate();
/*      */         
/* 2279 */         intid = 1;
/* 2280 */         ps3 = conn.prepareStatement(sql3);
/* 2281 */         ps3.setString(intid++, stno);
/* 2282 */         ps3.executeUpdate();
/*      */         
/* 2284 */         ps.close();
/* 2285 */         ps3.close();
/*      */       } 
/*      */ 
/*      */       
/* 2289 */       ps2.close();
/* 2290 */       rs.close();
/* 2291 */       conn.close();
/* 2292 */     } catch (Exception e) {
/*      */       
/* 2294 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */ 
/*      */ 
/*      */   
/*      */   public static void updata_dxtestworkItemAdd(String sn, String message, String userid, String nowdate, String statu, String picture, String edate, String sdate, String stno) {
/*      */     try {
/* 2302 */       int intid = 1;
/* 2303 */       Connection conn = JDBCconnect.getConnection();
/* 2304 */       String sql = "insert into dxtestwork(message,username,nowdate,sn,statu,picture,edate,sdate,stno,task) values(?,?,?,?,?,?,?,?,?,?)";
/* 2305 */       String sql2 = "select * from dxtestwork where stno=? and message=?";
/* 2306 */       PreparedStatement ps2 = conn.prepareStatement(sql2);
/* 2307 */       ps2.setString(intid++, stno);
/* 2308 */       ps2.setString(intid++, message);
/* 2309 */       ResultSet rs = ps2.executeQuery();
/* 2310 */       if (!rs.next()) {
/* 2311 */         intid = 1;
/* 2312 */         PreparedStatement ps = conn.prepareStatement(sql);
/* 2313 */         ps.setString(intid++, message);
/* 2314 */         ps.setString(intid++, userid);
/* 2315 */         ps.setString(intid++, nowdate);
/* 2316 */         ps.setString(intid++, sn);
/* 2317 */         ps.setString(intid++, statu);
/* 2318 */         ps.setString(intid++, picture);
/* 2319 */         ps.setString(intid++, edate);
/* 2320 */         ps.setString(intid++, sdate);
/* 2321 */         ps.setString(intid++, stno);
/* 2322 */         ps.setString(intid++, "1");
/* 2323 */         ps.executeUpdate();
/* 2324 */         ps.close();
/*      */       } 
/*      */ 
/*      */       
/* 2328 */       ps2.close();
/* 2329 */       rs.close();
/* 2330 */       conn.close();
/*      */     }
/* 2332 */     catch (Exception e) {
/*      */       
/* 2334 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */ 
/*      */   
/*      */   public static void updataPartPic2(String sn, String message, String userid, String nowdate, String statu, String picture, String edate, String sdate, String stno) {
/*      */     try {
/* 2341 */       int intid = 1;
/*      */ 
/*      */ 
/*      */       
/* 2345 */       Connection conn = JDBCconnect.getConnection();
/* 2346 */       String sql = "insert into dxtestwork(message,username,nowdate,sn,statu,picture,edate,sdate,stno,task) values(?,?,?,?,?,?,?,?,?,?)";
/* 2347 */       String sql2 = "select * from dxtestwork where stno=? and message=?";
/* 2348 */       String sql3 = "update dxtestwork set  userpwd=?  where  stno=?";
/* 2349 */       PreparedStatement ps2 = conn.prepareStatement(sql2);
/* 2350 */       ps2.setString(intid++, stno);
/* 2351 */       ps2.setString(intid++, message);
/* 2352 */       ResultSet rs = ps2.executeQuery();
/*      */       
/* 2354 */       if (!rs.next()) {
/* 2355 */         intid = 1;
/*      */         
/* 2357 */         PreparedStatement ps = conn.prepareStatement(sql);
/* 2358 */         ps.setString(intid++, message);
/* 2359 */         ps.setString(intid++, userid);
/* 2360 */         ps.setString(intid++, nowdate);
/* 2361 */         ps.setString(intid++, sn);
/* 2362 */         ps.setString(intid++, statu);
/* 2363 */         ps.setString(intid++, picture);
/* 2364 */         ps.setString(intid++, edate);
/* 2365 */         ps.setString(intid++, sdate);
/* 2366 */         ps.setString(intid++, stno);
/* 2367 */         ps.setString(intid++, "0");
/* 2368 */         ps.executeUpdate();
/*      */ 
/*      */         
/* 2371 */         intid = 1;
/* 2372 */         PreparedStatement ps3 = conn.prepareStatement(sql3);
/* 2373 */         ps3.setString(intid++, "restore");
/* 2374 */         ps3.setString(intid++, stno);
/* 2375 */         ps3.executeUpdate();
/* 2376 */         ps3.close();
/* 2377 */         ps.close();
/*      */       } 
/*      */ 
/*      */       
/* 2381 */       ps2.close();
/* 2382 */       rs.close();
/* 2383 */       conn.close();
/*      */     
/*      */     }
/* 2386 */     catch (Exception e) {
/*      */       
/* 2388 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */ 
/*      */ 
/*      */   
/*      */   public static void updataPartPic(String sn, String message, String userid, String nowdate, String statu, String picture, String edate, String sdate, String stno) {
/*      */     try {
/* 2396 */       int inti = 1;
/* 2397 */       String task = "1";
/* 2398 */       Connection conn = JDBCconnect.getConnection();
/* 2399 */       String sql1 = "insert into dxtestwork(message,username,nowdate,sn,statu,picture,edate,sdate,stno,task) values(?,?,?,?,?,?,?,?,?,?)";
/* 2400 */       String sql2 = "select * from dxtestwork where stno=?";
/* 2401 */       String sql3 = "select * from dxtestwork where sn=? and username=? and sdate=? and edate=? and statu=? and message=?";
/* 2402 */       PreparedStatement ps = null;
/* 2403 */       PreparedStatement ps3 = conn.prepareStatement(sql3);
/* 2404 */       ps3.setString(inti++, sn);
/* 2405 */       ps3.setString(inti++, userid);
/* 2406 */       ps3.setString(inti++, sdate);
/* 2407 */       ps3.setString(inti++, edate);
/* 2408 */       ps3.setString(inti++, statu);
/* 2409 */       ps3.setString(inti++, message);
/* 2410 */       ResultSet rs = ps3.executeQuery();
/* 2411 */       if (!rs.next()) {
/* 2412 */         inti = 1;
/* 2413 */         ps = conn.prepareStatement(sql1);
/* 2414 */         ps.setString(inti++, message);
/* 2415 */         ps.setString(inti++, userid);
/* 2416 */         ps.setString(inti++, nowdate);
/* 2417 */         ps.setString(inti++, sn);
/* 2418 */         ps.setString(inti++, statu);
/* 2419 */         ps.setString(inti++, picture);
/* 2420 */         ps.setString(inti++, edate);
/* 2421 */         ps.setString(inti++, sdate);
/* 2422 */         ps.setString(inti++, stno);
/* 2423 */         ps.setString(inti++, task);
/* 2424 */         ps.executeUpdate();
/*      */       } 
/*      */ 
/*      */ 
/*      */ 
/*      */       
/* 2430 */       rs.close();
/* 2431 */       ps3.close();
/* 2432 */       ps.close();
/* 2433 */       conn.close();
/* 2434 */     } catch (Exception e) {
/*      */       
/* 2436 */       e.printStackTrace();
/*      */     } 
/*      */   }
/*      */ 
/*      */ 
/*      */ 
/*      */   
/*      */   public static void updata_dxtestwork(String sn, String message, String time, String userid, String nowdate, String statu, String picture, String edate, String sdate, String stnonew) {
/* 2444 */     if (stnonew.equals("0")) {
/*      */       try {
/* 2446 */         int intid = 1;
/* 2447 */         Connection conn = JDBCconnect.getConnection();
/* 2448 */         String sql = "insert into dxtestwork(message,username,nowdate,sn,statu,picture,edate,sdate,stno,task,time) values(?,?,?,?,?,?,?,?,?,?,?)";
/*      */ 
/*      */         
/* 2451 */         PreparedStatement ps = conn.prepareStatement(sql);
/* 2452 */         ps.setString(intid++, message);
/* 2453 */         ps.setString(intid++, userid);
/* 2454 */         ps.setString(intid++, nowdate);
/* 2455 */         ps.setString(intid++, sn);
/* 2456 */         ps.setString(intid++, statu);
/* 2457 */         ps.setString(intid++, picture);
/* 2458 */         ps.setString(intid++, edate);
/* 2459 */         ps.setString(intid++, sdate);
/* 2460 */         ps.setString(intid++, stnonew);
/* 2461 */         ps.setString(intid++, "0");
/* 2462 */         ps.setString(intid++, time);
/* 2463 */         ps.executeUpdate();
/* 2464 */         ps.close();
/* 2465 */         conn.close();
/* 2466 */       } catch (Exception e) {
/*      */         
/* 2468 */         e.printStackTrace();
/*      */       } 
/*      */     } else {
/*      */ 
/*      */       
/*      */       try {
/*      */         
/* 2475 */         int intid = 1;
/* 2476 */         Connection conn = JDBCconnect.getConnection();
/* 2477 */         String sql = "insert into dxtestwork(message,username,nowdate,sn,statu,picture,edate,sdate,stno,task,time) values(?,?,?,?,?,?,?,?,?,?,?)";
/* 2478 */         String sql2 = "select * from dxtestwork where username=? and sdate=? and edate=? and statu=?";
/*      */         
/* 2480 */         PreparedStatement ps2 = conn.prepareStatement(sql2);
/* 2481 */         ps2.setString(intid++, userid);
/* 2482 */         ps2.setString(intid++, sdate);
/* 2483 */         ps2.setString(intid++, edate);
/* 2484 */         ps2.setString(intid++, statu);
/* 2485 */         ResultSet rs = ps2.executeQuery("select * from dxtestwork where sn='" + sn + "' and username='" + userid + "' and sdate='" + sdate + "' and edate='" + edate + "' and statu='" + statu + "' and message='" + message + "'");
/* 2486 */         if (!rs.next()) {
/*      */           
/* 2488 */           intid = 1;
/*      */           
/* 2490 */           PreparedStatement ps = conn.prepareStatement(sql);
/* 2491 */           ps.setString(intid++, message);
/* 2492 */           ps.setString(intid++, userid);
/* 2493 */           ps.setString(intid++, nowdate);
/* 2494 */           ps.setString(intid++, sn);
/* 2495 */           ps.setString(intid++, statu);
/* 2496 */           ps.setString(intid++, picture);
/* 2497 */           ps.setString(intid++, edate);
/* 2498 */           ps.setString(intid++, sdate);
/* 2499 */           ps.setString(intid++, stnonew);
/* 2500 */           ps.setString(intid++, "0");
/* 2501 */           ps.setString(intid++, time);
/* 2502 */           ps.executeUpdate();
/* 2503 */           ps.close();
/*      */         } 
/*      */ 
/*      */ 
/*      */ 
/*      */         
/* 2509 */         ps2.close();
/* 2510 */         rs.close();
/* 2511 */         conn.close();
/*      */       }
/* 2513 */       catch (Exception e) {
/*      */         
/* 2515 */         e.printStackTrace();
/*      */       } 
/*      */     } 
/*      */   }
/*      */ 
/*      */ 
/*      */ 
/*      */ 
/*      */   
/*      */   public static List<Equ> SelectAllSn2(String sn) {
/* 2525 */     List<Equ> listsn = new ArrayList<Equ>();
/*      */     try {
/* 2527 */       int intsn = 1;
/* 2528 */       Connection conn = JDBCconnect.getConnection();
/* 2529 */       String sql = "select * from dxtest where sn=? ";
/* 2530 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 2531 */       ps.setString(intsn++, sn);
/* 2532 */       ps.execute();
/* 2533 */       ResultSet rs = ps.getResultSet();
/* 2534 */       System.out.println("===" + rs.next());
/* 2535 */       while (rs.next()) {
/* 2536 */         Equ equsn = new Equ();
/* 2537 */         equsn.setId(rs.getInt("id"));
/* 2538 */         equsn.setSid(rs.getString("sid"));
/* 2539 */         equsn.setStdate(rs.getString("stdate"));
/* 2540 */         equsn.setSdate(rs.getString("sdate"));
/* 2541 */         equsn.setEdate(rs.getString("edate"));
/* 2542 */         equsn.setRedate(rs.getString("redate"));
/* 2543 */         equsn.setPname(rs.getString("pname"));
/* 2544 */         equsn.setUse(rs.getString("use"));
/* 2545 */         equsn.setOwnname(rs.getString("ownname"));
/* 2546 */         equsn.setProname(rs.getString("proname"));
/* 2547 */         equsn.setManname(rs.getString("manname"));
/* 2548 */         equsn.setAgename(rs.getString("agename"));
/* 2549 */         equsn.setMantyp(rs.getString("mantyp"));
/* 2550 */         equsn.setSname(rs.getString("sname"));
/* 2551 */         equsn.setStyp(rs.getString("styp"));
/* 2552 */         equsn.setPos(rs.getString("pos"));
/* 2553 */         equsn.setIp(rs.getString("ip"));
/* 2554 */         equsn.setPort(rs.getString("port"));
/* 2555 */         equsn.setCpu(rs.getString("cpu"));
/* 2556 */         equsn.setMemory(rs.getString("memory"));
/* 2557 */         equsn.setDisk(rs.getString("disk"));
/* 2558 */         equsn.setSyn(rs.getString("syn"));
/* 2559 */         equsn.setOracle(rs.getString("oracle"));
/* 2560 */         equsn.setSn(rs.getString("sn"));
/* 2561 */         equsn.setOth(rs.getString("oth"));
/* 2562 */         equsn.setSroot(rs.getString("sroot"));
/* 2563 */         equsn.setSpwd(rs.getString("spwd"));
/* 2564 */         equsn.setOroot(rs.getString("oroot"));
/* 2565 */         equsn.setOpwd(rs.getString("opwd"));
/* 2566 */         equsn.setAroot(rs.getString("aroot"));
/* 2567 */         equsn.setApwd(rs.getString("apwd"));
/* 2568 */         equsn.setTitle(rs.getString("title"));
/* 2569 */         equsn.setUrl(rs.getString("url"));
/* 2570 */         equsn.setDid(rs.getString("did"));
/* 2571 */         listsn.add(equsn);
/*      */       } 
/* 2573 */       ps.close();
/* 2574 */       rs.close();
/* 2575 */       conn.close();
/*      */     }
/* 2577 */     catch (Exception e) {
/*      */       
/* 2579 */       e.printStackTrace();
/*      */     } 
/*      */     
/* 2582 */     return listsn;
/*      */   }
/*      */   
/*      */   public static List<Equ> Warningstatu(String sqlv) {
/* 2586 */     List<Equ> list = new ArrayList<Equ>();
/*      */     
/*      */     try {
/* 2589 */       int inti = 1;
/* 2590 */       Connection conn = JDBCconnect.getConnection();
/* 2591 */       conn.setAutoCommit(true);
/* 2592 */       String sql = sqlv;
/* 2593 */       PreparedStatement ps = conn.prepareStatement(sql);
/* 2594 */       ResultSet rs = ps.executeQuery();
/* 2595 */       ResultSetMetaData md = rs.getMetaData();
/* 2596 */       int columnCount = md.getColumnCount();
/* 2597 */       while (rs.next()) {
/* 2598 */         Equ equ = new Equ();
/*      */         
/* 2600 */         Map<String, Object> rowData = new HashMap<String, Object>();
/* 2601 */         for (int i = 1; i <= columnCount; i++) {
/* 2602 */           rowData.put(md.getColumnName(i), rs.getObject(i));
/*      */         }
/* 2604 */         equ.setRowData(rowData);
/* 2605 */         list.add(equ);
/*      */       } 
/*      */ 
/*      */       
/* 2609 */       rs.close();
/* 2610 */       ps.close();
/* 2611 */       conn.close();
/* 2612 */     } catch (Exception e) {
/*      */       
/* 2614 */       e.printStackTrace();
/*      */     } 
/* 2616 */     return list;
/*      */   }
/*      */ 
/*      */ 
/*      */   
/*      */   public static List<Equ> SelectAllSn(String sn) {
/* 2622 */     List<Equ> listsn = new ArrayList<Equ>();
/*      */     try {
/* 2624 */       int intsn = 1;
/* 2625 */       sn = sn.trim();
/* 2626 */       Connection connsn = JDBCconnect.getConnection();
/* 2627 */       String sqlsn = "select * from dxtest where sn=? ";
/* 2628 */       PreparedStatement pssn = connsn.prepareStatement(sqlsn);
/* 2629 */       pssn.setString(intsn++, sn);
/* 2630 */       ResultSet rssn = pssn.executeQuery();
/*      */ 
/*      */       
/* 2633 */       while (rssn.next()) {
/* 2634 */         Equ equsn = new Equ();
/* 2635 */         equsn.setId(rssn.getInt("id"));
/* 2636 */         equsn.setSid(rssn.getString("sid"));
/* 2637 */         equsn.setStdate(rssn.getString("stdate"));
/* 2638 */         equsn.setSdate(rssn.getString("sdate"));
/* 2639 */         equsn.setEdate(rssn.getString("edate"));
/* 2640 */         equsn.setRedate(rssn.getString("redate"));
/* 2641 */         equsn.setPname(rssn.getString("pname"));
/* 2642 */         equsn.setUse(rssn.getString("use"));
/* 2643 */         equsn.setOwnname(rssn.getString("ownname"));
/* 2644 */         equsn.setProname(rssn.getString("proname"));
/* 2645 */         equsn.setManname(rssn.getString("manname"));
/* 2646 */         equsn.setAgename(rssn.getString("agename"));
/* 2647 */         equsn.setMantyp(rssn.getString("mantyp"));
/* 2648 */         equsn.setSname(rssn.getString("sname"));
/* 2649 */         equsn.setStyp(rssn.getString("styp"));
/* 2650 */         equsn.setPos(rssn.getString("pos"));
/* 2651 */         equsn.setIp(rssn.getString("ip"));
/* 2652 */         equsn.setPort(rssn.getString("port"));
/* 2653 */         equsn.setCpu(rssn.getString("cpu"));
/* 2654 */         equsn.setMemory(rssn.getString("memory"));
/* 2655 */         equsn.setDisk(rssn.getString("disk"));
/* 2656 */         equsn.setSyn(rssn.getString("syn"));
/* 2657 */         equsn.setOracle(rssn.getString("oracle"));
/* 2658 */         equsn.setSn(rssn.getString("sn"));
/* 2659 */         equsn.setOth(rssn.getString("oth"));
/* 2660 */         equsn.setSroot(rssn.getString("sroot"));
/* 2661 */         equsn.setSpwd(rssn.getString("spwd"));
/* 2662 */         equsn.setOroot(rssn.getString("oroot"));
/* 2663 */         equsn.setOpwd(rssn.getString("opwd"));
/* 2664 */         equsn.setAroot(rssn.getString("aroot"));
/* 2665 */         equsn.setApwd(rssn.getString("apwd"));
/* 2666 */         equsn.setTitle(rssn.getString("title"));
/* 2667 */         equsn.setUrl(rssn.getString("url"));
/* 2668 */         equsn.setDid(rssn.getString("did"));
/* 2669 */         listsn.add(equsn);
/*      */       } 
/* 2671 */       rssn.close();
/* 2672 */       pssn.close();
/* 2673 */       connsn.close();
/*      */     }
/* 2675 */     catch (Exception e) {
/*      */       
/* 2677 */       e.printStackTrace();
/*      */     } 
/* 2679 */     return listsn;
/*      */   }
/*      */ }


/* Location:              D:\桌面\dxtest.war!\WEB-INF\classes\com\clas\SelectAll.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       1.0.7
 */