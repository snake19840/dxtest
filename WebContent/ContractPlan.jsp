<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@page import="java.util.List"%>
<%@page import="com.clas.Equ"%>
    
    
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
 <head>
 <script type="text/javascript">
 pnamexString=<%=session.getAttribute("pnamexString")%>;
 planm2Gson=<%=session.getAttribute("planm2Gson")%>;
 contractListItemGson=<%=session.getAttribute("contractListItemGson")%>;
 contractmyItemg=<%=session.getAttribute("contractmyItemg")%>;
 mypayItemg=<%=session.getAttribute("mypayItemg")%>;
 contractoppItemg=<%=session.getAttribute("contractoppItemg")%>;
 opppayItemg=<%=session.getAttribute("opppayItemg")%>;
 
 </script>
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
	<link rel="stylesheet" href="alert/css/alert.css">

	<script src="myjs/vue.js" charset="GBK"></script>
	<script src="myjs/axios.js" charset="GBK"></script>
	<script src="node_modules/moment/moment.js" charset="GBK"></script>
	<script src="element-ui/lib/index.js"></script>
	<link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">

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
<style type="text/css">
	.el-message-box{
	width: 70%; 
	height:70%;
	overflow-y:auto;
	}
	select, input[type="file"]{
	display: none;
	}
	</style>
	<script type="text/javascript">
	 classflistGson=<%=session.getAttribute("classflistGson")%>;
	 contractListItemFileGson=<%=session.getAttribute("contractListItemFileGson")%>;
contractListItemGson=<%=session.getAttribute("contractListItemGson")%>;
 classonitemGson=<%=session.getAttribute("classonitemGson")%>;
 paynameitemGson=<%=session.getAttribute("paynameitemGson")%>;
 plan1=pnamexString;
 planm2=planm2Gson;
 contractid="<%=session.getAttribute("contractid")%>";

 
	</script>
	
</head>
<body>


	<%@include file="TestHeader.jsp" %>
	
		<div class="container-fluid-full">
		<div class="row-fluid">
				
			<%@include file="TestMainMenu.jsp" %>
			
			
			<!-- start: Content -->
			<div id="content" class="span10">
			<%
			String TT=(String)session.getAttribute("TT");
			%>
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="ReturnIndex">主页</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="<%=TT%>">合同计划</a>
				<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">合同计划调整</a>
				<i class="icon-angle-right"></i>
				</li>
			</ul>
		
		
		<div  id="main">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>合同详情</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-down"></i></a>
						</div>
					</div>
					
					<div class="box-content" style="display: none;">
			
					<table v-for="(item,index) in contractListItemGson" keys="index" title="双击联系人查看详情" width=100% border="1">
					<tr>
					      <td style=" text-align: center;font-size: 20px;padding-top: 20px;padding-bottom: 5px;" colspan="8">{{item.rowData.CONTRACTNAME}}</td>
					     
				        </tr>
					
					    <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;" ><b>合同编号:</b></td>
					      <td style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3">{{item.rowData.CONTRACTID}}</td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>合同签订日期:</b></td>
					      <td style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3">{{item.rowData.MARKDATE}}</td>
					      
				        </tr>
					    <tr>
					     <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>合同金额:</b></td>					     
					      <td style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3">{{item.rowData.CAMOUNT}} 元</td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>合同有效期:</b></td>
					      <td style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3">{{item.rowData.CONTRACTNLIFE}}</td>
					      
				        </tr>
				        
				          <tr>
					     <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>对方单位:</b></td>
					      <td style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="7">{{item.rowData.OPPUNIT}}</td>
					      
				        </tr>
				        
				         <tr >
				        
				          <td   style="width: 10%;padding-left: 15px;padding-top: 10px;"  @dblclick="showmy"><b>甲方联系人:</b></td>
					      <td id="myd" style="width: 15%;padding-left: 10px;padding-top: 10px;" @dblclick="showmy"><span id="myn1"></span>{{mycon}} </td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"  @dblclick="showmy"><b>联系人电话:</b></td>
					      <td style="width: 15%;padding-left: 10px;padding-top: 10px;"  @dblclick="showmy"><span id="mye21"></span>{{mycone}} </td>
				        
				  
				          
				          
				        <td   style="width: 10%;padding-left: 15px;padding-top: 10px;" @dblclick="showopp"><b>乙方联系人:</b></td>
					      <td id="oppd"  style="width: 15%;padding-left: 10px;padding-top: 10px;" @dblclick="showopp"><span id="oppnmain"></span> {{oppcon}}</td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;" @dblclick="showopp"><b>联系人电话:</b></td>
					      <td style="width: 15%;padding-left: 10px;padding-top: 10px;" @dblclick="showopp"><span id="oppe21"></span>{{oppcone}} </td>
					
					       
				        </tr>
					    
					     <tr>
					     <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>对方签署人:</b></td>
					      <td style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3">{{item.rowData.OPPNAME}}</td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>我方签署人:</b></td>
					      <td style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3">{{item.rowData.MYNAME}}</td>
					      
				        </tr>
					    
				      </table>
							</div>
					</div>
					
					<div style="display: none;">
		<div   name="table" id="table1" class="modal-body" style="background-color: #fafafa;padding-bottom: 0px;">
			<div  class="box-content">
			<div class="span6"><div class="dataTables_filter" >
