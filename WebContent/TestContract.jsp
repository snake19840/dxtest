		<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@page import="java.util.List"%>
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
	
	<script src="myjs/vue.js" charset="GBK"></script>
<script src="myjs/axios.js" charset="GBK"></script>
<script src="node_modules/moment/moment.js" charset="GBK"></script>
<script src="element-ui/lib/index.js"></script>
<link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">
<style type="text/css">

</style>
</head>
<body>
<% String list1Gson=(String)session.getAttribute("list1Gson");
String list2Gson=(String)session.getAttribute("list2Gson");
String list3Gson=(String)session.getAttribute("list3Gson");
// String classflistGson=(String)session.getAttribute("classflistGson");
// System.out.println(classflistGson);
%>

	<%@include file="TestHeader.jsp" %>
	
		<div class="container-fluid-full">
		<div class="row-fluid">
				
			<%@include file="TestMainMenu.jsp" %>
			
			
			<!-- start: Content -->
			<div id="content" class="span10">
			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="ReturnIndex">主页</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">合同录入</a></li>
			</ul>


		<div  id="main">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>合同录入</h2>
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
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;">合同编号</b><input v-model="contractid" id="contractid"  name="contractid" size="16" type="text">
							</div> 
							<div style="width: 50%;float: right;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;">合同名称</b><input id="contractname" v-model="contractname"  name="contractname" size="16" type="text"> 
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


							<div style="margin: 20px 0px;text-align: center;">
							<b style="letter-spacing: 3px;font-size: 25px;">乙方信息</b>
							</div>
							
							<div style="padding-bottom: 10px;width: 100%;">
							<div style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 35px;letter-spacing: 3px;" >供应商单位</b>
							<input  id="oppu" v-model="oppu" @dblclick="showOpp" name="oppunit" size="16" placeholder="请双击选择供应商" autocomplete="off" type="text">
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
							
							
							
							<div style="margin: 20px 0px;text-align: center;">
							<b style="letter-spacing: 3px;font-size: 25px;">甲方信息</b>
							</div>
							
							<div style="padding-bottom: 10px;width: 100%;">
							<div style="width: 50%;float:left;">
							<b style="padding-left: 50px;padding-right: 35px;letter-spacing: 3px;">委托方单位</b>
							<input v-model="myu" id="myu" placeholder="请双击选择委托方单位" @dblclick="showMy" autocomplete="off" name="myu" size="16" type="text">
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
							
							<div style="margin: 20px 0px;text-align: center;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;font-size: 25px;">付款信息</b>
							</div>
							
							<div>
							<div style="padding-bottom: 8px;">
							<div style="letter-spacing: 3px;display: inline;">
