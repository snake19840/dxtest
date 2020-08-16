<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@page import="java.util.List"%>
            <%@page import="java.util.Date"%>
<%@page import="com.clas.Equ"%>
    
    
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
	
	 <link href="mycss/iconfont.css" rel="stylesheet" type="text/css"/>
    <link href="mycss/fileUpload.css" rel="stylesheet" type="text/css">
	
	
	
	<link id="bootstrap-style" href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
	<script src="myjs/vue.js" charset="GBK"></script>
<script src="myjs/axios.js" charset="GBK"></script>
<script src="node_modules/moment/moment.js" charset="GBK"></script>
<script src="element-ui/lib/index.js"></script>
<link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">

	<!-- start: Favicon -->
	<link rel="shortcut icon" href="img/favicon.ico">
	<!-- end: Favicon -->
	
</head>
<body>
<%
String contractListItemGson=(String)session.getAttribute("contractListItemGson");
String contractListItemFileGson=(String)session.getAttribute("contractListItemFileGson");
%>

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
					<a href="ReturnIndex">主页</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="TestChakanContract.jsp" >合同查询</a>
				<i class="icon-angle-right"></i>
				</li>
				<li><a href="#" >合同修改</a></li>
			</ul>

		<div id="main"  >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>合同修改</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
<!-- 							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a> -->
						</div>
					</div>
					
<!-- 			lllll		 -->
					
					<div class="box-content">
						
						
						<form id="form1"  action=""  >
							<fieldset>
							
							
							<div  style="padding-top: 20px;text-align: center;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;font-size: 25px;">合同信息</b><hr />
							</div>
							  
							<div style="width: 100%;padding-bottom: 50px;">
							<div  style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;">合同编号</b><input v-model="contractid" disabled="disabled" id="contractid"  name="contractid" size="16" type="text">
							</div> 
							<div style="width: 50%;float: right;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;">合同名称</b><input v-model="contractname" id="contractname"   name="contractname" size="16" type="text"> 
							</div>
							</div>
							
							
							<div style="padding-bottom: 50px;width: 100%;">
							<div style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 18px;letter-spacing: 3px;">合同签订日期</b><input v-model="markdate" id="markdate" name="markdate" size="16" type="date"> 
							</div>
							<div style="width: 50%;float: right;">
							<b style="padding-left: 50px;padding-right: 18px;letter-spacing: 3px;">合同有效日期</b><input v-model="contractnlife" id="contractnlife" name="contractnlife" size="16" type="date">
							</div >
							</div>
							
							
							<div style="width: 50%;float:left;">
							</div>
							<div style="width: 50%;float: right;">
							</div >
							
							<div style="padding-bottom: 50px;width: 100%;">
							<div style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 35px;letter-spacing: 3px;">甲方签署人</b><input v-model="myname" id="myname" name="myname" size="16" type="text">
							</div>
							<div style="width: 50%;float: right;">
							<b style="padding-left: 50px;padding-right: 35px;letter-spacing: 3px;">乙方签署人</b><input v-model="oppname" id="oppname"   name="oppname"  size="16" type="text">
							</div >
							</div>
							
