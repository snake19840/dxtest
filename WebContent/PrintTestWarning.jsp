<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" --%>
<%@ page language="java" contentType="application/msword; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import="java.util.List"%>
<%@page import="com.clas.Equ"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http ://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
body,td,tr{
 margin:0px;
 font-size:14px;
 color:#4b4b4b;
 margin-top: 20px;
 background-color: #ffffff;
 font-family: "宋体";
}
table {
border-collapse : collapse;
}
table td{
       border: 1px solid #666666;
    font-family: "宋体";
    font-size:14px;
	font-family: "Adobe 宋体 Std L";
}


table tdx{
       border: 1px solid #666666;
    font-family: "宋体";
    font-size:14px;
	font-family: "Adobe 宋体 Std L";
}

body,td,th {
	font-family: "Adobe 宋体 Std L";
	font-size: 14px;
	color: #4b4b4b;
}
body {

	background-color: #ffffff;
	margin-top: 20px;
	margin-left: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
body p {
	font-family: 微软雅黑 Light;
}
body p {
	font-family: Adobe 宋体 Std L;
}
.tdxx {
	font-size: 24px;
	font-family: "微软雅黑 Light";
	font-variant: normal;
	font-weight: bolder;
	font-style: normal;
}
</style>
<!--<meta charset="utf-8">-->
 <meta http-equiv="Content-Type" content="application/msword; charset=UTF-8" >
 <style>
<!--body
	{ margin:0px;
	 font-size:14px;
	 color:#4b4b4b;
	 margin-top: 20px;
	 background-color: #ffffff;
	 font-family: "宋体";}
td
	{ margin:0px;
	 font-size:14px;
	 color:#4b4b4b;
	 margin-top: 20px;
	 background-color: #ffffff;
	 font-family: "宋体";}
tr
	{ margin:0px;
	 font-size:14px;
	 color:#4b4b4b;
	 margin-top: 20px;
	 background-color: #ffffff;
	 font-family: "宋体";}
table td
	{       border: 1px solid #666666;
	    font-family: "宋体";
	    font-size:14px;}
table tdx{
       border: 1px solid #666666;
    font-family: "宋体";
    font-size:14px;
	font-family: "Adobe 宋体 Std L";
}

 /* Font Definitions */
 @font-face
	{font-family:宋体;
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-alt:SimSun;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:3 680460288 22 0 262145 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:1;
	mso-generic-font-family:roman;
	mso-font-pitch:variable;
	mso-font-signature:0 0 0 0 0 0;}
@font-face
	{font-family:"Adobe 宋体 Std L";
	panose-1:2 2 3 0 0 0 0 0 0 0;
	mso-font-charset:134;
	mso-generic-font-family:roman;
	mso-font-format:other;
	mso-font-pitch:variable;
	mso-font-signature:519 168761360 22 0 393223 0;}
@font-face
	{font-family:"微软雅黑 Light";
	panose-1:2 11 5 2 4 2 4 2 2 3;
	mso-font-charset:134;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-2147483001 718209040 22 0 262175 0;}
@font-face
	{font-family:"\@微软雅黑 Light";
	mso-font-charset:134;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-2147483001 718209040 22 0 262175 0;}
@font-face
	{font-family:"\@宋体";
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:3 680460288 22 0 262145 0;}
@font-face
	{font-family:"\@Adobe 宋体 Std L";
	mso-font-charset:134;
	mso-generic-font-family:roman;
	mso-font-format:other;
	mso-font-pitch:variable;
	mso-font-signature:519 168761360 22 0 393223 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin:0cm;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:宋体;
	mso-bidi-font-family:宋体;}
p
	{mso-style-noshow:yes;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:宋体;
	mso-bidi-font-family:宋体;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-style-unhide:no;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:宋体;
	mso-bidi-font-family:宋体;}
p.tdxx, li.tdxx, div.tdxx
	{mso-style-name:tdxx;
	mso-style-unhide:no;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	mso-pagination:widow-orphan;
	font-size:18.0pt;
	font-family:"微软雅黑 Light",sans-serif;
	mso-bidi-font-family:宋体;
	font-weight:bold;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	font-size:10.0pt;
	mso-ansi-font-size:10.0pt;
	mso-bidi-font-size:10.0pt;
	mso-ascii-font-family:"Times New Roman";
	mso-hansi-font-family:"Times New Roman";
	mso-font-kerning:0pt;}
@page WordSection1
	{size:595.3pt 841.9pt;
	margin:72.0pt 54.0pt 72.0pt 54.0pt;
	mso-header-margin:42.55pt;
	mso-footer-margin:49.6pt;
	mso-paper-source:0;}
div.WordSection1
	{page:WordSection1;}
-->
</style>

<%

 response.setContentType("application/msword;charset=UTF-8");

 response.setHeader("Content-Disposition","attachment;filename=waring.doc");   

%>
<title>Insert title here</title>
</head>
<body  bgcolor=white lang=ZH-CN style='tab-interval:21.0pt;margin-top:15.0pt'>
<div class=WordSection1>
<table  width="650" border="1">
  <tr>
    <td  align="center"><strong class="tdxx">设备维护记录</strong></td>
  </tr>
</table>
<table   width="650" border="1">
<%
List<Equ> listsn = (List<Equ>)request.getAttribute("listsn");
if(listsn == null || listsn.size() < 1){
	out.print("没有数据！");
}else{
	// 遍历集合中的数据
	for(Equ equ  : listsn){
		String pname=equ.getPname();
		String ip=equ.getIp();
		ip=ip.substring(0,ip.indexOf("/"));
		String sn=equ.getSn();
	
%>
  <tr>
    <td height="20" colspan="2" align="center"><strong>系统名称:</strong></td>
    <td width="152" height="20" align="center"><%=pname %></td>
    <td width="91" align="center"><strong>设备序列号:</strong></td>
    <td width="85" align="center"><%=sn %></td>
    <td width="60" align="center"><strong>设备IP:</strong></td>
    <td width="109" align="center"><%=ip %></td>
  </tr>
  <%
}}
  %>
  
  <%
				int i=1;
					List<Equ> list = (List<Equ>)request.getAttribute("list");
if(list == null || list.size() < 1){
	out.print("没有数据！");
}else{
	// 遍历集合中的数据
	for(Equ equ  : list){
		
			String nowdate=equ.getNowdate();
			String message=equ.getMessage();
			String username=equ.getUsername();
	
%>
  <tr>
    <td width="40" rowspan="3" align="center"><strong><%=i++ %></strong></td>
    <td height="20"><strong>维护时间:</strong></td>
    <td colspan="5"><%=nowdate %></td>
  </tr>
  <tr>
    <td height="75"><strong>维护记录:</strong></td>
    <td colspan="5"><%=message %></td>
  </tr>
  <tr>
    <td width="67" height="20"><strong>记录人:</strong></td>
    <td colspan="5"><%=username %></td>
  </tr>
  <% 
  
						}}
		        %>
</table>

</div>
</body>
</html>