<!-- 							<a style="padding-bottom: 12px;text-decoration:none"   href="#" onclick="showClassText('CB_class_t','CB_class_s1')" class="icon-pencil"><i></i></a> -->
							<b style="padding-left: 25px;padding-right: 28px;letter-spacing: 3px;">项目大类</b>
							<input style="display: none;" id="CB_class_t" name="CB_class" size="16" type="text" >
							<select  style="display: inline;" id="CB_class_s1"  v-model="plan4">
							
							<option v-for="(CF,index) in  classfamilys" keys="index" :value="CF.classfamily">{{CF.classfamily}}</option>
 							</select>
 							<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;项目小类</b>
 							<select style="display: inline;" id="classson" name="classson"  v-model="classson" >
							
							<option v-for="item in classsonlistGson" :value="item.rowData.CLASSSON" >{{item.rowData.CLASSSON}}</option>
						    </select>
 							</div>
 							
							</div>
							<div style="padding-bottom: 8px;">
 							<b style="padding-left: 25px;padding-right: 28px;letter-spacing: 3px;">是否为附加合同</b>
 							<select v-model="plan2" style="display: inline;width: 40px;" id="plan2" name="plan2"  >
							<option value="否">否</option>
						    <option value="是">是</option>
						    </select>
						    <div v-if="plan2=='是'" style="padding-left: 25px;display: inline;" id="plan31"><b style="padding-left: 25px;padding-right: 28px;letter-spacing: 3px;">主合同编号</b>
							<input  size="16" type="text" placeholder="请双击选择主合同" v-model="plan3" @dblclick="showMain" id="plan3" ></div>
							</div>
						
							
							<div style="padding-bottom: 8px">
							<b style="padding-left: 25px;padding-right: 33px;letter-spacing: 3px;" >付款金额</b><input v-model="CAMOUNT" name="camount" id="camount" size="16" type="number"><b style="padding-left: 14px">元</b>
							
							</div>
							
							
							<div style="padding-bottom: 8px">
							<b style="padding-left: 25px;padding-right: 33px;letter-spacing: 3px;" >付款次数</b><input v-model="lin" name="lin" id="lin" size="16" type="number">
							&nbsp;&nbsp;<a style="padding-bottom: 16px;"   href="#" @click="show1()" class="glyphicons list"><i></i></a> 
							</div>
							
								<template v-if="isPlanM">
							<div style="padding-top: 8px;">
							<table  width="80%"  align="center">
								<tr>
									<th>
										<b>
											序号
										</b>
									</th>
									<th>
										<b>
											付款名称
										</b>
									</th>
									<th>
										<b>
											付款比例
										</b>
									</th>
									<th>
										<b>
											付款日期
										</b>
									</th>
								</tr>
								<tr v-for="(item,index) in plan1" style="text-align: center;" keys="index">
									<td>
										<b>
											{{index+1}}
										</b>
									</td>
									<td>
										<select style="width:130px;" v-model="item.payname">
											<option v-for="item in classpaylistGson">{{item.rowData.PAYNAME}}
											</option>
										</select>
									</td>
									<td>
										<input style="width: 130px;" type="number" v-model="item.paypor">
										<b style="font-size: 18px;padding-left: 5px;">
											%
										</b>
									</td>
									<td>
										<input style="width: 130px;" type="date" v-model="item.paydate">
									</td>
								</tr>
							</table>
							
							</div>
							</template>
							
						
							<div style="padding-bottom: 8px">
							<b style="padding-left: 25px;padding-right: 33px;letter-spacing: 3px;" >是否添加付款计划</b>
							<input  id="realyPay"   type="checkbox" v-model="isPlan">
							<template v-if="isPlan2">
							<div style="padding-top: 8px;">
							<table  width="80%"  align="center">
								<tr>
									<th>
										<b>
											序号
										</b>
									</th>
									<th>
										<b>
											付款名称
										</b>
									</th>
									<th>
										<b>
											付款比例
										</b>
									</th>
									<th>
										<b>
											付款日期
										</b>
									</th>
									<th>
										<b>
											是否付款
										</b>
									</th>
								</tr>
								<tr  v-for="(item2,index) in planm2" style="text-align: center;">
									<td>
										<b>
											{{index+1}}
										</b>
									</td>
									<td>
										<select style="width:130px;" v-model="item2.payname">
										<option v-for="item in classpaylistGson">{{item.rowData.PAYNAME}}
											</option>
											
										</select>
									</td>
									<td>
										<input style="width: 130px;" type="number" v-model="item2.paypor">
										<b style="font-size: 18px;padding-left: 5px;">
											%
										</b>
									</td>
									<td>
										<input style="width: 130px;" type="date" v-model="item2.paydate">
									</td>
									<td>
										<input style="width: 20px;" type="checkbox" :pay="pay(item2.statu,index)" v-model="item2.statu">
									</td>
								</tr>
							</table>
							
							</div>
							</template>
							</div>
						
						</div>	
<!-- 							payEnd -->
							<div class="form-actions">
								<button type="button" class="btn btn-primary"  @click="upd">提交</button>
								<button type="button" class="btn"  @click="cl2">清空</button>
								<input style="display: none;" ref="reset" type="reset" >
							  </div>
							  
							</fieldset>
						  </form>
						  
					 
					
					</div>
				</div><!--/span-->
			<el-dialog
  
  :visible.sync="dialogVisible1"
  width="70%"
  >
  <div style="overflow-y:auto;">
			<div class="span6"><div class="dataTables_filter" >
			<label>搜索: <input v-model="search1" type="text" id="searchBox1" name="searchBox1" ></label></div>
			</div>
						<table class="table table-bordered table-striped table-condensed">
								  <tr>
									  <th>供应商单位</th>
									  <th>法人代表</th>
									  <th>项目联系人</th>
									  <th>统一社会信用码</th>
									  <th>选择</th>                                          
								  </tr>
						
								<tr v-for="(item,index) in list1Gson" keys="index">
								<td>{{item.oppu}}</td>
								<td style="min-width: 70px;">{{item.oppp}}</td>
								<td style="min-width: 70px;">{{item.oppn}}</td>
								<td>{{item.opppaym}}</td>
								<td style="min-width: 53px;"><button style="min-width: 23px;" @click="sel(item.oppid)" class="label label-success">选择</button></td>
								</tr>
					
						 </table> 
						 <div>
						   <el-pagination
						   @current-change="handleCurrentChange1"
						  small
						  layout="prev, pager, next"
						  :page-size="pageSize"
						  :total="total">
						</el-pagination>	
						 </div>
  </div>
  
  
