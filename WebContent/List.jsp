<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="java.util.List"%>
<%@page import="com.clas.Equ"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>电信设备管理平台</title>
<style type="text/css">
.aaaa { font-size:14px; color:#000000; text-align: center;font-weight: bold; }
.bbbb { font-size:14px; color:#000000; text-align: left;font-weight: bold;}
.cccc { font-size:20px; color:#000000; text-align: center;font-weight: bold;}
</style>

<meta >
	<meta name="description" content="pick date!">
	<meta name="keywords" content="javascript,html,css">
	<script type="text/javascript" src="/Dxtest/My97DatePicker/WdatePicker.js"> </script> 


<%
String message="";

  if(session.getAttribute("name")==null){

     response.sendRedirect("index_login.jsp");
     message="您好！"+"</b> 请使用用户名与密码登录！";

  }else{}
%>
</head>
<body>
<form action="" method="post" name="myform">
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><%@include file="top.jsp" %> </td>
  </tr>
</table>

 <table width=1114" border="1"  align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="35" valign="top">&nbsp;</td>
      <td width="821" valign="top">
      <table width="100%"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="100%" align="center" valign="middle"><%@include file="register.jsp" %></td>
          </tr>
      </table>


  <table width="1114" height="355" border="0" class="bbbb" >
          <tr>
            <td height="287" valign="top"><table width="1114"  border="1" align="center">
              <tr>
                <td colspan="11" align="center"   class="cccc">所有设备信息</td>
              </tr>
              <tr>
                <td width="98" height="21" align="center" >搬入机房日期</td>
                <td width="157" align="center" >系统名称</td>
                <td width="158" align="center" >设备用途</td>
                <td width="104" align="center" ><span class="word_grey">机房/机架位置</span></td>
                <td width="79" align="center" >资产单位</td>
                <td width="61" align="center" ><span class="word_grey">品牌</span></td>
                <td width="72" align="center" ><span class="word_grey">操作系统</span></td>
                <td width="93" align="center" >设备序列号</td>
                <td width="112" align="center" >资产编号</td>
                <td width="57" align="center" >修改</td>
                <td width="53" align="center" >查询</td>
              </tr>
               <%
				// 获取图书信息集合
					List<Equ> list = (List<Equ>)request.getAttribute("list");
               
					// 判断集合是否有效
					if(list == null || list.size() < 1){
						out.print("没有数据！");
					}else{
						// 遍历集合中的数据
						for(Equ equ : list){
			%> 
              
              
              <tr>
                <td align="center"><%=equ.getStdate()%></td>
                <td align="center"><%=equ.getPname()%></td>
                <td align="center"><%=equ.getUse()%></td>
                <td align="center"><%=equ.getPos()%></td>
                <td align="center"><%=equ.getOwnname().substring(equ.getOwnname().indexOf("/")+1,equ.getOwnname().indexOf("/",equ.getOwnname().indexOf("/")+1) )%></td>
          
                <td align="center"><%=equ.getStyp().substring(0,equ.getStyp().indexOf("/"))%></td>
                
                <td align="center"><%=equ.getSyn().substring(0,equ.getSyn().indexOf("/"))%></td>
                
                <td align="center"><%=equ.getSn()%></td>
                <td align="center"><%=equ.getSid()%></td>
                <td align="center"><a  href="XiugaiServlet?id=<%=equ.getId()%>">修改</a></td> 
                
                 <td align="center"><a href="ChakanServlet?id=<%=equ.getId()%>">查看</a></td> 
               
              </tr>
              
       
			<%
					}
				}
			%> 
			
              <tr>
                <td colspan="11" align="center" bgcolor="white"><%=request.getAttribute("bar")%></td>
               <!--  <td height="22" colspan=11 align="center" bgcolor="white">1</td> -->
              </tr>
            </table></td>
          </tr>
          <tr>
            
          </tr>
        </table> 
              
      <td width="1114" valign="top">&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>