<!-- 							basemessageEnd -->


							<div style="padding-top: 20px;text-align: center;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;font-size: 25px;">乙方信息</b><hr />
							</div>
							
							<div style="padding-bottom: 10px;width: 100%;">
							<div style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 35px;letter-spacing: 3px;" >供应商单位</b>
							<input  id="oppu" v-model="oppu"  name="oppunit" size="16"  autocomplete="off" type="text">
							</div>
							<input v-model="oppid"  type="hidden" id="oppid" value="">

							<!-- oppMainDisplayinput -->
							<div id="oppMainDisplayinput" style="display: block;">
							<div style="padding-bottom: 50px;width: 100%;">
							<div style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 35px;letter-spacing: 3px;">法定代表人</b>
							<input v-model="oppp" size="16" type="text"   >
							</div>
							<div style="width: 50%;float: right;">
							<b style="padding-left: 50px;padding-right: 35px;letter-spacing: 3px;">项目联系人</b>
							<input v-model="oppn" size="16" type="text"    >
							</div >
							</div>
							
							<div style="width: 100%;padding-bottom: 50px;">
							<div  style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;">联系方式</b><input v-model="oppe" size="16" type="text"   id="oppe1" >
							</div> 
							<div style="width: 50%;float: right;">
							<b style="padding-left: 50px;padding-right: 39px;letter-spacing: 3px;">供应商地址</b><input v-model="oppa" size="16" type="text"   id="oppa1" > 
							</div>
							</div>
							
							<div style="width: 100%;padding-bottom: 50px;">
							<div  style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 86px;letter-spacing: 3px;">电话</b><input v-model="oppe2" size="16" type="text"  id="oppe21" >
							</div> 
							<div style="width: 50%;float: right;">
							<b style="padding-left: 50px;padding-right: 89px;letter-spacing: 3px;">传真</b><input v-model="oppx" size="16" type="text"  id="oppx1" > 
							</div>
							</div>
							
							
							<div style="width: 100%;padding-bottom: 50px;">
							<div  style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;">电子邮箱</b><input v-model="oppmail" size="16" type="text"  id="oppmail1" >
							</div> 
							<div style="width: 50%;float: right;">
							<b style="padding-left: 50px;padding-right: 56px;letter-spacing: 3px;">通讯地址</b><input v-model="oppad" size="16" type="text"  id="oppad1" > 
							</div>
							</div>
							
<!-- 							oppmessageend -->
							
							<hr/>
							
							<div style="width: 100%;padding-bottom: 50px;">
							<div  style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 69px;letter-spacing: 3px;">开户行</b><input v-model="opppayb" size="16" type="text" id="opppayb1"  name="opppayb" >
							</div> 
							<div style="width: 50%;float: right;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;">银行地址</b><input v-model="opppaya" size="16" type="text"  id="opppaya1" > 
							</div>
							</div>
							
							<div style="width: 100%;padding-bottom: 50px;">
							<div  style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 86px;letter-spacing: 3px;">户名</b><input v-model="opppayh" size="16" type="text"  id="opppayh1" >
							</div> 
							<div style="width: 50%;float: right;">
							<b style="padding-left: 50px;padding-right: 86px;letter-spacing: 3px;">帐号</b><input v-model="opppayz" size="16" type="text"  id="opppayz1" > 
							</div>
							</div>
							
							<div style="width: 100%;padding-bottom: 50px;">
							<div  style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 86px;letter-spacing: 3px;">电话</b><input v-model="opppaye" size="16" type="text"   id="opppaye1" >
							</div> 
							<div style="width: 50%;float: right;">
							<b style="padding-left: 50px;padding-right: 86px;letter-spacing: 3px;">地址</b><input v-model="opppaya2" size="16" type="text"   id="opppaya21" > 
							</div>
							</div>
							
							
							
							<div style="width: 100%;padding-bottom: 50px;">
							<div  style="width: 100%;float:left;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;">统一社会</b><input v-model="opppaym" size="16" type="text"   id="opppaym1" >
							</div><br>
							
							<div  style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;">信用码</b> 
							</div>
							</div>
							</div>
                            </div>

							
							<div style="padding-top: 20px;text-align: center;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;font-size: 25px;">甲方信息</b><hr />
							</div>
							
							<div style="padding-bottom: 10px;width: 100%;">
							<div style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 35px;letter-spacing: 3px;">委托方单位</b>
							<input v-model="myu" id="myu"  autocomplete="off" name="myu" size="16" type="text">
							</div>
							<input v-model="myid" type="hidden" id="myid" value=""> 

							<div id="myMainDisplayinput" style="display: block;">
							<div style="padding-bottom: 50px;width: 100%;">
							<div style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 35px;letter-spacing: 3px;">法定代表人</b>
							<input v-model="myp" size="16" type="text" id="myp1"   >
							</div>
							<div style="width: 50%;float: right;">
							<b style="padding-left: 50px;padding-right: 35px;letter-spacing: 3px;">项目联系人</b><input v-model="myn" size="16" type="text"   id="myn1"  >
							</div >
							</div>
							
							<div style="width: 100%;padding-bottom: 50px;">
							<div  style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;">联系方式</b><input v-model="mye" size="16" type="text"  id="mye1" >
							</div> 
							<div style="width: 50%;float: right;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;">通讯地址</b><input v-model="myad" size="16" type="text"  id="myad1" > 
							</div>
							</div>
							
							<div style="width: 100%;padding-bottom: 50px;">
							<div  style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 86px;letter-spacing: 3px;">电话</b><input v-model="mye2" size="16" type="text"  id="mye21" >
							</div> 
							<div style="width: 50%;float: right;">
							<b style="padding-left: 50px;padding-right: 86px;letter-spacing: 3px;">传真</b><input v-model="myx" size="16" type="text"  id="myx1" > 
							</div>
							</div>
							
							
							<div style="width: 100%;padding-bottom: 50px;">
							<div  style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;">电子邮箱</b><input v-model="myemail" size="16" type="text"  id="myemail1" >
							</div> 
							<div style="width: 50%;float: right;">
							</div>
							</div>
							