</el-dialog>

<el-dialog
 
  :visible.sync="dialogVisible2"
  width="70%"
  >
  <div style="overflow-y:auto;">
  <div  class="box-content">
			<div class="span6"><div class="dataTables_filter" >
			<label>搜索: <input v-model="search2"  type="text" id="searchBox2" name="searchBox2" ></label></div>
			</div>
						<table class="table table-bordered table-striped table-condensed">
								  <tr>
									  <th>委托方单位</th>
									  <th>法人代表</th>
									  <th>项目联系人</th>
									  <th>统一社会信用码</th>
									  <th>选择</th>                                          
								  </tr>
							  
								<tr v-for="(item,index) in list2Gson" keys="index">
								<td>{{item.myu}}</td>
								<td style="min-width: 70px;">{{item.myp}}</td>
								<td style="min-width: 70px;">{{item.myn}}</td>
								<td>{{item.mypaym}}</td>
								<td style="min-width: 53px;"><button style="min-width: 23px;" @click="sel2(item.myid)" class="label label-success">选择</button></td>
								</tr>
								
						 </table> 
						   <div>
						   <el-pagination
						   @current-change="handleCurrentChange2"
						  small
						  layout="prev, pager, next"
						  :page-size="pageSize"
						  :total="total2">
						</el-pagination>	
						 </div>
					</div>
  </div>

</el-dialog>

<el-dialog
  
  :visible.sync="dialogVisible3"
  width="70%"
  >
 <div style="overflow-y:auto;">
  <div  class="box-content">
			<div class="span6"><div class="dataTables_filter" >
			<label>搜索: <input v-model="search3" type="text" id="searchBox3" name="searchBox3" ></label></div>
			</div>
						<table class="table table-bordered table-striped table-condensed">
								  <tr>
									  <th>合同编号</th>
									  <th>合同名称</th>
									  <th>乙方法人</th>
									  <th>乙方项目联系人</th>
									  <th>项目金额</th>
									  <th>选择</th>                                          
								  </tr>
							  
								<tr v-for="(item,index) in list3Gson" keys="index">
								<td>{{item.contractid}}</td>
								<td style="max-width: 350px;">{{item.contractname}}</td>
								<td style="min-width: 70px;">{{item.oppp}}</td>
								<td style="min-width: 70px;">{{item.oppn}}</td>
								<td style="min-width: 70px;">{{item.camount}}</td>
								<td style="min-width: 53px;"><button style="min-width: 23px;" @click="sel3(item.contractid)" class="label label-success">选择</button></td>
								</tr>
								
						 </table> 
						  <div>
						   <el-pagination
						   @current-change="handleCurrentChange3"
						  small
						  layout="prev, pager, next"
						  :page-size="pageSize"
						  :total="total3">
						</el-pagination>	
						 </div>
						  
					</div>
  </div>
</el-dialog>
			</div><!--/row-->

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
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
list1Gson=<%=list1Gson%>;
list2Gson=<%=list2Gson%>;
list3Gson=<%=list3Gson%>;
classflistGson=<%=session.getAttribute("classflistGson")%>;
classsonlistGson=<%=session.getAttribute("classsonlistGson")%>;
classpaylistGson=<%=session.getAttribute("classpaylistGson")%>;

contractoppGson=<%=session.getAttribute("contractoppGson")%>;
opppayGson=<%=session.getAttribute("opppayGson")%>;
contractmyGson=<%=session.getAttribute("contractmyGson")%>;
mypayGson=<%=session.getAttribute("mypayGson")%>;

</script>
<script type="text/javascript">



