package com.servlet;

import com.clas.DataSets;
import com.clas.Equ;
import com.clas.SelectAll;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;













@WebServlet({"/out_contract"})
public class out_contract
  extends HttpServlet
{
  private static final long serialVersionUID = 1L;
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("Text/html");
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    String startDate = request.getParameter("startDate");
    String endDate = request.getParameter("endDate");
    int type = Integer.parseInt(request.getParameter("type"));




    
    Gson gson = new Gson();

    
    HttpSession session = request.getSession();
    String sql = "select t1.ID AS ID_t1,\t\tt1.CONTRACTID AS CONTRACTID_t1,\t\tt1.CONTRACTNAME AS CONTRACTNAME_t1,\tt1.CONTRACTNOWDATE AS CONTRACTNOWDATE_t1,\tt1.STATU AS STATU_t1,\tt1.OPPUNIT AS OPPUNIT_t1,\tt1.MARKDATE AS MARKDATE_t1,\tt1.CONTRACTNLIFE AS CONTRACTNLIFE_t1,\tt1.CAMOUNT AS CAMOUNT_t1,\t\tt1.PLANDATE1 AS PLANDATE1_t1,t1.PLAN3 AS PLAN3_t1,\tt1.PLAN2 AS PLAN2_t1,\tt1.PLANDATE2 AS PLANDATE2_t1,\tt1.PLAN4 AS PLAN4_t1,t1.PLANM1 AS PLANM1_t1,\tt1.SGMONEY AS SGMONEY_t1,\tt1.MYNAME AS MYNAME_t1,\tt1.OPPNAME AS OPPNAME_t1,\tt1.OPPID AS OPPID_t1,\tt1.MYID AS MYID_t1,\tt1.CLASSSON AS CLASSSON_t1,t2.PAYNAME AS PAYNAME_t2,\tt2.PAYPOR AS PAYPOR_t2,\tt2.PAYDATE AS PAYDATE_t2,\tt2.STATU_SUB AS STATU_SUB_t2,\tt2.REALPAY AS REALPAY_t2,\tt2.PAYPLAN AS PAYPLAN_t2,\tt2.CONTRACTID AS CONTRACTID_t2,\tt2.NOW AS NOW_t2,t3.OPPU AS OPPU_t3,\tt3.OPPP AS OPPP_t3,\tt3.OPPA AS OPPA_t3,\tt3.OPPN AS OPPN_t3,\tt3.OPPE AS OPPE_t3,\tt3.OPPX AS OPPX_t3,\tt3.OPPMAIL AS OPPMAIL_t3,\tt3.OPPID AS OPPID_t3,\tt3.OPPE2 AS OPPE2_t3,\tt3.OPPAD AS OPPAD_t3,t4.OPPPAYB AS OPPPAYB_t4,\tt4.OPPPAYA AS OPPPAYA_t4,\tt4.OPPPAYZ AS OPPPAYZ_t4,\tt4.OPPPAYH AS OPPPAYH_t4,\tt4.OPPPAYE AS OPPPAYE_t4,\tt4.OPPPAYA2 AS OPPPAYA2_t4,\tt4.OPPPAYM AS OPPPAYM_t4,\tt4.OPPPAYID AS OPPPAYID_t4 ,t5.MYU AS MYU_t5,\tt5.MYA AS MYA_t5,\tt5.MYP AS MYP_t5,\tt5.MYN AS MYN_t5,\tt5.MYE AS MYE_t5,\tt5.MYAD AS MYAD_t5,\tt5.MYE2 AS MYE2_t5,\tt5.MYX AS MYX_t5,\tt5.MYEMAIL AS MYEMAIL_t5,\tt5.MYID AS MYID_t5,t6.MYPAYB AS MYPAYB_t6,\tt6.MYPAYA AS MYPAYA_t6,\tt6.MYPAYZ AS MYPAYZ_t6,\tt6.MYPAYH AS MYPAYH_t6,\tt6.MYPAYE AS MYPAYE_t6,\tt6.MYPAYA2 AS MYPAYA2_t6,\tt6.MYPAYM AS MYPAYM_t6,\tt6.MYPAYID AS MYPAYID_t6 FROM DXTESTCONTRACT t1,PLANSUB t2,CONTRACTOPP t3,OPPPAY t4 ,CONTRACTMY t5,MYPAY t6 WHERE t1.contractid=t2.contractid and t3.oppid=t1.oppid and t3.oppid=t4.opppayid and t1.myid=t5.myid and t5.myid=t6.mypayid and t2.realpay>='" + 



















      
      DataSets.anytomorrow(startDate) + "'  and t2.realpay<'" + DataSets.anytomorrow(endDate) + "' order by now_t2";
    
    List<Equ> list = SelectAll.Warningstatu(sql);
    
    String listGson = gson.toJson(list);
    session.setAttribute("list_print", list);
    session.setAttribute("listGson_print", listGson);
    boolean f = true;
    PrintWriter out = response.getWriter();
    
    out.print("{\"statu\":" + f + ",\"listGson_print\":" + listGson + "}");
    out.close();
  }
}