<!-- 							mymessageend -->
							
							<hr/>
							
							<div style="width: 100%;padding-bottom: 50px;">
							<div  style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 69px;letter-spacing: 3px;">开户行</b><input v-model="mypayb" size="16" type="text" id="mypayb1" >
							</div> 
							<div style="width: 50%;float: right;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;">银行地址</b><input v-model="mypaya" size="16" type="text"  id="mypaya1" > 
							</div>
							</div>
							
							<div style="width: 100%;padding-bottom: 50px;">
							<div  style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 86px;letter-spacing: 3px;">户名</b><input v-model="mypayh" size="16" type="text"  id="mypayh1" >
							</div> 
							<div style="width: 50%;float: right;">
							<b style="padding-left: 50px;padding-right: 86px;letter-spacing: 3px;">帐号</b><input v-model="mypayz" size="16" type="text"  id="mypayz1" > 
							</div>
							</div>
							
							<div style="width: 100%;padding-bottom: 50px;">
							<div  style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 86px;letter-spacing: 3px;">电话</b><input v-model="mypaye" size="16" type="text"  id="mypaye1" >
							</div> 
							<div style="width: 50%;float: right;">
							<b style="padding-left: 50px;padding-right: 86px;letter-spacing: 3px;">地址</b><input v-model="mypaya2" size="16" type="text"   id="mypaya21" > 
							</div>
							</div>
							
							<div style="width: 100%;padding-bottom: 50px;">
							<div  style="width: 100%;float:left;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;">统一社会</b><input v-model="mypaym" size="16" type="text"   id="mypaym1" >
							</div><br>
							
							<div  style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;">信用码</b> 
							</div>
							</div>
							</div>
							</div>
