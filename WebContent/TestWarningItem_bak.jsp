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
		<style type="text/css">
.cc{text-align: left;padding-left: 20px;}
</style>
	<!-- start: CSS -->
	<link id="bootstrap-style" href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
	<link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">
<script src="myjs/vue.js" charset="GBK"></script>
<script src="myjs/axios.js" charset="GBK"></script>
<script src="element-ui/lib/index.js"></script>

<style> 
.table-a table{border:1px solid #F00} 

.el-row {
    margin-bottom: 0px;
    &:last-child {
      margin-bottom: 0;
    }
  }
  .el-col {
    border-radius: 4px;
  }
  .bg-purple-dark {
    background: #99a9bf;
  }
  .bg-purple {
    background: #d3dce6;
  }
  .bg-purple-light {
    background: #e5e9f2;
  }
  .grid-content {
    border-radius: 4px;
    min-height: 36px;
  }
  .row-bg {
    padding: 10px 0;
    background-color: #f9fafc;
  }
  .grid-content{
  border: 1px solid rgb(220, 223, 230); 
  border-radius: 0px;
  box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.1);
  text-align: right;
  line-height: 36px;
  white-space:nowrap; 
	text-overflow:ellipsis; 
	overflow:hidden;
	padding: 0px 15px;
	min-height: 36px;
		
  }
    .grid-content1{
  border: 1px solid rgb(220, 223, 230); 
  border-radius: 0px;
  box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.1);
  text-align: left;
  line-height: 36px;
  white-space:nowrap; 
	text-overflow:ellipsis; 
	overflow:hidden;
	padding: 0px 10px;	
	min-height: 36px;
  }
  
  .el-table td, .el-table th{
  padding: 5px 0px;
  }
</style> 

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
			String c_edate=(String)session.getAttribute("edate_WarningServlet2");
			System.out.println(c_sdate);
			System.out.println(c_edate);
			String c_statu=(String)session.getAttribute("statu_AllListServlet3");
			String c_userid=(String)session.getAttribute("userid_AllListServlet3");
			String c_stno=(String)session.getAttribute("stno_AllListServlet3");
			//System.out.print("TestItem");
			%>
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="ReturnIndex">首页</a>
					<i class="icon-angle-right"></i> 
				</li>
				<li>
			<%
					String TT=(String)session.getAttribute("TT");
					
					if(TT.equals("TestWarningPart.jsp")){%>
					<i class="icon-edit"></i>
						<a href="TestWarningPart.jsp" >日常运维</a>
						<i class="icon-angle-right"></i>
					<%}else if(TT.equals("ReturnIndex")){}else{%>
					<i class="icon-edit"></i>
						<a href="#" onClick="javascript :history.go(-1);">日常运维</a>
						<i class="icon-angle-right"></i>
					<%}
					%>
<!-- 					<a href="#" onClick="javascript :history.back(-1);">返回上一页</a> -->
					
					
				</li>
				<li>
					<i class="icon-edit"></i>
					<a href="#">设备故障信息录入</a>
				</li>
			</ul>
						