<!-- 			<label>搜索: <input type="text" id="searchBox1" name="searchBox1" ></label> -->
			</div> 
			</div>
						<table  keys="index"  width=100% border="1">
					<tr>
					      <td style="  text-align: center;font-size: 25px;padding-top: 20px;padding-bottom: 10px;" colspan="8">甲方详细信息</td>
				        </tr>
					
					    <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;" ><b>甲方单位:</b></td>
					      <td id="MYU"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>甲方地址:</b></td>
					      <td id="MYA"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
					    <tr>
					     <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>法定代表人:</b></td>					     
					      <td id="MYP"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>项目联系人:</b></td>
					      <td id="MYN" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>联系方式:</b></td>					     
					      <td id="MYE"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>通讯地址:</b></td>
					      <td id="MYAD" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        
				        </tr>
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>电话:</b></td>					     
					      <td id="MYE2"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>传真:</b></td>
					      <td id="MYX" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        
				         <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>电子邮箱:</b></td>					     
					      <td id="MYEMAIL"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="7"></td>
					      
				        </tr>
				        
				        <tr>
					      <td style=" text-align: center;font-size: 30px;padding-top: 20px;padding-bottom: 10px;" colspan="8">甲方财务信息</td>
				        </tr>
				        
				        </tr>
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>开户行:</b></td>					     
					      <td id="MYPAYB"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>银行地址:</b></td>
					      <td id="MYPAYA" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        </tr>
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>帐号:</b></td>					     
					      <td id="MYPAYZ"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>户名:</b></td>
					      <td id="MYPAYH" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        </tr>
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>电话:</b></td>					     
					      <td id="MYPAYE"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>地址:</b></td>
					      <td id="MYPAYA2" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>统一社会信用码:</b></td>					     
					      <td id="MYPAYM"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="7"></td>
				        </tr>
					    
				      </table>	
						  
						 <div class="pagination pagination-centered">
						 
						     
						</div>     
		
		
		<div class="modal-footer" style="background-color: #f5f5f5;">
		</div>
		</div>
	</div>
	</div>
					
					<div style="display: none;">
		<div  name="table" id="box_content1" class="modal-body" style="background-color: #fafafa;padding-bottom: 0px">
			<div  class="box-content">
			<div class="span6"><div class="dataTables_filter" >
<!-- 			<label>搜索: <input type="text" id="searchBox1" name="searchBox1" ></label> -->
			</div> 
			</div>
						<table  width=100% border="1">
					<tr>
					      <td style=" text-align: center;font-size: 30px;padding-top: 20px;padding-bottom: 10px;" colspan="8">乙方详细信息</td>
					     
				        </tr>
					
					    <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;" ><b>乙方单位:</b></td>
					      <td id="OPPU" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>乙方地址:</b></td>
					      <td id="OPPA" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
					    <tr>
					     <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>法定代表人:</b></td>					     
					      <td id="OPPP"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>项目联系人:</b></td>
					      <td id="OPPN" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>联系方式:</b></td>					     
					      <td id="OPPE"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>通讯地址:</b></td>
					      <td id="OPPAD" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        
				       
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>电话:</b></td>					     
					      <td id="OPPE2"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>传真:</b></td>
					      <td id="OPPX" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        
				         <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>电子邮箱:</b></td>					     
					      <td id="OPPMAIL"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="7"></td>
					      
				        </tr>
				        
				        <tr>
					      <td style=" text-align: center;font-size: 30px;padding-top: 20px;padding-bottom: 10px;" colspan="8">乙方财务信息</td>
				        </tr>
				        
				        </tr>
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>开户行:</b></td>					     
					      <td id="OPPPAYB"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>银行地址:</b></td>
					      <td id="OPPPAYA" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        </tr>
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>帐号:</b></td>					     
					      <td id="OPPPAYZ"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>户名:</b></td>
					      <td id="OPPPAYH" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        </tr>
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>电话:</b></td>					     
					      <td id="OPPPAYE"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>地址:</b></td>
					      <td id="OPPPAYA2" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>统一社会信用码:</b></td>					     
					      <td id="OPPPAYM"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="7"></td>
				        </tr>
					    
				      </table>	
						  
						 <div class="pagination pagination-centered">
						 
						     
						</div>     
					</div>
		</div>
		
		<div class="modal-footer" style="background-color: #f5f5f5;">
		</div>
		</div>
		
		
		
					
					
				</div><!--/span-->
				
				
				
				
				
		<div id="planMain" >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>合同计划</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
