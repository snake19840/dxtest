/*    */ package com.servlet.Testindex;
/*    */ 
/*    */ import com.clas.Equ;
/*    */ import com.clas.SelectAll;
/*    */ import com.google.gson.Gson;
/*    */ import com.google.gson.reflect.TypeToken;
/*    */ import java.io.IOException;
/*    */ import java.io.PrintWriter;
/*    */ import java.util.List;
/*    */ import javax.servlet.ServletException;
/*    */ import javax.servlet.annotation.WebServlet;
/*    */ import javax.servlet.http.HttpServlet;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ import javax.servlet.http.HttpServletResponse;
/*    */ import javax.servlet.http.HttpSession;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ @WebServlet({"/LateAlert"})
/*    */ public class LateAlert
/*    */   extends HttpServlet
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/* 34 */     response.setContentType("Text/html");
/* 35 */     request.setCharacterEncoding("UTF-8");
/* 36 */     response.setCharacterEncoding("UTF-8");
/* 37 */     HttpSession session = request.getSession();
/* 38 */     Gson gson = new Gson();
//String #Gson=gson.toJson(#); 
//session.setAttribute("#Gson", #Gson);
/*    */     
/* 40 */     String contractid = request.getParameter("contractid");
/* 41 */     String plandate3 = request.getParameter("plandate3");
			String username=request.getParameter("username");
///* 42 */     String planm2 = request.getParameter("planm2");
/*    */ 
/*    */     
/* 45 */     int LateAlert = SelectAll.LateAlert(plandate3, contractid,username);
/*    */     
/* 47 */     String sql = "";
/*    */    
///* 49 */     List<Equ> list = (List)gson.fromJson(planm2, (new TypeToken<List<Equ>>() {  }).getType());
//			List<Equ> list = gson.fromJson(planm2, new TypeToken<List<Equ>>() {}.getType());
/*    */     
///* 51 */     for (int i = 0; i < list.size(); i++) {
/////* 52 */       System.out.println(i);
///* 53 */       sql = "update PLANSUB set  REALPAY='" + list.get(i).getPaydate() + "', PAYPLAN='" + list.get(i).getPaydate() + "'  where contractid='" + contractid + "' and payname='" + list.get(i).getPayname() + "'";
///* 54 */       boolean bool = SelectAll.Update(sql);
///*    */     } 
/*    */ 
/*    */     
/* 58 */     PrintWriter out = response.getWriter();
/* 59 */     out.print("LateAlertSuccess");
/* 60 */     out.close();
/*    */   }
/*    */ }


/* Location:              D:\×ÀÃæ\dxtest (2)\WEB-INF\classes\!\com\servlet\Testindex\LateAlert.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       1.0.7
 */