<!-- 							myEnd -->
							
							<div style="padding-top: 20px;text-align: center;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;font-size: 25px;">付款信息</b><hr />
							</div>
							
							
							<div style="padding-bottom: 8px;display: inline;">
							<b style="padding-left: 25px;padding-right: 28px;letter-spacing: 3px;">项目大类</b>
							<input style="display: none;" id="CB_class_t" name="CB_class" size="16" type="text">	
							<select  v-model="plan4" >	
							<option v-for="item in classflistGson" :value="item.classfamily">{{item.classfamily}}</option>
							</select>
							<b  style="padding-left: 25px;padding-right: 28px;letter-spacing: 3px;">项目小类</b>	
							<select v-model="classson">
							<option v-for="item in calsssonAllGson" :value="item.rowData.CLASSSON">{{item.rowData.CLASSSON}}</option>
							</select>
												
							</div>
							
							
							
							<div style="padding-bottom: 8px;">

 							<b style="padding-left: 25px;padding-right: 28px;letter-spacing: 3px;">附加合同</b>
							<select v-model="plan2">
							<option value="是">是</option>
							<option value="否">否</option>
							</select>	
							<template v-if="plan2=='是'">
						    <b style="padding-left: 25px;padding-right: 11px;letter-spacing: 3px;">主合同编号</b>
							<input  v-model="plan3"   size="16" type="text"   id="plan3" >
							</template>
							</div>
							
							<div style="padding-bottom: 8px">
							<b style="padding-left: 25px;padding-right: 33px;letter-spacing: 3px;" >付款金额</b><input v-model="CAMOUNT" name="camount" id="camount" size="16" type="number"><b style="padding-left: 14px">元</b>
							
							</div>
							
							
							<div style="padding-bottom: 8px">
							<b style="padding-left: 25px;padding-right: 33px;letter-spacing: 3px;" >付款次数</b><input v-model="lin" readonly="readonly" name="lin" id="lin" size="16" type="number">
							<a style="margin: 8px 20px"   href="#" @click="add" class="halflings-icon plus"><i></i></a> 
							<a style="margin: 8px 0px;"   href="#" @click="reduce" class=" halflings-icon minus"><i></i></a>
							</div>
						
						<div style="text-align: center;">
							<table style="margin: auto;">
							<tr >
							<th>序号</th>
							<th >付款名称</th>
							<th >付款比例</th>
							<th >付款日期</th>
						
						
							
							</tr>
							
							<tr v-for="(item,index) in  pnamexString" keys="index">
							<td style="width: 50px;"><b >{{index+1}}</b></td>
							<td>
							<select name="payname" style="width: 130px;" v-model="item.payname" >
							<option v-for="item in paynameAllGson" :value="item.rowData.PAYNAME"  >{{item.rowData.PAYNAME}}</option>
							</select>
							</td>
							<td>
							<input name="paypor" style="width: 130px;" type="number" v-model="item.paypor"><b style="font-size: 16px;">%</b>
							</td>
							<td>
							<input name="paydate" style="width: 130px;" type="date" v-model="item.paydate">
							</td>
						
							</tr>
						
							</table>
						</div>	
						
						<template v-if="planm2Gson.length>0">
						<div style="padding-bottom: 8px">
						<b style="padding-left: 25px;padding-right: 33px;letter-spacing: 3px;" >实际付款情况:</b>
						</div>
						<table style="margin: auto;">
							<tr >
							<th>序号</th>
							<th >付款名称</th>
							<th >付款比例</th>
							<th >付款日期</th>
						<th>是否付款</th>
							</tr>
							
							<tr v-for="(item,index) in  planm2Gson" keys="index">
							<td style="width: 50px;"><b >{{index+1}}</b></td>
							<td>
							<select name="payname" style="width: 130px;" v-model="item.payname" >
							<option v-for="item in paynameAllGson" :value="item.rowData.PAYNAME"  >{{item.rowData.PAYNAME}}</option>
							</select>
							</td>
							<td>
							<input name="paypor" style="width: 130px;" type="number" v-model="item.paypor"><b style="font-size: 16px;">%</b>
							</td>
							<td>
							<input name="paydate" style="width: 130px;" type="date" v-model="item.paydate">
							</td>
						<td style="text-align: center;">
						<input type="checkbox" :pay="pay(item.statu,index)" v-model="item.statu">
						</td>
							</tr>
						
							</table>
						</template>
						
<!-- 							payEnd -->
							<div class="form-actions">
								<button type="button" class="btn btn-primary"  @click="upd">提交</button>
<!-- 								<button class="btn" onclick="clear()">取消</button> -->
							  </div>
							  
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->

	</div><!--/.fluid-container-->
	
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
	
	<div class="clearfix"></div>
	
	<%
		Date d = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String now = df.format(d);
	%>

	<footer>
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
		<script src="Base64.js-master/Base64.js-master/base64.js"></script>
		<script src="tableExport.jquery.plugin-master/tableExport.jquery.plugin-master/tableExport.js"></script>
		
