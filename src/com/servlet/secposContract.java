package com.servlet;

import com.clas.Equ;
import com.clas.SelectAll;
import com.google.gson.Gson;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;








@WebServlet({"/secposContract"})
public class secposContract
  extends HttpServlet
{
  private static final long serialVersionUID = 1L;
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("Text/html");
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    HttpSession session = request.getSession();
    Gson gson = new Gson();

    
    SimpleDateFormat formatYear = new SimpleDateFormat("yyyy");
    SimpleDateFormat formatMonth = new SimpleDateFormat("M");
    Calendar c = Calendar.getInstance();
    DecimalFormat df = new DecimalFormat("00");
    
    Date y = null;
    String yy = null;
    String mm = null;
    double a = 0.0D;
    double b = 0.0D;
    double count = 0.0D;
    int t = 0;
    String name = "";
    double value = 0.0D;











    
    String sql = null;
    List<Equ> list = new ArrayList<Equ>();
    List<Equ> list2 = new ArrayList<Equ>();
    List<Equ> listf = new ArrayList<Equ>();
    List<Equ> lists = new ArrayList<Equ>();
    List<Equ> listfs = new ArrayList<Equ>();
    List<Equ> listss = new ArrayList<Equ>();
    String[][] arr = new String[3][12];
    String[] arrfx = new String[3];
    String[] arrsx = new String[3];
    String[] arrCount = new String[12];
    
    for (int i = 0; i < arr.length; i++) {
      for (int j = 0; j < arr[i].length; j++) {
        c.setTime(new Date());
        
        c.add(1, -i);
        y = c.getTime();
        yy = formatYear.format(y);
        
        t = j + 1;
        mm = String.valueOf(yy) + "-" + df.format(t);
        
        if (i == 0)
        {
          if (j + 1 > Integer.parseInt(formatMonth.format(new Date()))) {
            arr[i][j] = "";
            arrCount[j] = "0";

            
            continue;
          } 
        }
        
        sql = "SELECT paypor,realpay,STATU_SUB,CAMOUNT from plansub t1,DXTESTCONTRACT t2  WHERE realpay LIKE '%" + mm + "%' and STATU_SUB='1' and  t1.contractid=t2.contractid";
        list.clear();
        list = SelectAll.Warningstatu(sql);
        if (i == 0) {
          arrCount[j] = String.valueOf(list.size());
        }
        for (int j2 = 0; j2 < list.size(); j2++) {
          a = Integer.parseInt((String)((Equ)list.get(j2)).getRowData().get("PAYPOR"));
          b = Integer.parseInt((String)((Equ)list.get(j2)).getRowData().get("CAMOUNT"));
          count += a * b / 100.0D;
        } 
        arr[i][j] = df.format(count);
        
        count = 0.0D;
        continue;
      } 
    } 
    sql = "SELECT DISTINCT CLASSFAMILY from contractclass ORDER by classfamily";
    listf = SelectAll.Warningstatu(sql);
    sql = "SELECT DISTINCT CLASSSON,classfamily from contractclass ORDER by classfamily";
    lists = SelectAll.Warningstatu(sql);
    String listfGsosn = gson.toJson(listf);
    String listsGsosn = gson.toJson(lists);
    session.setAttribute("listfGsosn", listfGsosn);
    session.setAttribute("listsGsosn", listsGsosn);


    
    for (int i = 0; i < 3; i++) {
      
      c.setTime(new Date());
      c.add(1, -i);
      y = c.getTime();
      mm = String.valueOf(formatYear.format(y)) + "-";
      for (int j = 0; j < listf.size(); j++) {
        Equ equ = new Equ();
        name = (String)((Equ)listf.get(j)).getRowData().get("CLASSFAMILY");
        sql = "SELECT paypor,realpay,STATU_SUB,CAMOUNT,PLAN4,CLASSSON from plansub t1,DXTESTCONTRACT t2  WHERE realpay LIKE '%" + mm + "%' and STATU_SUB='1' and  t1.contractid=t2.contractid and t2.PLAN4='" + name + "'";
        list = SelectAll.Warningstatu(sql);
        
        if (list.size() != 0) {
          
          for (int j2 = 0; j2 < list.size(); j2++) {
            a = Integer.parseInt((String)((Equ)list.get(j2)).getRowData().get("PAYPOR"));
            b = Integer.parseInt((String)((Equ)list.get(j2)).getRowData().get("CAMOUNT"));
            count += a * b / 100.0D;
          } 
          equ.setValue((int)count);
          equ.setName(name);
          listfs.add(equ);
          
          count = 0.0D;
        } else {
          
          equ.setValue((int)count);
          equ.setName(name);
          listfs.add(equ);
          
          count = 0.0D;
        } 
        
        list.clear();
      } 
      
      arrfx[i] = gson.toJson(listfs);
      listfs.clear();
    } 
    
    for (int i = 0; i < 3; i++) {
      c.setTime(new Date());
      c.add(1, -i);
      y = c.getTime();
      mm = String.valueOf(formatYear.format(y)) + "-";
      for (int j = 0; j < lists.size(); j++) {
        Equ equ = new Equ();
        
        name = (String)((Equ)lists.get(j)).getRowData().get("CLASSSON");
        sql = "SELECT paypor,realpay,STATU_SUB,CAMOUNT,PLAN4,CLASSSON from plansub t1,DXTESTCONTRACT t2  WHERE realpay LIKE '%" + mm + "%' and STATU_SUB='1' and  t1.contractid=t2.contractid and t2.CLASSSON='" + name + "'";
        
        list = SelectAll.Warningstatu(sql);
        if (list.size() != 0) {
          for (int j2 = 0; j2 < list.size(); j2++) {
            a = Integer.parseInt((String)((Equ)list.get(j2)).getRowData().get("PAYPOR"));
            b = Integer.parseInt((String)((Equ)list.get(j2)).getRowData().get("CAMOUNT"));
            count += a * b / 100.0D;
          } 
          equ.setValue((int)count);
          equ.setName(name);
          listss.add(equ);
          
          count = 0.0D;
          list.clear();
        } else {
          equ.setValue((int)count);
          equ.setName(name);
          listss.add(equ);
          
          count = 0.0D;
          list.clear();
        } 
      } 
      
      arrsx[i] = gson.toJson(listss);
      listss.clear();
    } 
    
    String arrff0 = arrfx[0];
    String arrff1 = arrfx[1];
    String arrss0 = arrsx[0];
    String arrss1 = arrsx[1];
    String arrCountGson = gson.toJson(arrCount);
    String arrfxGson = gson.toJson(arrfx);
    String arrGson = gson.toJson(arr);
    String arrsxGson = gson.toJson(arrsx);
    session.setAttribute("arrGson", arrGson);
    session.setAttribute("arrfxGson", arrfxGson);
    session.setAttribute("arrsxGson", arrsxGson);
    session.setAttribute("arrCountGson", arrCountGson);
    session.setAttribute("arrff0", arrff0);
    session.setAttribute("arrff1", arrff1);
    session.setAttribute("arrss0", arrss0);
    session.setAttribute("arrss1", arrss1);
    request.getRequestDispatcher("secposContract.jsp").forward(request, response);
  }
}