<!-- 							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a> -->
						</div>
					</div>
					<div class="box-content">
						
					<form   class="form-horizontal" action=""  method="post">
							<fieldset>
							<div style="padding-bottom: 8px;">
							<div style="letter-spacing: 3px;">
<!-- 							<a style="padding-bottom: 12px;text-decoration:none"   href="#" onclick="showClassText('CB_class_t','CB_class_s1')" class="icon-pencil"><i></i></a> -->
							<b style="padding-left: 25px;padding-right: 28px;letter-spacing: 3px;">项目大类</b>
							<input style="display: none;"  id="CB_class_t"  name="CB_class" size="16" type="text">
							<input disabled="disabled" v-model="classfamily" id="CB_class_s1" name="CB_class" size="16" type="text">	
							</div>
							</div>
							<div style="padding-bottom: 8px;">
							<div style="letter-spacing: 3px;">
 							<b style="padding-left: 25px;padding-right: 28px;letter-spacing: 3px;">附加合同</b>
							<input disabled="disabled" v-model="PLAN2" style="width: 20px;" id="plan2" name="plan2" size="16" type="text">	
							<template v-if="PLAN2=='是'">	
						    <b style="padding-left: 100px;">主合同编号</b>
							<input disabled="disabled" v-model="PLAN3"  size="16" type="text"   id="plan3" >
							</template>
							</div>
							
							</div>
							
							<div >
							<div style="padding-bottom: 8px">
							<b style="padding-left: 25px;padding-right: 33px;letter-spacing: 3px;" >付款金额</b><input disabled="disabled" name="camount" v-model="allPay" id="camount" size="16" type="number"><b style="padding-left: 14px">元</b>
							
							</div>
							
							
							
							 <div style="padding-bottom: 8px" id="planDivlin">
							<b  style="padding-left: 25px;padding-right: 33px;letter-spacing: 3px;" >付款次数</b><input disabled="disabled"  name="lin" id="lin" size="16" type="number" v-model="lin">
							&nbsp;&nbsp;<a style="padding-bottom: 11px;"   href="#"  class="glyphicons list"><i></i></a> 
							</div>
							<div style="padding: 20px 0px;text-align: center;" id="planDiv">
							
				<table style="margin: auto;">
					<tr>
					<th style="width: 10%;">序号</th>
					<th style="width: 16%;">付款名称</th>
					<th style="width: 16%;">付款比例</th>
					<th style="width: 16%;">付款日期</th>
					<th style="width: 16%;">确认付款</th>
					</tr>
<!-- 					:disabled="isDisabled(item.statu) -->
					<tr contenteditable="false" style="padding: 0px 10px;" v-for="(item,index) in items" >
					<td style="text-align: center;">
					<b>{{index+1}}</b>
					</td>
					<td>
						<select    ref="payname"  style="width:130px;height: 20px;" v-model="item.payname">
						<option v-for="(paynamei) in paynames"   :value="paynamei.payname">{{paynamei.payname}}</option>
						</select>
					</td>
					<td>
					<input  ref="paypor"  v-on:dblclick="cal(index)"  v-model="item.paypor" name="paypor"   size="16" type="number" style="width:130px;">
					</td>
					<td>
					<input ref="paydate"  v-model="item.paydate" name="paydate" size="16"  type="date" style="width:130px;">
					</td>
					<td>
					<input ref="statu" v-if="planm2Gson[index].statu==0"  style="margin-left:5px;"   type="button" class="btn"  value="付款" @click="payOver(index)">
					<b :id="'statu'+index" v-else>完成付款</b>
					</td>
					</tr>
				
				</table>
					
							
							</div>
						</div>
							<input  style="margin-left: 40%;" type="button" class="btn btn-primary" value="修改计划" @click="updataPlan">
							</fieldset>
						  </form>	
					 
					
					</div>
				</div><!--/span-->
			
			<el-dialog
				  title="请上传相应的附件"
				  :visible="dialogVisible"
				  width="50%"
				  :before-close="cs"
				 >