<script src="jquery-table2excel-master/jquery-table2excel-master/dist/jquery.table2excel.min.js"></script>
	
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
		<script src="excel/external/jszip.min.js"></script>
		<script src="excel/external/FileSaver.js"></script>
		<script src="excel/scripts/demo.page.js"></script>
		<script src="excel/scripts/excel-gen.js"></script>
		<script type="text/javascript">
		contractListItemGson=<%=contractListItemGson%>;
		 contractListItemFileGson=<%=contractListItemFileGson%>;
		 classflistGson=<%=session.getAttribute("classflistGson")%>;
		 classonitemGson=<%=session.getAttribute("classonitemGson")%>;
		 paynameitemGson=<%=session.getAttribute("paynameitemGson")%>;
		 pnamexString=<%=session.getAttribute("pnamexString")%>;
		 planm2Gson=<%=session.getAttribute("planm2Gson")%>;
		 paynameAllGson=<%=session.getAttribute("paynameAllGson")%>;
		 calsssonAllGson=<%=session.getAttribute("calsssonAllGson")%>;
		
		 list1Gson=<%=session.getAttribute("list1Gson")%>;
		 list2Gson=<%=session.getAttribute("list2Gson")%>;
		 list3Gson=<%=session.getAttribute("list3Gson")%>;
		 
		 contractoppGson=<%=session.getAttribute("contractoppGson")%>;
		 opppayGson=<%=session.getAttribute("opppayGson")%>;
		 contractmyGson=<%=session.getAttribute("contractmyGson")%>;
		 mypayGson=<%=session.getAttribute("mypayGson")%>;
		 contractListItemGson=contractListItemGson[0].rowData;
		 
		 
		</script>
		<script type="text/javascript">
		var vm=new Vue({
		    el:'#main',
		    data:{
			contractListItemGson:contractListItemGson,
			classonitemGson:classonitemGson,
			paynameitemGson:paynameitemGson,
			pnamexString:pnamexString,
			planm2Gson:planm2Gson,
			classflistGson:classflistGson,
			paynameAllGson:paynameAllGson,
			calsssonAllGson:calsssonAllGson,
			isPay:false,
			lin:pnamexString.length,
			oppname:contractListItemGson.OPPNAME,
			contractname:contractListItemGson.CONTRACTNAME,
			oppunit:contractListItemGson.OPPUNIT,
			oppid:contractListItemGson.OPPID,
			CAMOUNT:contractListItemGson.CAMOUNT,
			myname:contractListItemGson.MYNAME,
			id:contractListItemGson.ID,
			plan3:contractListItemGson.PLAN3,
			finmoney:contractListItemGson.FINMONEY,
			plan4:contractListItemGson.PLAN4,
			plan1:contractListItemGson.PLAN1,
			plan2:contractListItemGson.PLAN2,
			sgmoney:contractListItemGson.SGMONEY,
			myid:contractListItemGson.MYID,
			markdate:contractListItemGson.MARKDATE,
			classson:contractListItemGson.CLASSSON,
			contractid:contractListItemGson.CONTRACTID,
			contractnowdate:contractListItemGson.CONTRACTNOWDATE,
			statu:contractListItemGson.STATU,
			contractnlife:contractListItemGson.CONTRACTNLIFE,
			planm2:contractListItemGson.PLANM2,

			oppe2:contractoppGson[0].rowData.OPPE2,
			oppu:contractoppGson[0].rowData.OPPU,
			oppe:contractoppGson[0].rowData.OPPE,
			oppp:contractoppGson[0].rowData.OPPP,
			oppid:contractoppGson[0].rowData.OPPID,
			oppa:contractoppGson[0].rowData.OPPA,
			oppn:contractoppGson[0].rowData.OPPN,
			oppx:contractoppGson[0].rowData.OPPX,
			oppad:contractoppGson[0].rowData.OPPAD,
			oppmail:contractoppGson[0].rowData.OPPMAIL,

			opppaye:opppayGson[0].rowData.OPPPAYE,
			opppayh:opppayGson[0].rowData.OPPPAYH,
			opppaya2:opppayGson[0].rowData.OPPPAYA2,
			opppaya:opppayGson[0].rowData.OPPPAYA,
			opppayb:opppayGson[0].rowData.OPPPAYB,
			opppaym:opppayGson[0].rowData.OPPPAYM,
			opppayz:opppayGson[0].rowData.OPPPAYZ,
			opppayid:opppayGson[0].rowData.OPPPAYID,
			
			myn:contractmyGson[0].rowData.MYN,
			myid:contractmyGson[0].rowData.MYID,
			mya:contractmyGson[0].rowData.MYA,
			myp:contractmyGson[0].rowData.MYP,
			myu:contractmyGson[0].rowData.MYU,
			mye:contractmyGson[0].rowData.MYE,
			myad:contractmyGson[0].rowData.MYAD,
			mye2:contractmyGson[0].rowData.MYE2,
			myx:contractmyGson[0].rowData.MYX,
			myemail:contractmyGson[0].rowData.MYEMAIL,

			mypaym:mypayGson[0].rowData.MYPAYM,
			mypayid:mypayGson[0].rowData.MYPAYID,
			mypaya:mypayGson[0].rowData.MYPAYA,
			mypayb:mypayGson[0].rowData.MYPAYB,
			mypaya2:mypayGson[0].rowData.MYPAYA2,
			mypaye:mypayGson[0].rowData.MYPAYE,
			mypayh:mypayGson[0].rowData.MYPAYH,
			mypayz:mypayGson[0].rowData.MYPAYZ,

			dialogVisible1:false,
			dialogVisible2:false,
			dialogVisible3:false,
			list1Gson:list1Gson,
			list2Gson:list2Gson,
			list3Gson:list3Gson,
			search1:'',
			search2:'',
			search3:'',
			total:list1Gson.length,
			total2:list2Gson.length,
			total3:list3Gson.length,
			pageSize:5,
			totalPage:[],
			pageNum:0,
			currentPage:0,
			isPay:false,
		    },
		    methods:{
// ------------------------------------------------------------------------------------------
			shaixuan(n){
			    console.log(n);
			    this.calsssonAllGson = calsssonAllGson;
			    if ((n!=0) && (n!="")) {
			            this.calsssonAllGson = this.calsssonAllGson.filter(temp=>{
			               return temp['rowData']['CLASSFAMILY']==n ;
			            });
			         }else {
			             this.classsonlistGson=[];
				}
			    this.paynameAllGson = paynameAllGson; 
			    if ((n!=0) && (n!="")) {
				 this.paynameAllGson =  this.paynameAllGson.filter(temp=>{
			               return temp['rowData']['CLASSFAMILY']==n ;
			            });
			         }else {
			             this.classpaylistGson=[];
				}
			    console.log(this.paynameAllGson);
			},
			
// 			---------------------------------------------------------------------------------------------
			
			upd(){
			    this.$confirm('是否提交表单, 是否继续?', '提示', {
			          confirmButtonText: '确定',
			          cancelButtonText: '取消',
			          type: 'warning'
			        }).then(() => {
			            this.upd1();
//		 	          this.$message({
//		 	            type: 'success',
//		 	            message: '表单提交成功!'
//		 	          });
//		 	          this.$refs.reset.click();
			        }).catch(() => {
			          this.$message({
			            type: 'info',
			            message: '表单未提交'
			          });          
			        });
			},
			upd1(){
			    if (this.planm2Gson.length==0) {
				this.planm2Gson=this.pnamexString;
			    }
			    let plan1= JSON.stringify(this.pnamexString),
			    planm2=JSON.stringify(this.planm2Gson),
			    plandate2='',
			    plandate1='',
			    n=0,
			    planm1='';
			   
			    for (var i = 0; i < this.lin; i++) {
				if (this.planm2Gson[i].statu==0) {
				    n=1;
				    plandate2=this.pnamexString[i].paydate;
				    plandate1=this.planm2Gson[i].paydate;
				    planm1=this.planm2Gson[i].payname;
				    sgmoney=this.planm2Gson[i].paypor;
				    break;
				}
			    }
			    if (n!=1) {
				this.statu="end";
			    }else {
				this.statu="";
			    }
			    this.oppunit=this.oppu;
			    
			    this.oppunit=this.oppu;

			    
			    if (this.contractid==''||	this.contractname==''||	this.oppunit==''||	this.markdate==''||	this.contractnlife==''||	this.myname==''||	this.oppname==''||	this.CAMOUNT==''||	this.plan2==''||	this.plan4==''||	this.plandate2==''||	this.plandate1==''||	this.planm1==''||	this.classson==''||	this.oppu==''||	this.oppp==''||	this.oppa==''||	this.oppn==''||	this.oppe==''||	this.oppx==''||	this.oppmail==''||	this.oppe2==''||	this.oppad==''||	this.opppayb==''||	this.opppaya==''||	this.opppayz==''||	this.opppayh==''||	this.opppaye==''||	this.opppaya2==''||	this.opppaym==''||	this.myu==''||	this.mya==''||	this.myp==''||	this.myn==''||	this.mye==''||	this.myad==''||	this.mye2==''||	this.myx==''||	this.myemail==''||	this.mypayb==''||	this.mypaya==''||	this.mypayz==''||	this.mypayh==''||	this.mypaye==''||	this.mypaya2==''||	this.mypaym==''||	this.plan1==''||	this.planm2=='') {
				this.$message({
			            type: 'info',
			            message: '请填写完整'
			          });
				return;
			    }
			    
			    axios({
		                url: '/dxtest/UpDataContract3',
		                   method: 'post',
		                   data: {
		                       "contractid":this.contractid,
		                       "contractname":this.contractname,
		                       "oppunit":this.oppu,
		                       "markdate":this.markdate,
		                       "contractnlife":this.contractnlife,
		                       "myname":this.myname,
		                       "oppname":this.oppname,
		                       "statu":this.statu,
		                       "camount":this.CAMOUNT,
		                       "plan2":this.plan2,
		                       "plan3":this.plan3,
		                       "plan4":this.plan4,
		                       "plandate2":plandate2,
		                       "plandate1":plandate1,
		                       "planm1":planm1,
		                       "oppid":this.oppid,
		                       "myid":this.myid,
		                       "classson":this.classson,
		                       "oppu":this.oppu,
		                       "oppp":this.oppp,
		                       "oppa":this.oppa,
		                       "oppn":this.oppn,
		                       "oppe":this.oppe,
		                       "oppx":this.oppx,
		                       "oppmail":this.oppmail,
		                       "oppe2":this.oppe2,
		                       "oppad":this.oppad,
		                       "opppayb":this.opppayb,
		                       "opppaya":this.opppaya,
		                       "opppayz":this.opppayz,
		                       "opppayh":this.opppayh,
		                       "opppaye":this.opppaye,
		                       "opppaya2":this.opppaya2,
		                       "opppaym":this.opppaym,
		                       "myu":this.myu,
		                       "mya":this.mya,
		                       "myp":this.myp,
		                       "myn":this.myn,
		                       "mye":this.mye,
		                       "myad":this.myad,
		                       "mye2":this.mye2,
		                       "myx":this.myx,
		                       "myemail":this.myemail,
		                       "mypayb":this.mypayb,
		                       "mypaya":this.mypaya,
		                       "mypayz":this.mypayz,
		                       "mypayh":this.mypayh,
		                       "mypaye":this.mypaye,
		                       "mypaya2":this.mypaya2,
		                       "mypaym":this.mypaym,
		                       "plan1":plan1,
		                       "planm2":planm2,
		                       "sgmoney":sgmoney,
		                       "plandate_str":listusGson[0].day,
		                   },
		                   enctype:'application/json',
		             }).then((response)=>{
// 		                console.log(response.data.WarningGsons);
		                 if (response.data.statu) {
		                     this.$message({
		     	            type: 'success',
		     	            message: response.data.WarningGsons
		     	          });
		                   
				} else {
			 	          this.$message({
			            type: 'error',
			            message: response.data.WarningGsons
			          });
				}
		             }).catch((error)=>{
		                 this.$notify.error({
		                        title: '错误',
		                        message: `添加失败`,
		                            duration:1500
		                      });
		                     
		             }); 
			    
			},
			
// ----------------------------------------------------------------------------------------------------------			
			pay(x,n){
			    console.log(x);
			    console.log(n);
			    if (x=='1'||x==true) {
				this.planm2Gson[n].statu=1;
			    }else {
				this.planm2Gson[n].statu=0;
			    }
			},
			add(){
			    if (this.lin<10) {
				 this.lin=this.lin+1;
				 let a=this.pnamexString,
					b=this.planm2Gson;
				 a.push({"payname":"","paypor":"","paydate":"","classson":"","statu":"0"});
				 b.push({"payname":"","paypor":"","paydate":"","classson":"","statu":"0"});
				 this.pnamexString=a;
					this.planm2Gson=b;
			    }else {
				this.$message({
				          message: '付款次数在1~10之间',
				          type: 'warning'
				        });
			    }
			   
			},
			reduce(){
			    if (this.lin>1) {
				this.lin=this.lin-1;
				let a=this.pnamexString,
				b=this.planm2Gson;
				a.pop();
				b.pop();
				this.pnamexString=a;
				this.planm2Gson=b;
			    }else {
				this.$message({
				          message: '付款次数在1~10之间',
				          type: 'warning'
				        });
			    }
			},
			ip(e,n){
			 if (e==0||e==false||e=="undefined") {
			     return this.planm2Gson[n].statu=0;
			    }else  {
				return this.planm2Gson[n].statu=1;
			    } 
			},
		    },
		    watch:{
				lin:function(n,o){
				    console.log(n);
				},
				plan4:function(n,o){
				    console.log(n);
				    this.shaixuan(n);
				},
			
		    },
		    mounted(){
			this.shaixuan(this.plan4);
		    },
		    
		    
		})
		
		
		</script>
		
		

</body>
</html> 