<%@include file="EquMain.jsp" %>
<script type="text/javascript">
document.getElementById("equMain2").style.display ="none";
document.getElementById("equMain3").style.display ="none";
var  chevron=document.getElementsByClassName("chevron-up");
chevron[1].classList.add("chevron-down");
chevron[2].classList.add("chevron-down");
</script>
		
		
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
							//	out.print("没有数据！");
							}else{int x=1;
								// 遍历集合中的数据
								for(Equ equ  : list2){
							String message=equ.getMessage();
							String username=equ.getUsername();
							String userpwd=equ.getUserpwd();
							String nowdate=equ.getNowdate();
							String sn=equ.getSn();
							String statu=equ.getStatu();
							String picture=equ.getPicture();
							String edate=equ.getEdate();
							String sdate=equ.getSdate();
							String stno=equ.getStno();
							String sdate1=sdate.substring(0,10);
						
			if(picture==""||picture==null){
				%>
				<li id="li<%=x %>"  >
			<div id="l<%=x %>" style="display: block;">
			<span style="display: -webkit-box;width: 98%;"   class="message"   >
			<div style="width: 90%;">
			<%=username %><span class="arrow"></span>&nbsp;&nbsp;&nbsp;
			 <span  class="from"></span>
			  <span name="w_locale" class="time">登记时间:&nbsp;&nbsp;<%=nowdate %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=<%=statu %>=&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;事件开始时间:<%=sdate1 %></span>
			 <span name="w_textlayout" class="text"><%=message %></span>
			</div >
			<div style="width: 7%;"></div>	
			 <div style="width: 3%;"><span style="display: inline;width: 30%"><a  href="#" onclick="dianji(this)">编辑</a></span></div>
			 </span>
			</div>
			
			<div id="l<%=x %>new" style="display: none;">
			<form id="l<%=x %>form" method="post" action="updatali">
			<span style="display: -webkit-box;width: 98%;"   class="message"   >
			<div style="width: 90%;">
			<textarea name="" rows="3" style="width: 100%"  cols=""><%=message %></textarea>
			</div >
			<div style="width: 7%;"></div>	
			 <div style="width: 3%;"><span style="display: inline;width: 30%"><a href="#" ></a><br><br>
			 <a href="#" onclick="saveli(this,'TestWarningItem')">修改</a><br>
			 <a href="#" onclick="cancelli(this)">取消</a></span></div>
			 </span>
			 </form>
			</div>
			</li>
			<%	
			}else{
				%>
				<li id="li<%=x %>"  >
			<div id="l<%=x %>" style="display: block;">
			<span style="display: -webkit-box;width: 98%;"   class="message"   >
			<div style="width: 90%;">
			<%=username %><span class="arrow"></span>&nbsp;&nbsp;&nbsp;
			 <span  class="from"></span>
			  <span name="w_locale" class="time">登记时间:&nbsp;&nbsp;<%=nowdate %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=<%=statu %>=&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;事件开始时间:<%=sdate1 %></span>
			 <span name="w_textlayout" class="text"><%=message %></span>
			</div >
			<div style="width: 7%;"><span id="image-<%=x %>" class="masonry-thumb masonry-brick" style="/* position: absolute; */width: 90%;top: 0px;/* max-height: 100%; */max-width: 90%;">
			<a style="background:url(<%=picture %>)" title="Sample Image" href="<%=picture%>" target="_blank">
			<img class="grayscale" src="<%=picture %>" alt="Sample Image"></a>
			</span></div>	
			 <div style="width: 3%;"><span style="display: inline;width: 30%"><a  href="#" onclick="dianji(this)">编辑</a></span></div>
			 </span>
			</div>
			 
			 <div id="l<%=x %>new" style="display: none;">
			<form id="l<%=x %>form" method="post" action="updatali">
			<span style="display: -webkit-box;width: 98%;"   class="message"   >
			<div style="width: 90%;">
			<textarea name="" rows="3" style="width: 100%"  cols=""><%=message %></textarea>
			</div >
			<div style="width: 7%;"></div>	
			 <div style="width: 3%;"><span style="display: inline;width: 30%"><a href="#" ></a><br><br>
			 <a href="#" onclick="saveli(this,'TestWarningItem')">修改</a><br>
			 <a href="#" onclick="cancelli(this)">取消</a></span></div>
			 </span>
			 </form>
			</div>
			</li>	
			<%
			}
				x=x+1;				}}
		%>
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
						
						 stno="<%=c_stno%>";
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
							
							<button class="btn btn-info" id="warningchart" onclick="return warningchart()"  >提交故障信息描述</button>
						</div>	
					</div>
				</div>
		
		<!-- 提交故障信息描述	 -->
		
		 <script charset="UTF-8" type="text/javascript" language="javascript"  >
		 sn=listGsons[0].sn;
		 
		 function codeA(a) {
				var codeA= encodeURIComponent(encodeURIComponent(a));
		         return codeA;
			}
		
		 function searchlist() {
			 var s_sdate=document.getElementById("s_sdate").value;
			 s_sdate=s_sdate+" 00:00:00";
			 var s_edate=document.getElementById("s_edate").value;
			 s_edate=s_edate+" 00:00:00";
			 var select_statu_search = document.getElementById("select_statu_search");
			 var index=select_statu_search.selectedIndex ;
			 var statu= select_statu_search.options[index].text;
			
		//	 sn=document.getElementById("snchar").value;
			 var urlrf = window.location.href;
			var flag=urlrf.indexOf("WarningServlet2?sn=");
			if (flag!=-1) {sessionStorage.setItem('urlrf', urlrf);}else {}
			var urlHref=sessionStorage.getItem('urlrf');
			
			
			search(sn,s_sdate,s_edate,statu,stno);
			 
			 
			 function search(sn,s_sdate,s_edate,statu,stno){
				   location.href="WarningSelectItem?sn="+sn+"&sdate="+codeA(s_sdate)+"&edate="+codeA(s_edate)+"&statu="+codeA(statu)+"&stno="+stno;	
				    
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
				// console.log("===="+statu); 
				 
					 
				 var urlrf = window.location.href;
				// console.log(urlrf);
					var flag=urlrf.indexOf("WarningServlet2?sn=");
					//console.log(flag);
					if (flag!=-1) {sessionStorage.setItem('urlrf', urlrf);}else {}
					var urlHref=sessionStorage.getItem('urlrf');
				//	console.log(1111);
				var useridc="<%=c_userid%>";
					var useridc=codeA(useridc);
					firm_back_state(sn,w_locale,statu,w_text,urlHref,useridc,stno);
					
				//	console.log(useridc);
				 function firm_back_state(sn,w_locale,statu,w_text,urlHref,useridc,stno){
					    if (w_text==null||w_text=="") {
						alert("请输入信息!");
						return false; 
					    }else if(confirm("确认提交？")){
					 	location.href="WarningItem?sn="+sn+"&nowdate="+codeA(w_locale)+"&message="+codeA(w_text)+"&stno="+stno+"&statu="+codeA(statu)+"&userid="+useridc+"&sdate=<%=c_sdate%>&edate=<%=c_edate%>";	
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
	</div>
	</div>
	
	
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
			 
 			 console.log(w_locale);
 			 console.log(w_lodate);
 			 console.log(w_text);
 			 console.log(w_name);
 			 console.log(useridc);
 			 console.log(statu);
 			 console.log(sn);
			 
			 if(document.getElementById("url").value==""){
				 
				alert("请选择一个文件!");
				 
				  return false; 
			}
			 else if (document.getElementById("w_text").value=="") {
				alert("请输入故障内容!");
				 return false; 
			}else if (statu=="") {
				alert("请选择故障类型!");
				 return false; 
			}else {
				
				form4.enctype="multipart/form-data"
			form4.action="UploadPictureItem?sn="+sn+"&userid="+useridc+"&nowdate="+codeA(w_locale)+"&stno="+stno+"&message="+codeA(w_text)+"&statu="+codeA(statu)+"&sdate=<%=c_sdate%>&edate=<%=c_edate%>";
				form4.method="post";
				form4.submit(); 
			}
	 
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
  <script type="text/javascript">listusGson=<%=session.getAttribute("listusGson")%>;</script>
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
		<script charset="GBK" type="text/javascript" src="myjs/Liedit.js"></script>
	<!-- end: JavaScript-->

</body>
</html>