<!--   action="http://134.101.168.33:8080/dxtest/upload/Contract/"  -->
<!--   action="http://127.0.0.1:8080/dxtest/upload/Contract/" -->
				  <el-upload
				  action="upfile"
				 
				:http-request="upfile"
				  :on-preview="handlePreview"
				  :on-remove="handleRemove"
				  :before-remove="beforeRemove"
				  :on-success="updatafile"
				  :auto-upload="true"
				  :file-list="fileList"
				  >
				  <el-button size="small" type="primary">点击上传</el-button>
<!-- 				  <div slot="tip" class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div> -->
				</el-upload>
				  <span slot="footer" class="dialog-footer">
				    <el-button @click="dialogVisible = false">取 消</el-button>
				    <el-button type="primary" @click="upd">付款</el-button>
				  </span>
				</el-dialog>
				
	<el-dialog
  title="税率计算"
  :visible.sync="dialogVisible2"
  width="50%"
  >
  <div style="width: 80%;text-align: left;margin: 0px 20px;">
   <div id="app2">
	   <b>合同总金额&nbsp;: &nbsp;&nbsp;{{allPay}}&nbsp;&nbsp; 元</b> 
	</div>
	<div>
   <span style="margin: 3px 10px;">未付款比例&nbsp;: &nbsp;&nbsp;{{paypor}}%</span>
   <span style="margin: 3px 10px;">税率&nbsp;: &nbsp;&nbsp;
   <input style="margin: 3px 10px;width: 60px;" type="number" v-model="tax">%</span>
  </div>
  <div>
   <span style="margin: 3px 10px;">价款&nbsp;:&nbsp;{{paypart}}&nbsp;元</span>
   <span style="margin: 3px 10px;">增值税&nbsp;:&nbsp;{{taxpart}}&nbsp;元</span>
   <span style="margin: 3px 10px;">合计&nbsp;:&nbsp;{{sumpart}}&nbsp;元</span>
   </div>
 </div>
</el-dialog>
			</div><!--/row-->
	
		<!-- excelButtom	 -->
			
		<!-- <table  id="item">  -->
		
		<!-- excelButtomEnd	 -->

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
	<div class="modal fade none-border" id="myModal" style="display: none; padding-top: 5%; width: 80%; padding-left: 10%;">
		<div style="box-shadow: -7px 5px 13px 1px #362020;border:1px solid green;">
		<div class="modal-header" style="background-color: #578EBE;">
			<button type="button" class="close" onclick="closelist('myModal')">×</button>
			<h3>甲方信息</h3>
		</div>
		
		<div id="box_content1" class="modal-body" style="background-color: #fafafa;padding-bottom: 0px">
			<div  class="box-content">
			<div class="span6"><div class="dataTables_filter" >
