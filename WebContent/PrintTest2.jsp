
<%@ page language="java" contentType="application/vnd.ms-word;charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import="java.util.List" %>
<%@page import="com.clas.Equ"%>
<%  
    String fileName ="word.doc";  
    byte[] bt =fileName.getBytes("UTF-8");  
           String unicoStr = new String(bt, "UTF-8");
   response.setHeader("Content-disposition","attachment; filename=" +unicoStr);  
      
%>

 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http ://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
		<meta name=ProgId content=Word.Document>
		<meta name=Generator content="Microsoft Word 15">
		<meta name=Originator content="Microsoft Word 15">
<meta name=Generator content="Microsoft Word 15 (filtered)">
<script src="myjs/vue.js" charset="GBK"></script>
<style type="text/css">
 @page WordSection1
	{size:595.3pt 841.9pt;
	margin:72.0pt 54.0pt 72.0pt 54.0pt;
	layout-grid:15.6pt;}
div.WordSection1
	{page:WordSection1;}
</style>
</head>

<body lang=ZH-CN style='text-justify-trim:punctuation'>
<script type="text/javascript">
listGson_print=<%=session.getAttribute("listGson_print") %>;
</script>
<div id="wd">
<% List<Equ> list_PrintTest2=(List<Equ>)session.getAttribute("list_print");
	System.out.print(list_PrintTest2.size());
	if(list_PrintTest2.size()!=0){
// 		if(false){
	String statu="",message="",nowdate="",sdate="",time="",markTime="",username="",task="",stno="",PNAME_T2="",POS_T2="",IP_T2="";
	for (int i=0;i<list_PrintTest2.size();i++){
		task=list_PrintTest2.get(i).getRowData().get("TASK").toString();
		if(task.equals("1")){continue;}
		statu=list_PrintTest2.get(i).getRowData().get("STATU").toString();
		message=list_PrintTest2.get(i).getRowData().get("MESSAGE").toString();
		nowdate=list_PrintTest2.get(i).getRowData().get("NOWDATE").toString();
		sdate=list_PrintTest2.get(i).getRowData().get("SDATE").toString();
		time=list_PrintTest2.get(i).getRowData().get("TIME")==null? null:list_PrintTest2.get(i).getRowData().get("TIME").toString();
		username=list_PrintTest2.get(i).getRowData().get("USERNAME").toString();
		stno=list_PrintTest2.get(i).getRowData().get("STNO").toString();
		
		PNAME_T2=list_PrintTest2.get(i).getRowData().get("PNAME_T2").toString();
		POS_T2=list_PrintTest2.get(i).getRowData().get("POS_T2")==null? "暂无":list_PrintTest2.get(i).getRowData().get("POS_T2").toString();
		IP_T2=list_PrintTest2.get(i).getRowData().get("IP_T2")==null? "暂无":list_PrintTest2.get(i).getRowData().get("IP_T2").toString();
		IP_T2=!IP_T2.equals("暂无")? IP_T2.substring(0,IP_T2.indexOf("/")):"暂无";
		sdate=sdate.substring(0,10);
		if(time==null||time.equals("")){
			markTime=nowdate;
		}else{
			markTime=sdate+" "+time;
		}
		
%>
<div class=WordSection1 style='layout-grid:15.6pt'>

<div align=center>

<table v-for="(item,index) in items" :key="index" class=MsoNormalTable border=0 cellspacing=0 cellpadding=0
 style='border-collapse:collapse'>
 <tr style='height:30.1pt'>
  <td width=566 colspan=6 style='width:458.15pt;border:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:30.1pt'>
  <p class=MsoNormal align=left style='text-align:left'><b><span lang=EN-US
  style='font-size:14.0pt;font-family:宋体;color:black'>&nbsp;&nbsp;&nbsp; </span></b><b><span
  style='font-size:14.0pt;font-family:宋体;color:black'>机房巡检表</span></b></p>
  </td>
 </tr>
 <tr style='height:26.3pt'>
  <td width=80 colspan=2 style='width:64.4pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:26.3pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:12.0pt'><span
  style='font-size:12.0pt;font-family:宋体;color:black'>检查项目</span></p>
  </td>
  <td width=268 colspan=3 style='width:214.75pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:26.3pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:12.0pt'><span
  style='font-size:12.0pt;font-family:宋体;color:black'>检查情况</span></p>
  </td>
  <td width=217 style='width:179.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:26.3pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:12.0pt'><span
  style='font-size:12.0pt;font-family:宋体;color:black'>内容</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=80 colspan=2 rowspan=3 style='width:64.4pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;layout-flow:vertical-ideographic;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>机房环境</span></p>
  </td>
  <td width=134 valign=top style='width:107.35pt;border:none;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>正常【</span>
  <span style='font-size:11.0pt;font-family:"MS Gothic";color:black'>
  &#10003;
  </span>
  <span
  style='font-size:11.0pt;font-family:宋体;color:black'>】</span></p>
  </td>
  <td width=134 colspan=2 valign=top style='width:107.4pt;border:none;
  border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=right style='text-align:right;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>不正常【</span><span
  style='font-size:11.0pt;font-family:"MS Gothic";color:black'>
  
  <%--&#10007;--%>
  
  </span><span
  style='font-size:11.0pt;font-family:宋体;color:black'>】</span></p>
  </td>
  <td width=217 style='width:179.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  style='font-size:11.0pt;line-height:150%;font-family:宋体;color:black'>检查门禁、门锁是否有效，窗户是否密闭，照明是否正常</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=268 colspan=3 rowspan=2 valign=top style='width:214.75pt;
  border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>检查异常描述：</span></p>
  </td>
  <td width=217 style='width:179.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  style='font-size:11.0pt;line-height:150%;font-family:宋体;color:black'>检查温、湿度是否正常</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=217 style='width:179.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  style='font-size:11.0pt;line-height:150%;font-family:宋体;color:black'>检查天花板、墙体、玻璃是否正常</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=80 colspan=2 rowspan=3 style='width:64.4pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;layout-flow:vertical-ideographic;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>卫生环境</span></p>
  </td>
  <td width=134 valign=top style='width:107.35pt;border:none;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>正常【</span><span
  style='font-size:11.0pt;font-family:"MS Gothic";color:black'>&#10003;</span><span
  style='font-size:11.0pt;font-family:宋体;color:black'>】</span></p>
  </td>
  <td width=134 colspan=2 valign=top style='width:107.4pt;border:none;
  border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=right style='text-align:right;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>不正常【</span><span
  style='font-size:11.0pt;font-family:"MS Gothic";color:black'>
  <template v-if="flase">
 <%-- &#10007;--%>
  </template>
  </span><span
  style='font-size:11.0pt;font-family:宋体;color:black'>】</span></p>
  </td>
  <td width=217 style='width:179.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  style='font-size:11.0pt;line-height:150%;font-family:宋体;color:black'>检查卫生面貌是否良好</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=268 colspan=3 rowspan=2 valign=top style='width:214.75pt;
  border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>检查异常描述：</span></p>
  </td>
  <td width=217 style='width:179.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  style='font-size:11.0pt;line-height:150%;font-family:宋体;color:black'>检查有无异味、异物、异常痕迹</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=217 style='width:179.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  style='font-size:11.0pt;line-height:150%;font-family:宋体;color:black'>检查机房工具是否齐全并摆放整齐</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=80 colspan=2 rowspan=5 style='width:64.4pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;layout-flow:vertical-ideographic;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>安全隐患</span></p>
  </td>
  <td width=134 valign=top style='width:107.35pt;border:none;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>正常【</span><span
  style='font-size:11.0pt;font-family:"MS Gothic";color:black'>&#10003;</span><span
  style='font-size:11.0pt;font-family:宋体;color:black'>】</span></p>
  </td>
  <td width=134 colspan=2 valign=top style='width:107.4pt;border:none;
  border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=right style='text-align:right;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>不正常【</span><span
  style='font-size:11.0pt;font-family:"MS Gothic";color:black'>
   <template v-if="flase">
  <%--&#10007;--%>
  </template>
  </span><span
  style='font-size:11.0pt;font-family:宋体;color:black'>】</span></p>
  </td>
  <td width=217 style='width:179.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  style='font-size:11.0pt;line-height:150%;font-family:宋体;color:black'>检查是否有用电安全隐患</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=268 colspan=3 rowspan=4 valign=top style='width:214.75pt;
  border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>检查异常描述：</span></p>
  </td>
  <td width=217 style='width:179.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  style='font-size:11.0pt;line-height:150%;font-family:宋体;color:black'>检查是否有火灾安全隐患</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=217 style='width:179.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  style='font-size:11.0pt;line-height:150%;font-family:宋体;color:black'>检查是否有水灾安全隐患</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=217 style='width:179.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  style='font-size:11.0pt;line-height:150%;font-family:宋体;color:black'>检查是否有鼠害安全隐患</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=217 style='width:179.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  style='font-size:11.0pt;line-height:150%;font-family:宋体;color:black'>检查消防设备是否齐全、完好，应急照明设备是否可靠</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=80 colspan=2 rowspan=5 style='width:64.4pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0cm 5.4pt 0cm 5.4pt;layout-flow:vertical-ideographic;
  height:1.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>设备检查</span></p>
  </td>
  <td width=134 valign=top style='width:107.35pt;border:none;padding:0cm 5.4pt 0cm 5.4pt;
  height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>正常【</span><span
  style='font-size:11.0pt;font-family:"MS Gothic";color:black'>
 <% if(statu.equals("恢复")){%>
	 &#10003;
 <%}
 %>
  

  </span><span
  style='font-size:11.0pt;font-family:宋体;color:black'>】</span></p>
  </td>
  <td width=134 colspan=2 valign=top style='width:107.4pt;border:none;
  border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=right style='text-align:right;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>不正常【</span><span
  style='font-size:11.0pt;font-family:"MS Gothic";color:black'>
  <% if(!statu.equals("恢复")){%>
	  &#10007;
  <%}%> 
  

  </span><span
  style='font-size:11.0pt;font-family:宋体;color:black'>】</span></p>
  </td>
  <td width=217 style='width:179.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  style='font-size:11.0pt;line-height:150%;font-family:宋体;color:black'>检查设备指示灯是否正常</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=268 colspan=3 rowspan=4 valign=top style='width:214.75pt;word-break:break-all;
  border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;
  border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:160pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>检查异常描述：<%if(!statu.equals("恢复")){%>
	  <%=message%>
  <%}%></span></p>
  </td>
  <td width=217 style='width:179.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  style='font-size:11.0pt;line-height:150%;font-family:宋体;color:black'>检查设备面板是否有告警</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=217 style='width:179.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  style='font-size:11.0pt;line-height:150%;font-family:宋体;color:black'>检查设备是否有异响</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=217 style='width:179.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  style='font-size:11.0pt;line-height:150%;font-family:宋体;color:black'>检查设备标示、标签是否清晰</span></p>
  </td>
 </tr>
 <tr style='height:1.0pt'>
  <td width=217 style='width:179.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:1.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:150%'><span
  style='font-size:11.0pt;line-height:150%;font-family:宋体;color:black'>检查机架电源及风扇是否正常</span></p>
  </td>
 </tr>
 <tr style='height:36.8pt'>
  <td width=566 colspan=6 style='width:458.15pt;word-break:break-all;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:none;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:108.8pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>备注：<span lang=EN-US>
  <%
  if(!stno.equals("0")){%>
	  设备名: <%=PNAME_T2 %> </br>&nbsp;设备位置: <%=POS_T2 %>&nbsp;设备IP: <%=IP_T2 %>&nbsp;
 <% }
  %>
  <%if(!stno.equals("0")&&statu.equals("恢复")){%>
  说明:&nbsp;
  <%} %>
  
  <%if(statu.equals("恢复")){%>
   <%=message%>
	<%  } %>
  
 
  </span></span></p>
  
  </td>
 </tr>
 <tr style='height:20.7pt'>
  <td width=79 valign=top style='width:63.55pt;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:20.7pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:12.0pt'><span
  lang=EN-US style='font-size:11.0pt;font-family:宋体;color:black'>&nbsp;</span></p>
  </td>
  <td width=265 colspan=3 valign=top style='width:212.65pt;border:none;
  border-bottom:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:20.7pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>巡检人签字<span lang=EN-US>:&nbsp;&nbsp;<%=username%></span></span></p>
  </td>
  <td width=221 colspan=2 valign=top style='width:181.95pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:20.7pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>日期时间<span lang=EN-US>:&nbsp;<%=markTime%></span></span></p>
  </td>
 </tr>
 <tr style='height:31.7pt'>
  <td width=566 colspan=6 style='width:458.15pt;word-break:break-all;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:none;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:58.7pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>备注<span lang=EN-US>:</span></span></p>
  </td>
 </tr>
 <tr style='height:10.4pt'>
  <td width=79 valign=top style='width:63.55pt;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:10.4pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:12.0pt'><span
  lang=EN-US style='font-size:11.0pt;font-family:宋体;color:black'>&nbsp;</span></p>
  </td>
  <td width=265 colspan=3 valign=top style='width:212.65pt;border:none;
  border-bottom:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:10.4pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>审核人签字</span></p>
  </td>
  <td width=221 colspan=2 valign=top style='width:181.95pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:10.4pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:12.0pt'><span
  style='font-size:11.0pt;font-family:宋体;color:black'>日期时间</span></p>
  </td>
 </tr>
 <tr height=0>
  <td width=99 style='border:none'></td>
  <td width=1 style='border:none'></td>
  <td width=167 style='border:none'></td>
  <td width=163 style='border:none'></td>
  <td width=5 style='border:none'></td>
  <td width=272 style='border:none'></td>
 </tr>
</table>

</div>

<p class=MsoNormal style='line-height:12.0pt'><span lang=EN-US>&nbsp;</span></p>

</div>
<% }} %>
</div>

</body>
<script type="text/javascript">
// var wd=new Vue({
// el:'#wd',
// data:{
// items:list_PrintTest2,

// },
// methods:{
// isWarning(e){
// 	if(e!='恢复'){
// 	return true;
// 	}else{
// 	return false;
// 	}
// },
// chackTime(nn,ss,tt){
	
// 	ss=ss.substring(0,10);
// 	if(tt!=null){
// 	return ss+" "+tt;
// 	}
// 	return nn;
// },
// },
// computed:{
// },
// })
</script>
</html>