var vm=new Vue({
    el:'#main',
    data:{
	isPlan:false,
	isPlan2:false,
	plan1:[],
	plan4:'0',
	planm2:[],
	classfamilys:classflistGson,
	classsonlistGson:[],
	classpaylistGson:[],
	classfamily:'0',
	classson:'',
	planpay:'0',
	planpays:[],
	lin:'0',
	isPlanM:false,
	contractid:'',
	contractname:'',
	oppunit:'',
	markdate:'',
	contractnlife:'',
	myname:'',
	oppname:'',
	statu:'',
	CAMOUNT:'',
	plan2:'否',
	plan3:'',
	plan4:'',
	PLANDATE2:'',
	PLANDATE1:'',
	PLANM1:'',
	oppid:'',
	myid:'',
	classson:'',
	oppu:'',
	oppp:'',
	oppa:'',
	oppn:'',
	oppe:'',
	oppx:'',
	oppmail:'',
	oppe2:'',
	oppad:'',
	opppayb:'',
	opppaya:'',
	opppayz:'',
	opppayh:'',
	opppaye:'',
	opppaya2:'',
	opppaym:'',
	myu:'',
	mya:'',
	myp:'',
	myn:'',
	mye:'',
	myad:'',
	mye2:'',
	myx:'',
	myemail:'',
	mypayb:'',
	mypaya:'',
	mypayz:'',
	mypayh:'',
	mypaye:'',
	mypaya2:'',
	mypaym:'',
	dialogVisible1:false,
	dialogVisible2:false,
	dialogVisible3:false,
	list1Gson:list1Gson,
	list2Gson:list2Gson,
	list3Gson:list3Gson,
	list1GsonT:list1Gson,
	list2GsonT:list2Gson,
	list3GsonT:list3Gson,
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
    },
    methods:{
	pay(e,n){
	    if (e==0||e==false||e=="undefined") {
		return this.planm2[n].statu=0;
	    }else {
		return this.planm2[n].statu=1;
	    }  
	},
	
	cl2(){
	  this.$confirm('此操作将清空表单, 是否继续?', '提示', {
	          confirmButtonText: '确定',
	          cancelButtonText: '取消',
	          type: 'warning'
	        }).then(() => {
	            this.$refs.reset.click();
	          this.$message({
	            type: 'success',
	            message: '清空成功!'
	          });
	        }).catch(() => {
	          this.$message({
	            type: 'info',
	            message: '已取消清空'
	          });          
	        });
	  
	},
	upd(){
	    
	    this.$confirm('是否提交表单, 是否继续?', '提示', {
	          confirmButtonText: '确定',
	          cancelButtonText: '取消',
	          type: 'warning'
	        }).then(() => {
	            this.upd1();
// 	          this.$message({
// 	            type: 'success',
// 	            message: '表单提交成功!'
// 	          });
// 	          this.$refs.reset.click();
	        }).catch(() => {
	          this.$message({
	            type: 'info',
	            message: '请填写完整'
	          });          
	        });
	},
	
	upd1(){
	    if (this.planm2.length==0) {
		this.planm2=this.plan1;
	    }
	    let plan1= JSON.stringify(this.plan1),
	    planm2=JSON.stringify(this.planm2),
	    plandate2='',
	    plandate1='',
	    n=0,
	    planm1='';
	   
	    for (var i = 0; i < this.lin; i++) {
		if (this.planm2[i].statu==0) {
		    n=1;
		    plandate2=this.plan1[i].paydate;
		    plandate1=this.planm2[i].paydate;
		    planm1=this.planm2[i].payname;
		    sgmoney=this.planm2[i].paypor;
		    break;
		}
	    }
	    if (n!=1) {
		this.statu="end";
	    }
	    this.oppunit=this.oppu;
// 	    console.log(this.contractid);
// 	    console.log(this.contractname);
// 	    console.log(this.oppunit);
// 	    console.log(this.markdate);
// 	    console.log(this.contractnlife);
// 	    console.log(this.myname);
// 	    console.log(this.oppname);
// 	    console.log(this.CAMOUNT);
// 	    console.log(this.plan2);
// 	    console.log(this.plan4);
// 	    console.log(this.plandate2);
// 	    console.log(this.plandate1);
// 	    console.log(this.planm1);
// 	    console.log(this.classson);
// 	    console.log(this.oppu);
// 	    console.log(this.oppp);
// 	    console.log(this.oppa);
// 	    console.log(this.oppn);
// 	    console.log(this.oppe);
// 	    console.log(this.oppx);
// 	    console.log(this.oppmail);
// 	    console.log(this.oppe2);
// 	    console.log(this.oppad);
// 	    console.log(this.opppayb);
// 	    console.log(this.opppaya);
// 	    console.log(this.opppayz);
// 	    console.log(this.opppayh);
// 	    console.log(this.opppaye);
// 	    console.log(this.opppaya2);
// 	    console.log(this.opppaym);
// 	    console.log(this.myu);
// 	    console.log(this.mya);
// 	    console.log(this.myp);
// 	    console.log(this.myn);
// 	    console.log(this.mye);
// 	    console.log(this.myad);
// 	    console.log(this.mye2);
// 	    console.log(this.myx);
// 	    console.log(this.myemail);
// 	    console.log(this.mypayb);
// 	    console.log(this.mypaya);
// 	    console.log(this.mypayz);
// 	    console.log(this.mypayh);
// 	    console.log(this.mypaye);
// 	    console.log(this.mypaya2);
// 	    console.log(this.mypaym);
// 	    console.log(this.plan1);
// 	    console.log(this.planm2);

	    if (this.contractid==''||	this.contractname==''||	this.oppunit==''||	this.markdate==''||	this.contractnlife==''||	this.myname==''||	this.oppname==''||	this.CAMOUNT==''||	this.plan2==''||	this.plan4==''||	this.plandate2==''||	this.plandate1==''||	this.planm1==''||	this.classson==''||	this.oppu==''||	this.oppp==''||	this.oppa==''||	this.oppn==''||	this.oppe==''||	this.oppx==''||	this.oppmail==''||	this.oppe2==''||	this.oppad==''||	this.opppayb==''||	this.opppaya==''||	this.opppayz==''||	this.opppayh==''||	this.opppaye==''||	this.opppaya2==''||	this.opppaym==''||	this.myu==''||	this.mya==''||	this.myp==''||	this.myn==''||	this.mye==''||	this.myad==''||	this.mye2==''||	this.myx==''||	this.myemail==''||	this.mypayb==''||	this.mypaya==''||	this.mypayz==''||	this.mypayh==''||	this.mypaye==''||	this.mypaya2==''||	this.mypaym==''||	this.plan1==''||	this.planm2=='') {
		this.$message({
	            type: 'info',
	            message: '请填写完整'
	          });
		return;
	    }
	    
	    axios({
                url: '/dxtest/UpDataContract4',
                   method: 'post',
                   data: {
                       "contractid":this.contractid,
                       "contractname":this.contractname,
                       "oppunit":this.oppu,
                       "markdate":this.markdate,
                       "contractnlife":this.contractnlife,
                       "myname":this.myname,
                       "oppname":this.oppname,
                       "oppunit":this.oppunit,
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
                   },
                   enctype:'application/json',
             }).then((response)=>{
                console.log(response.data.WarningGsons);
                 if (response.data.statu) {
                     this.$message({
     	            type: 'success',
     	            message: response.data.WarningGsons
     	          });
                     this.$refs.reset.click();
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
	
	sel(n){
	    this.dialogVisible1=false;
	    let items=contractoppGson,
	    idx=n,
	    name="OPPID";
	  let opp1= this.FT(items,idx,name); 
	  items=opppayGson,
	    name="OPPPAYID";
	  let opp2= this.FT(items,idx,name); 
	  this.oppu=opp1[0].rowData.OPPU;
	  this.oppp=opp1[0].rowData.OPPP;
	  this.oppa=opp1[0].rowData.OPPA;
	  this.oppn=opp1[0].rowData.OPPN;
	  this.oppe=opp1[0].rowData.OPPE;
	  this.oppx=opp1[0].rowData.OPPX;
	  this.oppmail=opp1[0].rowData.OPPMAIL;
	  this.oppe2=opp1[0].rowData.OPPE2;
	  this.oppad=opp1[0].rowData.OPPAD;
	  this.opppayb=opp2[0].rowData.OPPPAYB;
	  this.opppaya=opp2[0].rowData.OPPPAYA;
	  this.opppayz=opp2[0].rowData.OPPPAYZ;
	  this.opppayh=opp2[0].rowData.OPPPAYH;
	  this.opppaye=opp2[0].rowData.OPPPAYE;
	  this.opppaya2=opp2[0].rowData.OPPPAYA2;
	  this.opppaym=opp2[0].rowData.OPPPAYM;
	  this.oppid=opp1[0].rowData.OPPID;

	},
	sel2(n){
	    this.dialogVisible2=false;
	    let items=contractmyGson,
	    idx=n,
	    name="MYID";
	  let my1= this.FT(items,idx,name); 
	  items=mypayGson,
	    name="MYPAYID";
	  let my2= this.FT(items,idx,name); 
	  this.myu=my1[0].rowData.MYU;
	  this.mya=my1[0].rowData.MYA;
	  this.myp=my1[0].rowData.MYP;
	  this.myn=my1[0].rowData.MYN;
	  this.mye=my1[0].rowData.MYE;
	  this.myad=my1[0].rowData.MYAD;
	  this.mye2=my1[0].rowData.MYE2;
	  this.myx=my1[0].rowData.MYX;
	  this.myemail=my1[0].rowData.MYEMAIL;
	  this.mypayb=my2[0].rowData.MYPAYB;
	  this.mypaya=my2[0].rowData.MYPAYA;
	  this.mypayz=my2[0].rowData.MYPAYZ;
	  this.mypayh=my2[0].rowData.MYPAYH;
	  this.mypaye=my2[0].rowData.MYPAYE;
	  this.mypaya2=my2[0].rowData.MYPAYA2;
	  this.mypaym=my2[0].rowData.MYPAYM;
	  this.myid=my1[0].rowData.MYID;

	},
	sel3(n){
	    this.dialogVisible3=false;
	  this.plan3=n;
	},
	       dataShow(items){
// 	           console.log(items);
//	         console.log(this.WarningGsons.length);
// 	         console.log(this.pageSize);
	         //如果没有这句代码，select中初始化会是空白的，默认选中就无法实现
	               this.pageNum= Math.ceil(items.length/this.pageSize)||1;
	             for (let i = 0; i < this.pageNum; i++) {
	                   // 每一页都是一个数组 形如 [['第一页的数据'],['第二页的数据'],['第三页数据']]
	                   // 根据每页显示数量 将后台的数据分割到 每一页,假设pageSize为5，  则第一页是1-5(对slice操作来说是0-5)条，第二页是6-10(对slice操作来说是5-10)条...
	                   this.totalPage[i] = items.slice(this.pageSize * i,  this.pageSize * (i + 1));
	                 }
	          // 当前显示的内容
// 	        console.log(this.currentPage);
// 	        console.log(this.totalPage[this.currentPage]);
	          return  this.totalPage[this.currentPage];
	},
	handleCurrentChange1(val){
	    
	    this.currentPage=val-1;
	    this.total=this.list1GsonT.length;
	    let items=this.list1GsonT;
	    this.list1Gson= this.dataShow(items);
	    
// 	    this.list1Gson=this.totalPage[this.currentPage];
// 	    this.list2Gson=this.totalPage[this.currentPage];
// 	    this.list3Gson=this.totalPage[this.currentPage];
	},
	handleCurrentChange2(val){
	    this.currentPage=val-1;
	     this.total2=this.list2GsonT.length;
	    let items=this.list2GsonT;
	    this.list2Gson= this.dataShow(items);
	  
// 	    this.list1Gson=this.totalPage[this.currentPage];
// 	    this.list2Gson=this.totalPage[this.currentPage];
// 	    this.list3Gson=this.totalPage[this.currentPage];
	},
	handleCurrentChange3(val){
	    this.currentPage=val-1;
	    this.total3=this.list3GsonT.length;
	    let items=this.list3GsonT;
	    this.list3Gson= this.dataShow(items);
// 	    this.list1Gson=this.totalPage[this.currentPage];
// 	    this.list2Gson=this.totalPage[this.currentPage];
// 	    this.list3Gson=this.totalPage[this.currentPage];
	},
	FT(items,idx,name){
	    if ( idx!=""){
		items=items.filter(temp=>{
			return (temp['rowData'][name]==idx);
		    });
	    }
	    return items;
	},
	s1(n){
	    this.list1Gson=list1Gson;
	    if ( n!=""){
		 this.list1Gson=this.list1Gson.filter(temp=>{
			return (temp['oppu'].toLowerCase().includes(n.toLowerCase())||
				temp['oppn'].toLowerCase().includes(n.toLowerCase())||
				temp['oppp'].toLowerCase().includes(n.toLowerCase())||
				temp['opppaym'].toLowerCase().includes(n.toLowerCase()));
		    });
	    }
	 
	    this.total=this.list1Gson.length;
	    this.list1GsonT=this.list1Gson;
	    let items=this.list1Gson;
	    this.list1Gson= this.dataShow(items);
	},
	s2(n){
	    this.list2Gson=list2Gson;
	    if ( n!=""){
		 this.list2Gson=this.list2Gson.filter(temp=>{
			return (temp['myu'].toLowerCase().includes(n.toLowerCase())||
				temp['myn'].toLowerCase().includes(n.toLowerCase())||
				temp['myp'].toLowerCase().includes(n.toLowerCase())||
				temp['mypaym'].toLowerCase().includes(n.toLowerCase()));
		    });
	    }
	 
	    this.total2=this.list2Gson.length;
	    let items=this.list2Gson;
	    this.dataShow(items);
	},
	
	s3(n){
	    this.list3Gson=list3Gson;
	    if ( n!=""){
		 this.list3Gson=this.list3Gson.filter(temp=>{
			return (temp['contractid'].toLowerCase().includes(n.toLowerCase())||
				temp['contractname'].toLowerCase().includes(n.toLowerCase())||
				temp['camount'].toLowerCase().includes(n.toLowerCase())||
				temp['oppp'].toLowerCase().includes(n.toLowerCase())||
				temp['oppn'].toLowerCase().includes(n.toLowerCase()));
		    });
	    }
	    
	    this.total3=this.list3Gson.length;
	    let items=this.list3Gson;
	    this.dataShow(items);
	},
	
	showOpp(){
	    console.log(1);
	    this.dialogVisible1=true;
	},
	showMy(){
	    console.log(2);
	    this.dialogVisible2=true;
	},
	showMain(){
	    console.log(3);
	    this.dialogVisible3=true;
	},
	shaixuan(n){
	    console.log(n);
	    this.classsonlistGson = classsonlistGson;
	    if ((n!=0) && (n!="")) {
	            this.classsonlistGson = this.classsonlistGson.filter(temp=>{
	               return temp['rowData']['CLASSFAMILY']==n ;
	            });
	         }else {
	             this.classsonlistGson=[];
		}
	    this.classpaylistGson = classpaylistGson; 
	    if ((n!=0) && (n!="")) {
		 this.classpaylistGson =  this.classpaylistGson.filter(temp=>{
	               return temp['rowData']['CLASSFAMILY']==n ;
	            });
	         }else {
	             this.classpaylistGson=[];
		}
	},
    },
    watch: {
		lin:function(n,o){
		    console.log(n);
		    let arr=[],
		    payname='请选择付款名称',
		    paypor='',
		    paydate='';
		    
		    this.plan1=arr;
		    if (n>0&&n<=10) {
			for (var i = 0; i < n; i++) {
				let obj=new Object();
				obj.payname=payname;
				obj.paypor=paypor;
				obj.paydate=paydate;
				obj.statu="0";
				arr.push(obj);
			    }
			this.isPlanM=true;
		    }else {
			this.$notify.error({
                    title: '错误',
                    message: `请输入1~10以内的数字`,
                        duration:1500
                  });
		    }
		    
		},
		
		plan4:function(n,o){
		this.shaixuan(n);
		},
		search1:function(n,o){
		    this.s1(n);
		},
		search2:function(n,o){
		    this.s2(n); 
		},
		search3:function(n,o){
		    this.s3(n); 
		},
		
		isPlan:function(n,o){
		    let p=this.plan1;
		   if (n) {
		    if (this.lin>0) {
			this.planm2=p;
			this.isPlan2=true;
		    }else {
			this.$notify.error({
                            title: '错误',
                            message: `输入付款次数`,
                                duration:1500
                          });
		    }
		}else {
		    this.planm2=[];
		    this.isPlan2=false;
		}
		},
		
    },
    mounted(){
	let items=list1Gson;
	this.list1Gson=this.dataShow(items);
	items=list2Gson;
	this.list2Gson=this.dataShow(items);
	items=list3Gson;
	this.list3Gson=this.dataShow(items);
	
    },
    
})		

</script>
		
<!-- 		<script charset="GBK" type="text/javascript" src="myjs/contractEdit.js"></script> -->
<!-- 		<script charset="GBK" type="text/javascript" src="myjs/Testform/searchBox.js"></script> -->
<!-- 		<script charset="GBK" type="text/javascript" src="myjs/Pagtr.js"></script> -->
<!-- 		llllllll -->
<!-- 		<script src="myjs/UpDataContract.js"></script> -->
		 <!-- jquery-fileupload依赖与jquery -->


</body>
</html> 