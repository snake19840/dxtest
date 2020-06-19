<%@page import="java.util.ArrayList"%>
<%@page import="com.clas.Turn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.util.List"%>
<%@page import="com.clas.Equ"%>
<%@page import="com.clas.Turn"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<!-- start: Meta -->
	<meta charset="utf-8">
	<title>Home</title>
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="">
	<meta name="keyword" content="">
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
	

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="css/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="css/ie9.css" rel="stylesheet">
	<![endif]-->
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="img/favicon.ico">
	<!-- end: Favicon -->
	
	 <script type="text/javascript" language="javascript">	
	function check1() {
			//pos
			document.getElementById("pos").value =
					document.getElementById("selectpos5").value+
					"/"+document.getElementById("textfieldpos").value+
					"/"+document.getElementById("textfieldpos2").value;
		
		//ip
		document.getElementById("ip").value =
				document.getElementById("textfieldip10").value+
				"/"+document.getElementById("textfieldip11").value+
				"/"+document.getElementById("textfieldip12").value;
		
		//styp
		document.getElementById("styp").value =
				document.getElementById("selectstyp").value+
				"/"+document.getElementById("textfield8").value;
		
		//sname
		 var hobbyNum2 = document.getElementsByName("checkbox2"); //  获取checkbox对象,是一个数组对象
		 var b2=[];
		 //var a=[hobbyNum[0].value,hobbyNum[1].value,hobbyNum[2].value,hobbyNum[3].value,hobbyNum[4].value];
		var hobby2 = hobbyNum2; //用于存储已选择的选项值
		for (let i = 0; i < hobbyNum2.length; ++i) { //遍历数组中的对象，查看有没有被选择的值
		if (hobbyNum2[i].checked) {//checked代表被选择
			hobby2=hobbyNum2[i]; //把被选择的数据复制给hobby变量
			b2.push(hobby2.value);
		   }
		   } 
		if (hobby2 == "") {  //hobby为空代表没有选择
			  document.getElementById("sname").value="";  } 
		  else {
			  
			  document.getElementById("sname").value=b2.toString();
		  }
		
		var urlr = window.location.href;
		var flag=urlr.indexOf("WarningServlet1?id=");
		
		if (flag!=-1) {
			sessionStorage.setItem('urlr', urlr);
			
		}else {
			
		}
		
		var urlHref=sessionStorage.getItem('urlr');
		
		form1.action="EditTestServlet1?urlHref="+urlHref;
		alert("档案信息修改成功");
		form1.submit(); 
		}	
	
	
	function check2(){
		if (document.getElementById("textfield51").value=="") {
			document.getElementById("ownname").value="///";
			}else {	
				document.getElementById("ownname").value =document.getElementById("select3").value+
				"/"+document.getElementById("select4").value+
				"/"+document.getElementById("textfield51").value+
				"/"+document.getElementById("textfield52").value;
			}
		
		
if (document.getElementById("textfield53").value=="") {
	document.getElementById("proname").value="//";
	}else {
		document.getElementById("proname").value=document.getElementById("textfield53").value+
		"/"+document.getElementById("textfield54").value+
		"/"+document.getElementById("textfield55").value;}
		
if (document.getElementById("textfield56").value=="") {
	document.getElementById("manname").value="//";
	}else {
		document.getElementById("manname").value=document.getElementById("textfield56").value+
		"/"+document.getElementById("textfield57").value+
		"/"+document.getElementById("textfield58").value;}
		
if (document.getElementById("textfield59").value=="") {
	document.getElementById("agename").value="//";}else {
		document.getElementById("agename").value=document.getElementById("textfield59").value+
		"/"+document.getElementById("textfield60").value+
		"/"+document.getElementById("textfield61").value;}
		
var hobbyNum = document.form2.checkbox1; //  获取checkbox对象,是一个数组对象
var b1=[];
//var a=[hobbyNum[0].value,hobbyNum[1].value,hobbyNum[2].value,hobbyNum[3].value,hobbyNum[4].value];
var hobby = hobbyNum; //用于存储已选择的选项值
for (let i = 0; i < hobbyNum.length; ++i) { //遍历数组中的对象，查看有没有被选择的值
if (hobbyNum[i].checked) {//checked代表被选择
	hobby=hobbyNum[i]; //把被选择的数据复制给hobby变量
	b1.push(hobby.value);
  }
  } 
if (hobby == "") {  //hobby为空代表没有选择
	  document.getElementById("mantyp").value="";  } 
 else {
	  
	  document.getElementById("mantyp").value=b1.toString();
 }
		
var urlr = window.location.href;
var flag=urlr.indexOf("EditTestServlet?id=");

if (flag!=-1) {
	sessionStorage.setItem('urlr', urlr);
	
}

var urlHref=sessionStorage.getItem('urlr');
		form2.action="EditTestServlet2?urlHref="+urlHref;
		
		alert("维护信息修改成功");
		form2.submit();
		
	}
	
	
	function check3(){
		
		//port
		document.getElementById("port").value =
				document.getElementById("textfield13port").value+
				"/"+document.getElementById("textfield14port").value+
				"/"+document.getElementById("textfield15port").value;

		//cpu
		document.getElementById("cpu").value =
				document.getElementById("textfield16cpu").value+
				"/"+document.getElementById("textfield17cpu").value;
				
		//syn
		document.getElementById("syn").value =
				document.getElementById("select2syn").value+
				"/"+document.getElementById("textfield21syn").value;
		var urlr = window.location.href;
		var flag=urlr.indexOf("EditTestServlet?id=");
		
		if (flag!=-1) {
			sessionStorage.setItem('urlr', urlr);
			
		}
		
		var urlHref=sessionStorage.getItem('urlr');
		
		
		form3.action="EditTestServlet3?urlHref="+urlHref;
		alert("配置明细修改成功");
		form3.submit();
	}	
	
	
	
	
	
	
 </script>
 

	 
	