<!-- 			<label>搜索: <input type="text" id="searchBox1" name="searchBox1" ></label> -->
			</div> 
			</div>
						<table  width=100% border="1">
					<tr>
					      <td style=" text-align: center;font-size: 30px;padding-top: 20px;padding-bottom: 10px;" colspan="8">甲方详细信息</td>
					     
				        </tr>
					
					    <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;" ><b>甲方单位:</b></td>
					      <td id="myu" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>甲方地址:</b></td>
					      <td id="mya" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
					    <tr>
					     <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>法定代表人:</b></td>					     
					      <td id="myp"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>项目联系人:</b></td>
					      <td id="myn" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>联系方式:</b></td>					     
					      <td id="mye"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>通讯地址:</b></td>
					      <td id="myad" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        
				        </tr>
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>电话:</b></td>					     
					      <td id="mye2"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>传真:</b></td>
					      <td id="myx" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        
				         <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>电子邮箱:</b></td>					     
					      <td id="myemail"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="7"></td>
					      
				        </tr>
				        
				        <tr>
					      <td style=" text-align: center;font-size: 30px;padding-top: 20px;padding-bottom: 10px;" colspan="8">甲方财务信息</td>
				        </tr>
				        
				        </tr>
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>开户行:</b></td>					     
					      <td id="mypayb"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>银行地址:</b></td>
					      <td id="mypaya" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        </tr>
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>帐号:</b></td>					     
					      <td id="mypayz"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>户名:</b></td>
					      <td id="mypayh" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        </tr>
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>电话:</b></td>					     
					      <td id="mypaye"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>地址:</b></td>
					      <td id="mypaya2" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>统一社会信用码:</b></td>					     
					      <td id="mypaym"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="7"></td>
				        </tr>
					    
				      </table>	
						  
						 <div class="pagination pagination-centered">
						 
						     
						</div>     
					</div>
		</div>
		
		<div class="modal-footer" style="background-color: #f5f5f5;">
		</div>
		</div>
	</div>
	
	
	<div class="modal fade none-border" id="myModal2" style="display: none; padding-top: 5%; width: 80%; padding-left: 10%;">
		<div style="box-shadow: -7px 5px 13px 1px #362020;border:1px solid green;">
		<div class="modal-header" style="background-color: #578EBE;">
			<button type="button" class="close" onclick="closelist('myModal2')">×</button>
			<h3>乙方信息</h3>
		</div>
		
		<div id="box_content1" class="modal-body" style="background-color: #fafafa;padding-bottom: 0px">
			<div  class="box-content">
			<div class="span6"><div class="dataTables_filter" >
