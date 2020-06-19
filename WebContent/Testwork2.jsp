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
		var flag=urlr.indexOf("EditTestServlet?id=");
		
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
	
	function update() {
		
		function $(url) {
			return document.getElementById("url");
		}
		var urlr = window.location.href;
		var flag=urlr.indexOf("EditTestServlet?id=");
	
		if (flag!=-1) {
			sessionStorage.setItem('urlr', urlr);
			
		}
		
		var urlHref=sessionStorage.getItem('urlr');
	
		 if($(url).value==""){
			  
				alert("请选择一个文件!");
			//	formall.action="AddTestServlet";
				 
				  return false; 
			}else {
				
				form4.enctype="multipart/form-data"
			//	form4.action="UpdateTestServlet?urlHref="+urlHref; 
				form4.action="Up?urlHref="+urlHref;
				form4.method="post";
				form4.submit(); 
			}
 	 
	}
	
	
 </script>
 

	 
	
</head>
<body >

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
			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="ReturnIndex">首页</a>
					<i class="icon-angle-right"></i> 
				</li>
				<li>
					<i class="icon-edit"></i>
					<a href="#">设备修改</a>
				</li>
			</ul>
						


<%
				List<Equ> list = (List<Equ>)request.getAttribute("list");
			      		        			        
					// 判断集合是否有效
					if(list == null || list.size() < 1){
						out.print("没有数据！");
					}else{
						// 遍历集合中的数据
						for(Equ equ : list){
							String pos=equ.getPos();String selectpos51,selectpos52,pos2,pos3;
							if(pos==null){
								selectpos51="";selectpos52="";pos2="";pos3="";
							}else{
								if(pos.indexOf("9F-A")!=-1){selectpos51="selected";}else{ selectpos51="";}
								if(pos.indexOf("9F-B")!=-1){selectpos52="selected";}else{ selectpos52="";}
								pos2=pos.substring(pos.indexOf("/")+1,pos.lastIndexOf("/"));
								 pos3=pos.substring(pos.lastIndexOf("/")+1);
							}
							
							String ip=equ.getIp();String  ip1,mask,gateway;
							if (ip==null){
								ip1="";mask="";gateway="";
							}else{
							 ip1=ip.substring(0,ip.indexOf("/"));
							 mask=ip.substring(ip.indexOf("/")+1,ip.lastIndexOf("/"));
							 gateway=ip.substring(ip.lastIndexOf("/")+1);}
							String stpy=equ.getStyp();String styp2,selectstyp1,selectstyp2,selectstyp3,selectstyp4,selectstyp5;
							if(stpy==null){
								selectstyp1="";selectstyp2="";selectstyp3="";styp2="";selectstyp4="";selectstyp5="";
							}else{
								if(stpy.indexOf("DELL")!=-1){selectstyp1="selected";}else{ selectstyp1="";}
								if(stpy.indexOf("HP")!=-1){selectstyp2="selected";}else{ selectstyp2="";}
								if(stpy.indexOf("IBM")!=-1){selectstyp3="selected";}else{ selectstyp3="";}
								if(stpy.indexOf("中兴")!=-1){selectstyp4="selected";}else{ selectstyp4="";}
								if(stpy.indexOf("曙光")!=-1){selectstyp5="selected";}else{ selectstyp5="";}
								styp2=stpy.substring(stpy.indexOf("/")+1);
								styp2=Turn.turn2(styp2);
							}
							
							String sname=equ.getSname();String checkedsname1,checkedsname2;
							if(sname==null){
								checkedsname1="";checkedsname2="";
							}else{
								if(sname.indexOf("物理机")!=-1){checkedsname1="checked";}else{ checkedsname1="";} 
								if(sname.indexOf("虚拟机")!=-1){checkedsname2="checked";}else{ checkedsname2="";}
							}
							String pname=equ.getPname(),sn=equ.getSn();
							if(pname==null){pname="";}else{pname=equ.getPname();
							pname=Turn.turn2(pname);
							}
							
							if(sn==null){sn="";}else{sn=equ.getSn();}
							
			%>

			<div >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>机房设备档案信息</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form action="" method="post" name="form1" id="form1" class="form-horizontal">
							<fieldset>
							
							 
							  <div class="control-group success">
								<label class="control-label" >系统名称</label>
								<div class="controls">
								  <input type="text"  name="pname" id="pname" value=<%=pname%>>
								  <span class="help-inline">
								  <label class="control-label" >序列号</label>
								<div class="controls">
								  <input type="text"   name="sn" id="sn" value=<%=sn%>></div>
								   </span>
								  </div>
								</div>
							  
							  <div class="control-group">
								<label class="control-label" >机架位置</label>
								<div class="controls ">
								  <select  name="selectpos5" id="selectpos5">
								  <option></option>
									<option value="9F-A" <%=selectpos51 %>>9F-A</option>
									<option value="9F-B" <%=selectpos52 %>>9F-B</option>
									
								  </select>
									<span class="add-on ">-</span>
									<input  size="16" type="text" name="textfieldpos" id="textfieldpos" value=<%=pos2%>>
									<span class="add-on">-</span>
									<input  size="16" type="text" name="textfieldpos2" id="textfieldpos2" value=<%=pos3%>>
							      <input type ="hidden" id="pos" name="pos" value ="" >
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" >IP地址</label>
								<div class="controls">
								  <div class="input-append">
									<input  size="16" type="text"  name="textfieldip10" id="textfieldip10" value=<%=ip1%>><span class="add-on">子网掩码</span>
									<input  size="16" type="text" name="textfieldip11" id="textfieldip11" value=<%=mask%>><span class="add-on">网关</span>
									<input  size="16" type="text" name="textfieldip12" id="textfieldip12" value=<%=gateway%>>
									<input type ="hidden" id="ip" name="ip" value ="" >
								  </div>
								  <!-- <span class="help-inline">Here's more help text</span> -->
								</div>
							  </div>
							  
							  
							
							  <div class="control-group">
								<label class="control-label" >品牌 </label>
								<div class="controls ">
								  <select  name="selectstyp"  id="selectstyp">
								  <option></option>
									<option value="DELL" <%=selectstyp1 %>>DELL</option>
                					<option value="HP" <%=selectstyp2 %>>HP</option>
                					<option value="IBM" <%=selectstyp3 %>>IBM</option>
                					<option value="中兴" <%=selectstyp4 %>>中兴</option>
                					<option value="曙光" <%=selectstyp5 %>>曙光</option>
								  </select>
									<span class="add-on ">型号</span>
									<input  size="16" type="text" name="textfield8" id="textfield8" value=<%=styp2%>>
									<input type ="hidden" id="styp" name="styp" value ="" >
								</div>
							  </div>
							  
							   <div class="control-group">
								<label class="control-label">设备类型</label>
								<div class="controls">
								  <label class="checkbox inline">
									<input type="checkbox" name="checkbox2" id="checkbox2" <%=checkedsname1 %> value="物理机"> 物理机
								  </label>
								  <label class="checkbox inline">
									<input type="checkbox" name="checkbox2" id="checkbox2" <%=checkedsname2 %> value="虚拟机"> 虚拟机
									<input type ="hidden" id="sname" name="sname" value ="" >
								  </label>
								  <input type ="hidden" id="id" name="id" value =<%=equ.getId()%> >
								</div>
							  </div>
							 
							  <div class="form-actions">
								<!-- <button type="submit" class="btn btn-primary" onclick="check1()"></button> -->
								<input type="submit" name="button" class="btn btn-primary" id="button" value="保存档案信息"  onclick="check1()">
								<!-- <button class="btn" onclick="check2()">清空</button> -->
								
							  </div>
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
			
			<% 
						}}
		        %>	
			
			
		<%
				List<Equ> list2 = (List<Equ>)request.getAttribute("list");
			      		        			        
					// 判断集合是否有效
					if(list2 == null || list2.size() < 1){
						out.print("没有数据！");
					}else{
						// 遍历集合中的数据
						for(Equ equ : list2){
							String ownname=equ.getOwnname();String select3ownname1,select4ownname1,select4ownname2,ownname2,ownname3;
							if(ownname==null){
								select3ownname1="";select4ownname1="";select4ownname2="";ownname2="";ownname3="";
							}else{
								if(ownname.indexOf("宁波电信")!=-1){select3ownname1="selected";}else{ select3ownname1="";}
								 if(ownname.indexOf("企信中心")!=-1){select4ownname1="selected";}else{ select4ownname1="";}
								 if(ownname.indexOf("市场部")!=-1){select4ownname2="selected";}else{ select4ownname2="";}
								 ownname2=ownname.substring(ownname.indexOf("/",ownname.indexOf("/")+1)+1,ownname.lastIndexOf("/"));
								 ownname3=ownname.substring(ownname.lastIndexOf("/")+1);
							}
							 
							 
							 String proname=equ.getProname();String proname1,proname2,proname3;
								if (proname!=null){proname1=proname.substring(0,proname.indexOf("/")); } else{proname1="";}
								if (proname!=null){proname2=proname.substring(proname.indexOf("/")+1,proname.lastIndexOf("/"));} else{proname2="";}
								if (proname!=null){proname3=proname.substring(proname.lastIndexOf("/")+1);} else{proname3="";}
								String manname=equ.getManname();String manname1,manname2,manname3;
								if (manname!=null){manname1=manname.substring(0,manname.indexOf("/")); } else{manname1="";}
								if (manname!=null){manname2=manname.substring(manname.indexOf("/")+1,manname.lastIndexOf("/"));} else{manname2="";}
								if (manname!=null){manname3=manname.substring(manname.lastIndexOf("/")+1);} else{manname3="";}
								String agename=equ.getAgename();String agename1,agename2,agename3;
								if (agename!=null){agename1=agename.substring(0,agename.indexOf("/")); } else{agename1="";}
								if (agename!=null){agename2=agename.substring(agename.indexOf("/")+1,agename.lastIndexOf("/"));} else{agename2="";}
								if (agename!=null){agename3=agename.substring(agename.lastIndexOf("/")+1);} else{agename3="";}
							
								String mantyp=equ.getMantyp();String checked1,checked2,checked3,checked4,checked5;
								if(mantyp==null){
									checked1="";checked2="";checked3="";checked4="";checked5="";
								}else{
									if(mantyp.indexOf("仅放置设备")!=-1){checked1="checked";}else{ checked1="";} 
									
									if(mantyp.indexOf("硬件维护")!=-1){checked2="checked";}else{ checked2="";} 
									if(mantyp.indexOf("操作系统维护")!=-1){checked3="checked";}else{ checked3="";} 
									if(mantyp.indexOf("数据库维护")!=-1){checked4="checked";}else{ checked4="";} 
									if(mantyp.indexOf("应用维护")!=-1){checked5="checked";}else{ checked5="";}
								}
								
								String sid=equ.getSid(),did=equ.getDid(),stdate=equ.getStdate(),use=equ.getUse();
								if(sid!=null){sid=equ.getSid();}else{sid="";}
								if(did!=null){did=equ.getDid();}else{did="";}
								if(stdate!=null){stdate=equ.getStdate();}else{stdate=" ";}
								if(use!=null){use=equ.getUse();}else{use="";}
							
			%>
			
			
			
			<div >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>设备维护信息</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form action="" method="post" name="form2" id="form2" class="form-horizontal">
						
							<fieldset>
							
							<div class="control-group ">
								<label class="control-label" >资产编号:</label>
								<div class="controls">
								  <input type="text" name="sid" id="sid" value=<%=equ.getSid()%>  >
								  <span class="help-inline">
								   <label class="control-label" >档案编号:</label>
								<div class="controls">
								  <input type="text" name="did" id="did" value=<%=equ.getDid()%>> </div>
								   </span>
								</div>
							  </div>
							
							<div class="control-group">
							  <label class="control-label" for="date01">设备初次搬入机房日期</label>
							  <div class="controls">
								<input type="text" class="input-xlarge datepicker" name="stdate" id="stdate" value=<%=equ.getStdate()%>>  
							  </div>
							</div>
							
							
							<div class="control-group">
								<label class="control-label" >设备用途</label>
								<div class="controls">
								  <div class="input-append">
									<input  size="16" type="text" value=<%=equ.getUse()%> name="use" id="use">
								  </div>
								  <!-- <span class="help-inline">Here's more help text</span> -->
								</div>
							  </div>
							
							<div class="control-group">
								<label class="control-label" >设备资产单位:</label>
								<div class="controls">
								  <div class="input-append">
									<select name="select3" id="select3">
								  <option></option>
									<option value="宁波电信" <%=select3ownname1 %>>宁波电信</option>
									
									</select>
									<span class="add-on">部门</span>
									<select name="select4" id="select4">
								  <option></option>
									<option value="企信中心"  <%=select4ownname1 %>>企信中心</option>
									<option value="市场部"  <%=select4ownname2 %>>市场部</option>
									</select>
									<span class="add-on">联系人</span>
									<input  size="16" name="textfield51" type="text" id="textfield51" value=<%=ownname2%> ><span class="add-on">电话</span>
									<input  name="textfield52" type="text" id="textfield52" size="16" value=<%=ownname3%>>
								 <input type ="hidden" id="ownname" name="ownname" value ="" >
								  </div>
								</div>
							  </div>
							  
							
							
							<div class="control-group">
								<label class="control-label" >系统集成商:</label>
								<div class="controls">
								  <div class="input-append">
								  <input  name="textfield53" type="text" id="textfield53" size="16" value=<%=proname1%>>
									<span class="add-on">联系人</span>
									<input  name="textfield54" type="text" id="textfield54" size="16" value=<%=proname2%>>
									<span class="add-on">电话</span>
									<input  name="textfield55" type="text" id="textfield55" size="16" value=<%=proname3%>>
									<input type ="hidden" id="proname" name="proname" value ="" >
								  </div>
								</div>
							  </div>
							
							
							
							<div class="control-group">
								<label class="control-label" >系统责任人:</label>
								<div class="controls">
								  <div class="input-append">
								  <input  name="textfield56" type="text" id="textfield56" size="16" value=<%=manname1%>>
									<span class="add-on">电话</span>
									<input  name="textfield57" type="text" id="textfield57" size="16" value=<%=manname2%>>
									<span class="add-on">所属部门</span>
									<input  name="textfield58" type="text" id="textfield58" size="16"  value=<%=manname3%>>
									<input type ="hidden" id="manname" name="manname" value ="" >
								  </div>
								</div>
							  </div>
							
							
							<div class="control-group">
								<label class="control-label" >代维单位:</label>
								<div class="controls">
								  <div class="input-append">
								  <input  name="textfield59" type="text" id="textfield59" size="16" value=<%=agename1%>>
									<span class="add-on">联系人</span>
									<input  name="textfield60" type="text" id="textfield60" size="16" value=<%=agename2%>>
									<span class="add-on">电话</span>
									<input  name="textfield61" type="text" id="textfield61" size="16" value=<%=agename3%>>
									<input type ="hidden" id="agename" name="agename" value ="" >
									<input type ="hidden" id="id" name="id" value =<%=equ.getId() %> >
								  </div>
								</div>
							  </div>
							  
							  
							  
							  
							   <div class="control-group">
								<label class="control-label">维护形式:</label>
								<div class="controls">
								 <label class="checkbox inline">
									<input type="checkbox" name="checkbox1" value="仅放置设备" <%=checked1 %>> 仅放置设备
								  </label>
								  <label class="checkbox inline">
									<input type="checkbox" name="checkbox1" value="硬件维护" <%=checked2 %>> 硬件维护
								  </label>
								  
								  <label class="checkbox inline">
									<input type="checkbox" name="checkbox1" value="操作系统维护" <%=checked3 %>> 操作系统维护
								  </label>
								  <label class="checkbox inline">
									<input type="checkbox" name="checkbox1" value="数据库维护"  <%=checked4 %>> 数据库维护
								  </label>
								  <label class="checkbox inline">
									<input type="checkbox" name="checkbox1" value="应用维护"  <%=checked5 %>> 应用维护
									
									
								  </label>
								  <input type ="hidden" id="mantyp" name="mantyp" value ="" > 
								  <input type ="hidden" id="id" name="id" value ="" >
								</div>
							  </div>
								
							
							  <div class="form-actions">
								
								<input type="submit" name="button2" class="btn btn-primary" id="button2" value="保存设备维护信息"  onclick="check2()">
								<!-- <input type="submit" name="button3" class="btn btn-primary" id="button3" value="信息"  onclick="check3()"> -->
							  </div>
							</fieldset>
						</form>
					</div>
				</div><!--/span-->
			</div><!--/row-->
				<% 
						}}
		        %>	
			
			
			<%
				List<Equ> list3 = (List<Equ>)request.getAttribute("list");
			      		        			        
					// 判断集合是否有效
					if(list3 == null || list3.size() < 1){
						out.print("没有数据！");
					}else{
						// 遍历集合中的数据
						for(Equ equ : list3){
							String pot=equ.getPort();
							String pot1=pot.substring(0,pot.indexOf("/"));
							String pot2=pot.substring(pot.indexOf("/")+1,pot.lastIndexOf("/"));
							String pot3=pot.substring(pot.lastIndexOf("/")+1);
							String cpu=equ.getCpu();
							String cpu1=cpu.substring(0,cpu.indexOf("/"));
							String cpu2=cpu.substring(cpu.indexOf("/")+1);
						String syn=equ.getSyn();String syn1,syn2,select2syn1,select2syn2;
						syn1=syn.substring(0,syn.indexOf("/"));
						syn2=syn.substring(syn.lastIndexOf("/")+1);
						if(syn1==null){
							select2syn1="";select2syn2="";
							}else{
								if(syn1.indexOf("Windows")!=-1){select2syn1="selected";}else{ select2syn1="";}
								if(syn1.indexOf("Linux")!=-1){select2syn2="selected";}else{ select2syn2="";}
							}
						
						String memory=equ.getMemory(),disk=equ.getDisk(),oracle=equ.getOracle(),oth=equ.getOth();
						if(memory!=null){memory=equ.getMemory();}else{memory="";}
						if(disk!=null){disk=equ.getDisk();}else{disk="";}
						if(oracle!=null){oracle=equ.getOracle();}else{oracle="";}
						if(oth!=null){oth=equ.getOth();}else{oth="";}
						
			%>
			
			<div >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>IT设备配置明细</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form action="" method="post" name="form3" id="form3" class="form-horizontal">
							<fieldset>
							
							<div class="control-group">
								<label class="control-label" >网线编号:</label>
								<div class="controls">
								  <div class="input-append">
									<input  name="textfield13port" type="text" id="textfield13port" size="16" value=<%=pot1%>><span class="add-on">交换机端口号</span>
									<input  name="textfield14port" type="text" id="textfield14port" size="16" value=<%=pot2%>><span class="add-on">配线架端口号</span>
									<input  name="textfield15port" type="text" id="textfield15port" size="16" value=<%=pot3%>>
								  <input type ="hidden" id="port" name="port" value ="" >
								  </div>
								  <!-- <span class="help-inline">Here's more help text</span> -->
								</div>
							  </div>
							
							
							<div class="control-group">
								<label class="control-label" >CPU型号:</label>
								<div class="controls">
								  <div class="input-append">
									<input  name="textfield16cpu" type="text" id="textfield16cpu" size="16" value=<%=cpu1%>><span class="add-on">物理数量</span>
									<input  name="textfield17cpu" type="text" id="textfield17cpu" size="16"  value=<%=cpu2%>>
								  <input type ="hidden" id="cpu" name="cpu" value ="" >
								  </div>
								  <!-- <span class="help-inline">Here's more help text</span> -->
								</div>
							  </div>
							
							  <div class="control-group ">
								<label class="control-label" >内存配置:</label>
								<div class="controls">
								  <input name="memory" type="text" id="memory" size="16" value=<%=equ.getMemory()%>>
								  <span class="help-inline">
								   <label class="control-label" >硬盘配置:</label>
								<div class="controls">
								  <input name="disk" type="text" id="disk" size="16" value=<%=equ.getDisk()%>> </div>
								   </span>
								</div>
							  </div>
							  
							  
							  <div class="control-group">
								<label class="control-label" >操作系统版本:</label>
								<div class="controls">
								  <div class="input-append">
									<select name="select2syn" id="select2syn">
								  <option></option>
									<option value="Windows" <%=select2syn1 %>>Windows</option>
									<option value="Linux" <%=select2syn2 %> >Linux</option>
									</select>
									<span class="add-on">-</span>
									<input  name="textfield21syn" type="text" id="textfield21syn" size="16" value=<%=syn2%>>
									<input type ="hidden" id="syn" name="syn" value ="" >
								  </div>
								</div>
							  </div>
							  
							  
							  <div class="control-group ">
								<label class="control-label" >数据库版本:</label>
								<div class="controls">
								  <input name="oracle" type="text" id="oracle" size="16" value=<%=oracle%>>
								</div>
							  </div>
							  
							  
							  <div class="control-group ">
								<label class="control-label" >其它信息:</label>
								<div class="controls">
								  <input name="oth" type="text" id="oth" size="16" value=<%=oth %>>
								 
								</div>
							  </div>
							 <input type ="hidden" id="id" name="id" value =<%=equ.getId() %> >
							<div class="form-actions">
							  <input type="submit" name="button3" class="btn btn-primary" id="button3" value="保存配置明细"  onclick="check3()">
								
								
							  </div>
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
			
			<% 
						}}
		        %>	
			
			
		
			
				<form action=""  name="form4" id="form4" class="form-horizontal">
			<div class="control-group ">
								<label class="control-label" >附件上传:</label>
								<div class="controls">
								  <div class="uploader"><input type="file" name="url" id="url" value="">
								  <span class="filename" style="user-select: none;">没有文件请选择</span>
								  <span class="action" style="user-select: none;">选择文件</span>
								  
								  </div>
								  <span class="help-inline">
								  <input type="submit" class="btn btn-primary" onclick="update()" value="上传">
								   <span class="help-inline">
								 <!--   <a href ="ftp://test:test902@134.101.168.30/dxtest/注册码.PNG" >FTP下载</a> -->
								</span>
								<%
				List<Equ> list4 = (List<Equ>)request.getAttribute("listsn");
			      		        			        
					// 判断集合是否有效
					if(list4 == null || list4.size() < 1){
						out.print("没有数据！");
					}else{
						// 遍历集合中的数据
						for(Equ equ : list4){
							
			%>	
								 <input type ="hidden" id="sn" name="sn" value =<%=equ.getSn() %> >  
								 <% 
						}}
		        %>	
								</div>
							  </div>
			</form>
			
 <script type="text/javascript" language="javascript">					
	function update() {
		
		function $(url) {
			return document.getElementById("url");
		}
		var urlr = window.location.href;
		var flag=urlr.indexOf("EditTestServlet?id=");
	
		if (flag!=-1) {
			sessionStorage.setItem('urlr', urlr);
			
		}
		
		var urlHref=sessionStorage.getItem('urlr');
	
		 if($(url).value==""){
			  
				alert("请选择一个文件!");
			//	formall.action="AddTestServlet";
				 
				  return false; 
			}else {
				
				form4.enctype="multipart/form-data"
			//	form4.action="UpdateTestServlet?urlHref="+urlHref; 
				form4.action="Up?urlHref="+urlHref;
				form4.method="post";
				form4.submit(); 
			}
 	 
	}
	 </script>
	
	
	
	
			

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
		
		
		
		
		
		
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