</head>
<body   onload="loadDoc()">


<%@include file="TestHeader.jsp" %>
		
	
		<div class="container-fluid-full">
		<div class="row-fluid">
				
			<%@include file="TestMainMenu.jsp" %>
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<!-- start: Content -->
			<div id="content" class="span10">
			<%
			String c_sdate=(String)session.getAttribute("sdate_AllListServlet3");
			String c_edate=(String)session.getAttribute("edate_AllListServlet3");
			String c_statu=(String)session.getAttribute("statu_AllListServlet3");
			String c_userid=(String)session.getAttribute("userid_AllListServlet3");
			String c_ston=(String)session.getAttribute("stno_AllListServlet3");
			%>
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="ReturnIndex">首页</a>
					<i class="icon-angle-right"></i> 
				</li>
				<li>
			
				
				
					<i class="icon-edit"></i>
					<a href="TestWarningPart.jsp">日常运维</a>
					<i class="icon-angle-right"></i>
				</li>
				<li>
					<i class="icon-edit"></i>
					<a href="#">设备故障信息录入</a>
				</li>
			</ul>
						



<%					
					List<Equ> list = (List<Equ>)session.getAttribute("listsn_WarningServlet2");
					//List<Equ> list = (List<Equ>)request.getAttribute("listsn");
			    		        			        
					// 判断集合是否有效
					if(list == null || list.size() < 1){
						out.print("没有数据！");
					}else{
						// 遍历集合中的数据
						for(Equ equ  : list){
							String ip=equ.getIp();
							String ip1=ip.substring(0,ip.indexOf("/"));
							String ip2=ip.substring(ip.indexOf("/")+1,ip.lastIndexOf("/"));
							String ip3=ip.substring(ip.lastIndexOf("/")+1);
							String port=equ.getPort();
							String port1=port.substring(0,port.indexOf("/"));
							String port2=port.substring(port.indexOf("/")+1,port.lastIndexOf("/"));
							String port3=port.substring(port.lastIndexOf("/")+1);
							
							String cpu=equ.getCpu();
							String cpu1=cpu.substring(0,cpu.indexOf("/"));
							String cpu2=cpu.substring(cpu.indexOf("/")+1);
							String syn=equ.getSyn();
							String syn1=syn.substring(0,syn.indexOf("/"));
							String syn2=syn.substring(syn.indexOf("/")+1);
							String pos=equ.getPos();
							String pos1=pos.substring(0,pos.indexOf("/"));
							String pos2=pos.substring(pos.indexOf("/")+1,pos.lastIndexOf("/"));
							String pos3=pos.substring(pos.lastIndexOf("/")+1);
							String pos4=pos1+"-"+pos2+"-"+pos3;
							String styp=equ.getStyp();
							String styp1=styp.substring(0,styp.indexOf("/"));
							String styp2=styp.substring(styp.lastIndexOf("/")+1);
							String ownname=equ.getOwnname();String ownname1,ownname2,ownname3,ownname4;
							ownname1=ownname.substring(0,ownname.indexOf("/"));
							ownname2=ownname.substring(ownname.indexOf("/")+1,ownname.indexOf("/",ownname.indexOf("/")+1));
							//ownname1=ownname1+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;部门 :"+ownname2;
							ownname3=ownname.substring(ownname.indexOf("/",ownname.indexOf("/")+1)+1,ownname.lastIndexOf("/"));
							ownname4=ownname.substring(ownname.lastIndexOf("/")+1);
							String proname=equ.getProname();String proname1,proname2,proname3;
							proname1=proname.substring(0,proname.indexOf("/"));
							proname2=proname.substring(proname.indexOf("/")+1,proname.lastIndexOf("/"));
							proname3=proname.substring(proname.lastIndexOf("/")+1);
							String oracle=equ.getOracle();
							String manname=equ.getManname();String manname1,manname2,manname3;
							 manname1=manname.substring(0,manname.indexOf("/"));
							manname2=manname.substring(manname.indexOf("/")+1,manname.lastIndexOf("/"));
							manname3=manname.substring(manname.lastIndexOf("/")+1); 
							String agename=equ.getAgename();String agename1,agename2,agename3;
							agename1=agename.substring(0,agename.indexOf("/"));
							agename2=agename.substring(agename.indexOf("/")+1,agename.lastIndexOf("/"));
							agename3=agename.substring(agename.lastIndexOf("/")+1); 
							String sn=equ.getSn();
							String url=equ.getUrl();
							String url1;
							if(url==null){
								 url1="没有上传任何附件 ";
							}else{
								// url1=url.substring(url.lastIndexOf("/")+1)+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A HREF='download.jsp?path="+url+"'>下载</A>";
								url1=url.substring(url.lastIndexOf("/")+1);
							}
							int id=equ.getId();
							%>






			<div >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>机房设备档案信息</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-down"></i></a>
						</div>
					</div>
					<div class="box-content" style="display: none;">
						<form class="form-horizontal">
							<fieldset>
							
							  
							  
								
							<div>
							  <table width=98% border="1" >
							    <tr>
							      <td width=16.3%><label class="control-label" ><strong>系统名称 :</strong></label></td>
							      <td colspan="2" class="controls"><%=equ.getPname() %></td>
							      <td width=16.3% ><label class="control-label" ><strong>序列号 :</strong> </label></td>
							      <td colspan="2" class="controls" id="sn" ><%=equ.getSn() %></td>
							      <input type="hidden" id="snchar" value=<%=equ.getSn() %>>
						        </tr>
							    <tr>
							      <td><label class="control-label" ><strong>机架位置 :</strong></label></td>
							      <td colspan="5" class="controls"><%=pos4 %></td>
						        </tr>
							    <tr>
							      <td><label class="control-label" ><strong>IP地址 :</strong></label></td>
							      <td width=16.3% class="controls"><%=ip1 %></td>
							      <td width=16.3%> <label class="control-label" ><strong>子网掩码 :</strong></label></td>
							      <td class="controls"><%=ip2 %></td>
							      <td width=16.3%><label class="control-label" ><strong>网关 :</strong></label></td>
							      <td width=16.3% class="controls"><%=ip3 %></td>
						        </tr>
							    <tr>
							      <td><label class="control-label" ><strong>品牌 :</strong></label></td>
							      <td colspan="2" class="controls"><%=styp1 %></td>
							      <td ><label class="control-label" ><strong>型号 :</strong></label></td>
							      <td colspan="2" class="controls"><%=styp2 %></td>
						        </tr>
							    <tr>
							      <td><label class="control-label" ><strong>设备类型 :</strong></label></td>
							      <td colspan="5" class="controls"><%=equ.getSname() %></td>
						        </tr>
						      </table>
							</div>
							
							 
					 
							  
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
			
			<div >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>设备维护信息</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-down"></i></a>
						</div>
					</div>
					<div class="box-content" style="display: none;">
						<form class="form-horizontal">
							<fieldset>
							
							
							 <div><table width=98% border="1">
  <tr>
    <td width=16%><label class="control-label" >资产编号  :</label></td>
    <td colspan="3" class="controls"><%=equ.getSid() %></td>
    <td width=9%><label class="control-label" >档案编号  :</label></td>
    <td colspan="3" class="controls"><%=equ.getDid() %></td>
    </tr>
  <tr>
    <td><label class="control-label" >设备初次搬入机房日期 :</label></td>
    <td colspan="7" class="controls"><%=equ.getStdate() %></td>
    </tr>
  <tr>
    <td><label class="control-label" >设备用途 :</label></td>
    <td colspan="7" class="controls"><%=equ.getUse() %></td>
    </tr>
  <tr>
    <td><label class="control-label" >设备资产单位 :</label></td>
    <td width=24% class="controls"><%=ownname1 %></td>
    <td width=8%><label class="control-label" >部门 : </label></td>
    <td width=11.6% class="controls"><%=ownname2 %></td>
    <td><label class="control-label" >联系人  :</label></td>
    <td width=11.6% class="controls"><%=ownname3 %></td>
    <td width=6%><label class="control-label" >电话 : </label></td>
    <td width=11.6% class="controls"><%=ownname4 %></td>
  </tr>
  <tr>
    <td><label class="control-label" >系统集成商 :</label></td>
    <td class="controls"><%=proname1 %></td>
    <td> <label class="control-label" >联系人  :</label></td>
    <td class="controls"><%=proname2 %></td>
    <td><label class="control-label" >电话 : </label></td>
    <td class="controls"><%=proname3 %></td>
    <td colspan="2">&nbsp;</td>
    </tr>
  <tr>
    <td><label class="control-label" >系统责任人 :</label></td>
    <td class="controls"><%=manname1 %></td>
    <td ><label class="control-label" >电话  :</label></td>
    <td class="controls"><%=manname2 %></td>
    <td ><label class="control-label" >所属部门 : </label></td>
    <td class="controls"><%=manname3 %></td>
    <td colspan="2">&nbsp;</td>
    </tr>
  <tr>
    <td><label class="control-label" >代维单位 :</label></td>
    <td class="controls"><%=agename1 %></td>
    <td> <label class="control-label" >联系人  :</label></td>
    <td class="controls"><%=agename2 %></td>
    <td><label class="control-label" >电话 : </label></td>
    <td class="controls"><%=agename3 %></td>
    <td colspan="2">&nbsp;</td>
    </tr>
  <tr>
    <td><label class="control-label" >维护形式 :</label></td>
    <td colspan="7" class="controls"><%=equ.getMantyp() %></td>
    </tr>
</table>
</div>
					
							</fieldset>
						</form>
					</div>
				</div><!--/span-->

			</div><!--/row-->
			
			
			
			<div >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>IT设备配置明细</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-down"></i></a>
						</div>
					</div>
					<div class="box-content" style="display: none;">
						<form class="form-horizontal">
							<fieldset>
							
							
							
							 <div><table width=98% border="1">
  <tr>
    <td width=16.3%><label class="control-label" >网线编号 :</label></td>
    <td width=16.3% class="controls"><%=port1 %></td>
    <td width=16.3%><label class="control-label" >交换机端口号  :</label></td>
    <td width=16.3% class="controls"><%=port2 %></td>
    <td width=16.3%><label class="control-label" >配线架端口号 : </label></td>
    <td width=16.3% class="controls"><%=port3 %></td>
  </tr>
  <tr>
    <td><label class="control-label" >CPU型号 :</label></td>
    <td class="controls"><%=cpu1 %></td>
    <td><label class="control-label" >物理数量  :</label></td>
    <td colspan="3" class="controls"><%=cpu2 %></td>
    </tr>
  <tr>
    <td><label class="control-label" >内存配置 :</label></td>
    <td class="controls"><%=equ.getMemory() %></td>
    <td><label class="control-label" >硬盘配置  :</label></td>
    <td colspan="3" class="controls"><%=equ.getDisk() %></td>
    </tr>
  <tr>
    <td><label class="control-label" >操作系统 :</label></td>
    <td class="controls"><%=syn1 %></td>
    <td><label class="control-label" >版本  :</label></td>
    <td colspan="3" class="controls"><%=syn2 %></td>
    </tr>
  <tr>
    <td><label class="control-label" >数据库版本 :</label></td>
    <td colspan="5" class="controls"><%=oracle %></td>
    </tr>
  <tr>
    <td><label class="control-label" >备注 :</label></td>
    <td colspan="5" class="controls"><%=equ.getOth() %></td>
    </tr>
</table>
</div>
			
			
						 </fieldset>
						  </form>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
			
		 <% 
								 }} 
								 %>	
			
			
		
		
	<!-- 提交故障信息描述	 -->
	
	
		
		<div class="box span12" ontablet="span6" ondesktop="span12" style="margin-left: 0%;">
					<div class="box-header">
						<h2><i class="halflings-icon white comment"></i><span class="break"></span>故障跟踪记录</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content" >
						<span class="add-on">开始时间</span><input id="s_sdate" type="date"><span class="add-on">结束时间</span><input id="s_edate" type="date">
						<select id="select_statu_search">
									<option value="1"></option>
									<option value="2">告警</option>
									<option value="3">故障</option>
									<option value="4">恢复</option>
									
								  </select>
						
						<button class="btn btn-info" id="search" onclick="searchlist()" style="padding: 4px 12px; margin-bottom: 10px;" >搜索</button>
						<ul id="w_masg" class="chat">
				
				
				
				
				
				
				<%
				
					List<Equ> list2=(List<Equ>)session.getAttribute("list_WarningServlet2");
					
						
				
						//	List<Equ> list2 = (List<Equ>)request.getAttribute("list");
						//	System.out.println("AA:"+list2); 
							if(list2 == null || list2.size() < 1){
								out.print("没有数据！");
							}else{
								// 遍历集合中的数据
								for(Equ equ  : list2){
							String message=equ.getMessage();
							String username=equ.getUsername();
							//String userpwd=equ.getUserpwd();
							String nowdate=equ.getNowdate();
							String sn=equ.getSn();
							String statu=equ.getStatu();
							String picture=equ.getPicture();
							String edate=equ.getEdate();
							String sdate=equ.getSdate();
							
							
							String edate1=edate.substring(0,10);
							String sdate1=sdate.substring(0,10);
							
							
// 							System.out.println("=="+message);
// 							System.out.println("=="+username);
// 							System.out.println("=="+nowdate);
// 							System.out.println("=="+picture);
// 							System.out.println("=="+sdate1);
							
							%>			
			<li >
			
			<%
			if(picture==""||picture==null){
				%>
				<span  class="message"  id="w_name" >
				<%=username %><span class="arrow"></span>&nbsp;&nbsp;&nbsp;
			 <span  class="from"></span>
			  <span id="w_locale" class="time">登记时间:&nbsp;&nbsp;<%=nowdate %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=statu %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;事件开始时间:<%=sdate1 %></span>
			<%-- <span id="w_locale" class="time"><%=nowdate %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=statu %></span> --%> 
			 <span id="w_textlayout" class="text"><%=message %></span>
				</span>
				
				
			<%	
			}else{
				%>
			<span  class="message"  id="w_name" >	
			<div style="width: 76%;display: inline-block;">
			<%=username %><span class="arrow"></span>&nbsp;&nbsp;&nbsp;
			 <span  class="from"></span>
			 <span id="w_locale" class="time">登记时间:&nbsp;&nbsp;<%=nowdate %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=statu %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;事件开始时间:<%=sdate1 %></span>
			 <span id="w_textlayout" class="text"><%=message %></span>
			 </div>
			 <div style="display: inline;">
			<span id="image-2" class="masonry-thumb masonry-brick" style="/* position: absolute; */width: 200px;top: 0px;left: 298px;/* max-height: 100%; */max-width: 22%;">
			<a style="background:url(<%=picture %>)" title="Sample Image" href="<%=picture%>" target="_blank">
			<img class="grayscale" src="<%=picture %>" alt="Sample Image"></a>
			</span>
			</div>	
			</span>	
				
			<%
			}
			%>
			
			 </li>
					
			
			<%
								}}
		%>
			
			
		<div class="page">
		<div id="page"></div></div>
							 
						</ul>
						
						
						<div class="chat-form">
						<div class="controls">
								  <span style="margin-left:25px" id="select_name">
									<b><%=c_userid %></b>
									
								  </span>
								  
								  <select style="margin-left: 25px" id="select_statu">
									
									<option value="2">告警</option>
									<option value="3">故障</option>
									<option value="4">恢复</option>
									
								  </select>
									
								</div>
						
						<script type="text/javascript">
						var arr=["告警","故障","恢复"];
						var checkValue;
						if ("<%=c_statu%>"==null) {
						    checkValue=4;
						}else {
						    for (var i = 0; i < arr.length; i++) {
							    if (arr[i]=="<%=c_statu%>") {
								checkValue=i+2;
								break; 
							    }
							} 
						}
						
						//console.log(checkValue);
						
						set_select_checked("select_statu",checkValue);
						function set_select_checked(selectId, checkValue){  
				                         var select = document.getElementById(selectId);  
				                         for (var i = 0; i < select.options.length; i++){  
				                         if (select.options[i].value == checkValue){  
				                         select.options[i].selected = true;  
				                         break;  }  }  }
						
						
						
						</script>
						
						<div id="message_cc">
						<textarea id="w_text" style="margin: 0px 0px 10px; width: 100%; height: 85px;" ></textarea>
						
						 <span id="image-3" class="masonry-thumb masonry-brick" style="/* position: absolute; */width: 200px;top: 0px;left: 309px;max-height: 133px;max-width: 200px;">
							
								<!-- <a style="background:url(img/gallery/photo2.jpg)" title="Sample Image" href="img/gallery/photo2.jpg">
								<img class="grayscale" src="img/gallery/photo2.jpg" alt="Sample Image"></a> -->
							</span> 
						
						
						</div>
							
							
							
							<button class="btn btn-info" id="warningchart" onclick="warningchart()"  >提交故障信息描述</button>
						</div>	
					</div>
				</div>
		
		<!-- 提交故障信息描述	 -->
		
		 <script charset="UTF-8" type="text/javascript" language="javascript"  >
		 sn=document.getElementById("snchar").value;
		 
		 function codeA(a) {
				var codeA= encodeURIComponent(encodeURIComponent(a));
		         return codeA;
			}
		 
		 function searchlist() {
			 var s_sdate=document.getElementById("s_sdate").value;
			
			 var s_edate=document.getElementById("s_edate").value;
			
			 var select_statu_search = document.getElementById("select_statu_search");
			 var index=select_statu_search.selectedIndex ;
			 var statu= select_statu_search.options[index].text;
			
		//	 sn=document.getElementById("snchar").value;
			 var urlrf = window.location.href;
			var flag=urlrf.indexOf("WarningServlet2?sn=");
			if (flag!=-1) {sessionStorage.setItem('urlrf', urlrf);}else {}
			var urlHref=sessionStorage.getItem('urlrf');
			
			
			
			
			search(sn,s_sdate,s_edate,statu);
			 
			 
			 function search(sn,s_sdate,s_edate,statu){
				   location.href="WarningSelect5?sn="+sn+"&sdate="+codeA(s_sdate)+"&edate="+codeA(s_edate)+"&statu="+codeA(statu);	
				    
				}
			 
		}
		 
		 
		 

		
		 
		  formatDate = function (date) {
			  //date为字符串
			  var date= new Date(Date.parse(date.replace(/-/g,  "/")));      //转换成Data();
			    var y = date.getFullYear();  
			    var m = date.getMonth() + 1;  
			    m = m < 10 ? '0' + m : m;  
			    var d = date.getDate();  
			    d = d < 10 ? ('0' + d) : d;  
			    return y + '-' + m + '-' + d;  
			}
		 
		  function warningchart() {
		      
		      function getCookie(name)
			    {
			        var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
			        if(arr != null) return unescape(arr[2]); 
			        return false;
 				 }
		     
		     
		      
		     // console.log(username);
		    //  console.log(edate);
		    //  console.log(sdate);
		    //  console.log(statu);
		      
		      
			  var date = new Date();
			  var w_locale=date.toLocaleString( ); //获取日期与时间
				var w_lodate=date .toLocaleDateString();//获取日期
				 var w_text = document.getElementById("w_text").value;
				 var w_name = document.getElementById("w_name");
				 var select_name=document.getElementById("select_name").text;
				/*  var select_nameobj = document.getElementById("select_name");
				var index=select_nameobj.selectedIndex ;
				 var select_name=select_nameobj.options[index].text; */
				 
				 var select_statu = document.getElementById("select_statu");
				 var index_statu=select_statu.selectedIndex ;
				 var statu= select_statu.options[index_statu].text;
			//	 sn=document.getElementById("snchar").value;
				 
				 w_text=line2br(w_text);
				 function line2br(text){
				     return text.split("\n").join("<br />");
				     }
				 
// 				  console.log("===="+w_lodate);
// 				 console.log("===="+w_text);
// 				 console.log("===="+select_name);
			//	 console.log("===="+statu); 
				 
					 
				 var urlrf = window.location.href;
				// console.log(urlrf);
					var flag=urlrf.indexOf("WarningServlet2?sn=");
					//console.log(flag);
					if (flag!=-1) {sessionStorage.setItem('urlrf', urlrf);}else {}
					var urlHref=sessionStorage.getItem('urlrf');
				//	console.log(1111);
				var useridc="<%=c_userid%>";
					var useridc=codeA(useridc);
					firm_back_state(sn,w_locale,statu,w_text,urlHref,useridc);
					
				//	console.log(useridc);
				 function firm_back_state(sn,w_locale,statu,w_text,urlHref,useridc){
					    if(confirm("确认提交？")){
						
						if (statu=="恢复") {
						    location.href="WarningServlet6?sn="+sn+"&nowdate="+codeA(w_locale)+"&message="+codeA(w_text)+"&statu="+codeA(statu)+"&userid="+useridc+"&sdate=<%=c_sdate%>&edate=<%=c_edate%>&stno=<%=c_ston%>"; 
						}else {
						    location.href="WarningServlet3?sn="+sn+"&nowdate="+codeA(w_locale)+"&message="+codeA(w_text)+"&statu="+codeA(statu)+"&userid="+useridc+"&sdate=<%=c_sdate%>&edate=<%=c_edate%>&stno=<%=c_ston%>";
						}
						
						
					 		
					    		
					    //	location.href="WarningServlet3";
					    }
					}
				 							 
		}
		  
		
		 </script>
			
		
			
		<!-- 	<form class="replyForm" method="post" action="">

							<fieldset>
								<textarea tabindex="3" class="input-xlarge span4" id="message" name="body" rows="12" placeholder="Click here to reply"></textarea>
								
								<div class="actions">
									<button tabindex="3" type="submit" class="btn btn-success">提交</button>
									
								
							</fieldset>

						</form>
			 -->
			
			
				<form action=""  name="form4" id="form4" class="form-horizontal">
			<div class="control-group ">
								<label class="control-label" >附件上传:</label>
								<div class="controls" style="margin-left: 70px">
								  <div class="uploader"><input type="file" name="url" id="url" value="">
								  <span class="filename" style="user-select: none;">没有文件请选择</span>
								  <span class="action" style="user-select: none;">选择文件</span>
								  
								  </div>
								  <span class="help-inline">
								  <input style="width: 30px;height: 10px;line-height: 13px;" type="button"  class="btn btn-primary" onclick="return update()" value="上传">
								   <span class="help-inline">
								   <input   type="button"  class="btn btn-primary" id="buttonall" value="打印故障"  onclick="printwarning()" style="margin-left: 100%;">
								 <!--   <a href ="ftp://test:test902@134.101.168.30/dxtest/注册码.PNG" >FTP下载</a> -->
								</span>
								
						<script type="text/javascript">
						function printwarning(){
							location.href="PrintTestServlet2";
							//formall.action="PrintTestServlet2"; 
							//formall.submit();
						}
						</script>		
	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</form>
		</div><!--/fluid-row-->
	
	
	
	<script type="text/javascript">
	
	
	function update() {
	    var useridc="<%=c_userid%>";
		var useridc=codeA(useridc);
		var date = new Date();
		  var w_locale=date.toLocaleString( ); //获取日期与时间
			var w_lodate=date .toLocaleDateString();//获取日期
			 var w_text = document.getElementById("w_text").value;
			 var w_name = document.getElementById("w_name");
			 var select_name=document.getElementById("select_name").text;
			
			 var index=document.getElementById("select_statu").selectedIndex;//获取当前选择项的索引.
			var statu= document.getElementById("select_statu").options[index].text;//获取当前选择项的文本.
// 			 var index_statu=select_statu.selectedIndex ;
			 
			 w_text=line2br(w_text);
			 function line2br(text){
			     return text.split("\n").join("<br />");
			     }
			 
// 			 console.log(w_locale);
// 			 console.log(w_lodate);
// 			 console.log(w_text);
// 			 console.log(w_name);
// 			 console.log(useridc);
// 			 console.log(statu);
// 			 console.log(sn);
			 
			 if(document.getElementById("url").value==""){
				 
				alert("请选择一个文件!");
				 
				  return false; 
			}else if (document.getElementById("w_text").value=="") {
				alert("请输入故障内容!");
				 return false; 
			}else if (statu=="") {
				alert("请选择故障类型!");
				 return false; 
			}else {
				
				form4.enctype="multipart/form-data"
			form4.action="UploadPicture?sn="+sn+"&userid="+useridc+"&nowdate="+codeA(w_locale)+"&message="+codeA(w_text)+"&statu="+codeA(statu)+"&sdate=<%=c_sdate%>&edate=<%=c_edate%>";
				form4.method="post";
				form4.submit(); 
			}
	 
	}
								
								function u() {
								    
								    
								    var useridc="<%=c_userid%>";
									var useridc=codeA(useridc);
									var date = new Date();
									  var w_locale=date.toLocaleString( ); //获取日期与时间
										var w_lodate=date .toLocaleDateString();//获取日期
										 var w_text = document.getElementById("w_text").value;
										 var w_name = document.getElementById("w_name");
										 var select_nameobj = document.getElementById("select_name");
										 var index=select_nameobj.selectedIndex ;
										 var select_name=select_nameobj.options[index].text;
										 var select_statu = document.getElementById("select_statu");
										 var index_statu=select_statu.selectedIndex ;
										 var statu= select_statu.options[index_statu].text;
										 console.log(111111);
									
									
									 var urlrf = window.location.href;
										// console.log(urlrf);
											var flag=urlrf.indexOf("WarningServlet2?sn=");
											//console.log(flag);
											if (flag!=-1) {sessionStorage.setItem('urlrf', urlrf);}else {}
											var urlHref=sessionStorage.getItem('urlrf');
									
									
								}
								
								</script>
	
	
		
	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a>
			<a href="#" class="btn btn-primary">Save changes</a>
		</div>
	</div>
	
	<div class="clearfix"></div>
	
	<footer>

		<%
		Date d = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String now = df.format(d);
	%>
	
		<p>
			<span style="text-align:left;float:left">当前时间：<%=now %><a style="padding-left: 50px" target="_blank" href="mailto:13616880703@189.cn">建议邮箱</a></span>
		</p>

	</footer>
	
	<!-- start: JavaScript-->
  
		<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/jquery-migrate-1.0.0.min.js"></script>
	
		<script src="js/jquery-ui-1.10.0.custom.min.js"></script>
	
		<script src="js/jquery.ui.touch-punch.js"></script>
	
		<script src="js/modernizr.js"></script>
	
		<script src="js/bootstrap.min.js"></script>
	
		<script src="js/jquery.cookie.js"></script>
	
		<script src='js/fullcalendar.min.js'></script>
	
		<script src='js/jquery.dataTables.min.js'></script>

		<script src="js/excanvas.js"></script>
	<script src="js/jquery.flot.js"></script>
	<script src="js/jquery.flot.pie.js"></script>
	<script src="js/jquery.flot.stack.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>
	
		<script src="js/jquery.chosen.min.js"></script>
	
		<script src="js/jquery.uniform.min.js"></script>
		
		<script src="js/jquery.cleditor.min.js"></script>
	
		<script src="js/jquery.noty.js"></script>
	
		<script src="js/jquery.elfinder.min.js"></script>
	
		<script src="js/jquery.raty.min.js"></script>
	
		<script src="js/jquery.iphone.toggle.js"></script>
	
		<script src="js/jquery.uploadify-3.1.min.js"></script>
	
		<script src="js/jquery.gritter.min.js"></script>
	
		<script src="js/jquery.imagesloaded.js"></script>
	
		<script src="js/jquery.masonry.min.js"></script>
	
		<script src="js/jquery.knob.modified.js"></script>
	
		<script src="js/jquery.sparkline.min.js"></script>
	
		<script src="js/counter.js"></script>
	
		<script src="js/retina.js"></script>

		<script src="js/custom.js"></script>
	<!-- end: JavaScript-->

</body>
</html>