<!-- 			<label>搜索: <input type="text" id="searchBox1" name="searchBox1" ></label> -->
			</div> 
			</div>
						<table  width=100% border="1">
					<tr>
					      <td style=" text-align: center;font-size: 30px;padding-top: 20px;padding-bottom: 10px;" colspan="8">乙方详细信息</td>
					     
				        </tr>
					
					    <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;" ><b>乙方单位:</b></td>
					      <td id="oppu" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>乙方地址:</b></td>
					      <td id="oppa" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
				        </tr>
					    <tr>
					     <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>法定代表人:</b></td>					     
					      <td id="oppp"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>项目联系人:</b></td>
					      <td id="oppn" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>联系方式:</b></td>					     
					      <td id="oppe"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>通讯地址:</b></td>
					      <td id="oppad" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        
				       
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>电话:</b></td>					     
					      <td id="oppe2"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>传真:</b></td>
					      <td id="oppx" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        
				         <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>电子邮箱:</b></td>					     
					      <td id="oppmail"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="7"></td>
					      
				        </tr>
				        
				        <tr>
					      <td style=" text-align: center;font-size: 30px;padding-top: 20px;padding-bottom: 10px;" colspan="8">乙方财务信息</td>
				        </tr>
				        
				        </tr>
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>开户行:</b></td>					     
					      <td id="opppayb"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>银行地址:</b></td>
					      <td id="opppaya" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        </tr>
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>帐号:</b></td>					     
					      <td id="opppayz"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>户名:</b></td>
					      <td id="opppayh" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        </tr>
				        
				          <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>电话:</b></td>					     
					      <td id="opppaye"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>地址:</b></td>
					      <td id="opppaya2" style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="3"></td>
					      
				        </tr>
				        <tr>
					      <td style="width: 10%;padding-left: 15px;padding-top: 10px;"><b>统一社会信用码:</b></td>					     
					      <td id="opppaym"  style="width: 40%;padding-left: 10px;padding-top: 10px;" colspan="7"></td>
				        </tr>
					    
				      </table>	
						  
						 <div class="pagination pagination-centered">
						 
						</div>     
					</div>
			
		</div>
		
		<div class="modal-footer" style="background-color: #f5f5f5;">
		</div>
		</div>
	</div>
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
	var main=new Vue({
	    el:'#main',
	    data:{
		li:0,
		header:{
		    enctype:"multipart/form-data",
			method:"post",
		},
		contractListItemGson:contractListItemGson,
		mycon:contractmyItemg[0].rowData.MYN,
		mycone:contractmyItemg[0].rowData.MYE2,
		oppcon:contractoppItemg[0].rowData.OPPN,
		oppcone:contractoppItemg[0].rowData.OPPE2,
		contractmyItemg:contractmyItemg,
		mypayItemg:mypayItemg,
		contractoppItemg:contractoppItemg,
		opppayItemg:opppayItemg,
		MYN:contractmyItemg[0].rowData.MYN,
		MYA:contractmyItemg[0].rowData.MYA,
		MYP:contractmyItemg[0].rowData.MYP,
		MYU:contractmyItemg[0].rowData.MYU,
		MYE:contractmyItemg[0].rowData.MYE,
		MYAD:contractmyItemg[0].rowData.MYAD,
		MYE2:contractmyItemg[0].rowData.MYE2,
		MYX:contractmyItemg[0].rowData.MYX,
		MYEMAIL:contractmyItemg[0].rowData.MYEMAIL,
		MYPAYM:mypayItemg[0].rowData.MYPAYM,
		MYPAYA:mypayItemg[0].rowData.MYPAYA,
		MYPAYB:mypayItemg[0].rowData.MYPAYB,
		MYPAYA2:mypayItemg[0].rowData.MYPAYA2,
		MYPAYE:mypayItemg[0].rowData.MYPAYE,
		MYPAYH:mypayItemg[0].rowData.MYPAYH,
		MYPAYZ:mypayItemg[0].rowData.MYPAYZ,
		OPPE2:contractoppItemg[0].rowData.OPPE2,
		OPPU:contractoppItemg[0].rowData.OPPU,
		OPPE:contractoppItemg[0].rowData.OPPE,
		OPPP:contractoppItemg[0].rowData.OPPP,
		OPPA:contractoppItemg[0].rowData.OPPA,
		OPPN:contractoppItemg[0].rowData.OPPN,
		OPPX:contractoppItemg[0].rowData.OPPX,
		OPPAD:contractoppItemg[0].rowData.OPPAD,
		OPPMAIL:contractoppItemg[0].rowData.OPPMAIL,
		OPPPAYE:opppayItemg[0].rowData.OPPPAYE,
		OPPPAYH:opppayItemg[0].rowData.OPPPAYH,
		OPPPAYA2:opppayItemg[0].rowData.OPPPAYA2,
		OPPPAYA:opppayItemg[0].rowData.OPPPAYA,
		OPPPAYB:opppayItemg[0].rowData.OPPPAYB,
		OPPPAYM:opppayItemg[0].rowData.OPPPAYM,
		OPPPAYZ:opppayItemg[0].rowData.OPPPAYZ,
		pnamexString:pnamexString,
		planm2Gson:planm2Gson,
	    },
	    methods:{
	
			showmy(){
			    document.getElementById("MYN").textContent=this.MYN;
			    document.getElementById("MYA").textContent=this.MYA;
			    document.getElementById("MYP").textContent=this.MYP;
			    document.getElementById("MYU").textContent=this.MYU;
			    document.getElementById("MYE").textContent=this.MYE;
			    document.getElementById("MYAD").textContent=this.MYAD;
			    document.getElementById("MYE2").textContent=this.MYE2;
			    document.getElementById("MYX").textContent=this.MYX;
			    document.getElementById("MYEMAIL").textContent=this.MYEMAIL;
			    document.getElementById("MYPAYM").textContent=this.MYPAYM;
			    document.getElementById("MYPAYA").textContent=this.MYPAYA;
			    document.getElementById("MYPAYB").textContent=this.MYPAYB;
			    document.getElementById("MYPAYA2").textContent=this.MYPAYA2;
			    document.getElementById("MYPAYE").textContent=this.MYPAYE;
			    document.getElementById("MYPAYH").textContent=this.MYPAYH;
			    document.getElementById("MYPAYZ").textContent=this.MYPAYZ;

				 let m=document.getElementsByName("table")[0].innerHTML;
				this.$alert(m, '', {
				          dangerouslyUseHTMLString: true,
				          showConfirmButton:false,
				        }).catch(action => {
				        
				        });
				
			    },
			    showopp(){
				document.getElementById("OPPE2").textContent=this.OPPE2;
				document.getElementById("OPPU").textContent=this.OPPU;
				document.getElementById("OPPE").textContent=this.OPPE;
				document.getElementById("OPPP").textContent=this.OPPP;
				document.getElementById("OPPA").textContent=this.OPPA;
				document.getElementById("OPPN").textContent=this.OPPN;
				document.getElementById("OPPX").textContent=this.OPPX;
				document.getElementById("OPPAD").textContent=this.OPPAD;
				document.getElementById("OPPMAIL").textContent=this.OPPMAIL;
				document.getElementById("OPPPAYE").textContent=this.OPPPAYE;
				document.getElementById("OPPPAYH").textContent=this.OPPPAYH;
				document.getElementById("OPPPAYA2").textContent=this.OPPPAYA2;
				document.getElementById("OPPPAYA").textContent=this.OPPPAYA;
				document.getElementById("OPPPAYB").textContent=this.OPPPAYB;
				document.getElementById("OPPPAYM").textContent=this.OPPPAYM;
				document.getElementById("OPPPAYZ").textContent=this.OPPPAYZ;

				let m=document.getElementsByName("table")[1].innerHTML;
					this.$alert(m, '', {
					          dangerouslyUseHTMLString: true,
					          showConfirmButton:false,
					        }).catch(action => {
					});
				    },
	    },
	})
	
	
	</script>
		
	<script type="text/javascript">
	var planMain=new Vue({
		el:'#planMain',
		data:{
				items:planm2Gson,
				pnamexString:pnamexString,
				paynames:paynameitemGson,
				classsons:classonitemGson,
				planm2Gson:planm2Gson,
				plan1:plan1,
				lin:plan1.length,
				classfamily:contractListItemGson[0].rowData.PLAN4,
				PLAN2:contractListItemGson[0].rowData.PLAN2,
				PLAN3:contractListItemGson[0].rowData.PLAN3,
				SGMONEY:contractListItemGson[0].rowData.SGMONEY,
				PLANM1:contractListItemGson[0].rowData.PLANM1,
				dialogVisible: false,
				dialogVisible2: false,
				fileList:[],
				list:false,
				allPay:contractListItemGson[0].rowData.CAMOUNT,
				tax:6,
				paypor:0,
			},
		methods:{
			cal(e){
			    console.log(e);
			    this.paypor=this.items[e].paypor;
			    this.dialogVisible2=true;
			    
			},
		    
		    updataPlan(){
			var contractid=contractListItemGson[0].rowData.CONTRACTID;
			var url="UpdataPlan";
			var data="";
			var statu="",
			PLANDATE2="",
			PLANDATE1="",
			PLANM1="",
			sgmoney="",
			st=0,
			n=0;
			
			if (confirm("是否修改计划？")) {
			    for (var i = 0; i < this.items.length; i++) {
				if (this.items[i].statu==0) {
				    st=1;
				    n=i;
				    break;
				}
			    }
			   if (st==1) {
				PLANDATE1=this.items[n].paydate;
				PLANM1=this.items[n].payname;
				paydate=this.pnamexString[n].paydate;
				   planm2=JSON.stringify(this.items);
// 				   console.log(planMain.items[n]);
			   sgmoney=planMain.items[n].paypor;
				
				    data="contractid="+contractid+"&planm2="+planm2	+"&plandate1="+PLANDATE1	+"&planm1="+PLANM1  +"&sgmoney="+sgmoney+"&paydate="+paydate;
				    getPost(data, url);
				}
			    
		        } else {
		            return;// 取消执行时的代码
		        }
			
			function getPost(data, url) {
			    var httpRequest = new XMLHttpRequest(); // 第一步：创建需要的对象
			    httpRequest.open('POST', url, true); // 第二步：打开连接
			    httpRequest.setRequestHeader("Content-type",
				    "application/x-www-form-urlencoded"); // 设置请求头
			    // 注：post方式必须设置请求头（在建立连接后设置请求头）
			    httpRequest.send(data); // 发送请求 将情头体写在send中
			    var json = null;
			    httpRequest.onreadystatechange = function() { // 请求后的回调接口，可将请求成功后要执行的程序写在其中
			    
			     if (httpRequest.readyState == 4 && httpRequest.status == 200) { //  验证请求是否发送成功
				    var json = httpRequest.responseText; // 获取到服务端返回的数据
				    var data=JSON.parse(json);
		 		    console.log(data);
		 		   if (data.statu) {
		 			contractListItemGson=data.contractListItemGson;
		 			planMain.$message({
		 			          message: '修改成功',
		 			          type: 'success'
		 			        });
				    }else {
					planMain.$message.error('修改失败');
				    } 
		 		   planMain.isDisabled();
		 		    
				}
				
			    };
			}
			
		    },
		    
		    isDisabled(){
			for (var i = 0; i < this.lin; i++) {
				if (this.items[i].statu==1) {
				    this.$refs.payname[i].disabled=true;
				    this.$refs.paypor[i].disabled=true;
				    this.$refs.paydate[i].disabled=true;
				}
			}
		    },
		    payOver(i){
			this.dialogVisible = true;
			this.li=i;
// 			this.overList(i);
		    },
		    upd(){
			if (this.list) {
			    let i=this.li;
			    this.fileList=[];
			    this.overList(i);
			    this.dialogVisible=false;
			    this.list=false;
			}else {
			    planMain.$message.error('请上传相关附件,再确认付款!');
			}
			
			},
		    cs(){
			    this.dialogVisible=false;
				},
		    upfile(file){
// 			console.log(file);
		let	contractid=contractListItemGson[0].rowData.CONTRACTID;
// 		console.log(contractid);
			let param = new FormData();
			 param.append("contractid", contractid);
			 param.append("plan1", this.PLANM1);
			 param.append("file", file.file);
			 param.append("contractpicture", file.file.name);
			
			axios({
			    url: '/dxtest/upfile',
	            method: 'post',
	            data: param,
	            enctype: "multipart/form-data",
	            
			}).then((response)=>{
			   
			    if (response.data) {
				 this.$message.success('添加文件成功!');
				this.list=true;
			    }else {
				this.$message.error('有重复文件,添加失败!');
			    }
			}).catch((error)=>{
			    this.$message.error('添加文件失败');
			});
		    },
		    
		    overList(i){
			var contractid=contractListItemGson[0].rowData.CONTRACTID;
			var url="Payover";
			var data="";
			var statu="",
			PLANDATE2="",
			sgmoney="",
			PLANDATE1="",
			PLANM1="";
			
			
			if (confirm("是否确认已付款？")) {
			    this.items[i].statu=1;
			    if (this.items.length-1==i) {
				statu="end";
			    }else {
				PLANDATE2=this.plan1[i+1].paydate;
				PLANDATE1=this.items[i+1].paydate;
				PLANM1=this.items[i+1].payname;
				sgmoney=this.items[i+1].paypor;
				paydate=this.pnamexString[n].paydate;
			    }
			    planm2=JSON.stringify(this.items);
			    data="contractid="+contractid+"&planm2="+planm2	+"&statu="+statu	+"&plandate2="+PLANDATE2	+"&plandate1="+PLANDATE1	+"&planm1="+PLANM1+"&sgmoney="+sgmoney+"&paydate="+paydate;
			    getPost(data, url,i);
		        } else {
		            return;// 取消执行时的代码
		        }
			
			function getPost(data, url,i) {
			    var httpRequest = new XMLHttpRequest(); // 第一步：创建需要的对象
			    httpRequest.open('POST', url, true); // 第二步：打开连接
			    httpRequest.setRequestHeader("Content-type",
				    "application/x-www-form-urlencoded"); // 设置请求头
			    // 注：post方式必须设置请求头（在建立连接后设置请求头）
			    httpRequest.send(data); // 发送请求 将情头体写在send中
			    var json = null;
			    httpRequest.onreadystatechange = function() { // 请求后的回调接口，可将请求成功后要执行的程序写在其中
			    
			     if (httpRequest.readyState == 4 && httpRequest.status == 200) { //  验证请求是否发送成功
				    var json = httpRequest.responseText; // 获取到服务端返回的数据
				    var data=JSON.parse(json);
		 		    console.log(data);
		 		    if (data.statu) {
		 			contractListItemGson=data.contractListItemGson;
				    } else {
					this.items[i].statu=0;
				    }
		 		   planMain.isDisabled();
		 		    
				}
				
			    };
			}
			
		    },
		    
// 		    ---------------------文件上传-----------------
		    handlePreview(file){},
			handleRemove(file, fileList){},
			beforeRemove(file, fileList){},
			updatafile(response, file, fileList){},
			  
//		  ---------------------文件上传-----------------	    
		    
		},
		computed: {
	  	    // 计算属性的 getter
	  	    paypart: function () {
	  	      // `this` 指向 vm 实例
	  	      return (this.allPay*this.paypor/100);
	  	    },
	  	 taxpart: function () {
	  	      // `this` 指向 vm 实例
	  	      return (this.allPay*this.tax/100);
	  	    },
	  	    sumpart: function () {
		  	      // `this` 指向 vm 实例
		  	      var a=this.paypart+this.taxpart;
		  	      return a;
		  	    }
	  	  },
		mounted(){
		    for (var i = 0; i < this.lin; i++) {
			if (this.items[i].statu==1) {
			    this.$refs.payname[i].disabled=true;
			    this.$refs.paypor[i].disabled=true;
			    this.$refs.paydate[i].disabled=true;
			}
		    }
		},
		watch:{
		    
		},
		
		})
	</script>
	
	

</body>
</html> 