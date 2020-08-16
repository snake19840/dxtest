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
	</style>
	
</head>
<body>
<script type="text/javascript">
contractmyItemg=<%=session.getAttribute("contractmyItemg")%>;
mypayItemg=<%=session.getAttribute("mypayItemg")%>;
contractoppItemg=<%=session.getAttribute("contractoppItemg")%>;
opppayItemg=<%=session.getAttribute("opppayItemg")%>;

contractListItemFile=<%=session.getAttribute("contractListItemFile")%>;
contractid="<%=session.getAttribute("contractid")%>";

contractListItemGson=<%=session.getAttribute("contractListItemGson")%>;
contractListItemFileGson=<%=session.getAttribute("contractListItemFileGson")%>;
classflistGson=<%=session.getAttribute("classflistGson")%>;
classonitemGson=<%=session.getAttribute("classonitemGson")%>;
paynameitemGson=<%=session.getAttribute("paynameitemGson")%>;
list1Gson=<%=session.getAttribute("list1Gson")%>;
list2Gson=<%=session.getAttribute("list2Gson")%>;
list3Gson=<%=session.getAttribute("list3Gson")%>;
classflistGson=<%=session.getAttribute("classflistGson")%>;
pnamexString=<%=session.getAttribute("pnamexString")%>;
planm2Gson=<%=session.getAttribute("planm2Gson")%>;

</script>

	<%@include file="TestHeader.jsp" %>
	
		<div id="main" class="container-fluid-full">
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
				<li><a href="TestChakanContract.jsp" >合同查询</a>
				<i class="icon-angle-right"></i>
				</li>
				<li><a href="#" >合同详情</a></li>
			</ul>


		<div  >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>合同详情</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
<!-- 							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a> -->
						</div>
					</div>
					<div class="box-content">
				
						
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
<!-- 							<b style="padding-left: 18%;padding-right: 52px;letter-spacing: 3px;">合同名称</b><input id="contractname" name="contractname" size="16" type="text">  -->
							
							</div>
					
					</div>
				</div><!--/span-->
			
			

		<div  >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>付款详情</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-down"></i></a>
<!-- 							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a> -->
						</div>
					</div>
					<div class="box-content" style="display: block;">
						<table  id="tableP" width=100% border="1">
					<tr>
					      <th style=" text-align: center;font-size: 20px;padding-top: 20px;padding-bottom: 8px;" colspan="6">合同计划</th>
					     
				        </tr>
					
					<tr>
						<th>序号</th>
						<th>付款名称</th>
						<th>付款比例</th>
						<th>付款日期</th>
						<th>计划付款日期</th>
						<th>是否付款</th>
					</tr>
					
					    <tr style="text-align: center;"   v-for="(item,index) in pnamexString" keys="index" >
					     <td>{{index+1}}</td>
					     <td>{{item.payname}}</td>
					     <td>{{item.paypor}}%</td>
					     <td>{{item.paydate}}</td>
					     <td>{{planm2Gson[index].paydate}}</td>
					     <td>{{planm2Gson[index].statu==0? '否':'是'}}</td>
				        </tr>
					    
					    
				      </table>	
<!-- 							<b style="padding-left: 18%;padding-right: 52px;letter-spacing: 3px;">合同名称</b><input id="contractname" name="contractname" size="16" type="text">  -->
							
							</div>
					
					</div>
				</div><!--/span-->
			

			
		<!-- excelButtom	 -->
			

		
			 <div  >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>合同附件</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-down"></i></a>
<!-- 							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a> -->
							
						</div>
					</div>
					
					
					<div class="box-content" style="display: none">
						
							<fieldset>
							  
							 <div class="control-group">
								
								
								  <div class="input-prepend input-append">
<!-- 									<span class="add-on">故障编号</span><input style="width: 120px" id="stno" size="16" type="text"><span class="add-on">开始时间</span> -->
									<input style="width: 120px" id="sdate" size="16" type="date"><span class="add-on">结束时间</span>
									<input style="width: 120px" id="edate" size="16" type="date"><span class="add-on">关键字</span>
									<input style="width: 120px;" id="message" size="16" type="text"><button style="padding: 4px 12px;" class="btn" type="button" onclick="searchlist()" >搜索</button>
								  </div>
								
							  </div>
							  
							</fieldset>
						
					</div>
						
						
						<div class="box-content">
						<form action=""  name="form1" id="form1">
					 <div style="padding-bottom: 20px;padding-top: 20px">
					<b style="padding-left: 25px;padding-right: 52px;letter-spacing: 3px;">附件上传</b>
					<input  id="url" name="url" size="16" type="file">
					<span style="padding-left: 15px;"></span> 
					<div class="controls" style="display: inline;margin-left:20px;margin-bottom: 0px;margin-right: 20px; ">
					<input type="hidden" name="payname1" id="payname1" value="">
					<select style="margin-bottom: 0px;" name="payname" id="payname">
									</select></div>
					<input onclick="return update()" id="upload" type="button" value="上传">
					</div>
					 </form>
						
						
						<table id="table" class="table table-bordered table-striped table-condensed">
							  <thead>
								  <tr>
									  <th>上传时间</th>
									  <th>附件名称</th>
									  <th>时间点</th>
									  <th>附件操作</th> 
									                                          
								  </tr>
								  
								  
							  </thead>   
							  <tbody id="idData">
								
								                                  
							  </tbody>
						 </table>  
						
					
		
						
 <table >
    <tr><td><div id="barcon" name="barcon"></div></td></tr>
  </table>
					
				</div>
				</div>			
			</div>		
	</div>
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
	
		
		
		
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
	

		
		<script type="text/javascript"></script>

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
		

		var	 text
		text += " <option value=\"\">请选择上传时间点</option>";
		for (var i = 0; i < pnamexString.length; i++) {
		    text += "  <option value=\"\">"+pnamexString[i].payname+"</option>";
		}
		document.getElementById("payname").innerHTML = text;
		 
		</script>
		
<!-- 		<script src="myjs/UpDataContract.js"></script> -->
		
<!-- 		<script charset="GBK" type="text/javascript" src="myjs/contractItem.js"></script> -->
		<script type="text/javascript">
		
		 function codeA(a) {
		      var codeA= encodeURIComponent(encodeURIComponent(a));
		       return codeA;
		      }
		
		 function Del(contractpicture) {
			    if (confirm("是否删除？点击确认删除")) {
				
				//确认执行时的代码 
				location.href = "ContractFileDel?contractpicture="+contractpicture;	
				//alert(contractpicture);
			    } else {
				return;//取消执行时的代码
			    }
		}
		
		</script>
		<script type="text/javascript">
		function codeA(a) {
		    var codeA = encodeURIComponent(encodeURIComponent(a));
		    return codeA;
		}
		function searchlist() {
		    var sdate= document.getElementById("sdate").value;
		    var edate= document.getElementById("edate").value;
		    var message= document.getElementById("message").value;
		    message= codeA(message);
			location.href = "ContractSearch?sdate="+sdate+"&edate="+edate+"&message="+message;
		    
		}
		</script>
		
<!-- 		<script src="myjs/UpDataContract.js"></script> -->
		
		 <!-- jquery-fileupload依赖与jquery -->
<script type="text/javascript">
var main=new Vue({
    el:'#main',
    data:{
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

	<script type="text/javascript" charset="utf-8">
// 	console.log(this.listusGson);
	
		function codeA(a) {
		    var codeA = encodeURIComponent(encodeURIComponent(a));
		    return codeA;
		}
		function line2br(text){
		     return text.split("<br />").join(";");
		     }
	
		//listWaringSon=JSON.stringify(listWaringSon);
		var statu="合同开始";
		
		var delpro=listusGson[0].condel;
		var levelapro=listusGson[0].levela;
//   	console.log(delpro);
// 		console.log(levelapro);
		var text="";
 		for (let i in contractListItemFile) {
 		    var contractpicture = contractListItemFile[i]["contractpicture"];
 		   contractpicture1=contractpicture.substr(0,contractpicture.indexOf("."));
 		    var contractid = contractListItemFile[i]["contractid"];
 		    var contractnowdate = contractListItemFile[i]["contractnowdate"];
 		    var plan1 = contractListItemFile[i]["plan1"];
 		   var plan2 = contractListItemFile[i]["plan2"];
 		  var plan3 = contractListItemFile[i]["plan3"];
 		 var plan4 = contractListItemFile[i]["plan4"];
// 		    message=line2br(message);
// 		    if (message.length>70) {
// 			message=message.substr(0,69)+"......";
// 		    }
		    
 		    text += "<tr>";
 		    text += "<td style=\"vertical-align: middle;\">"+contractnowdate+"</td>";
 		    text += "<td style=\"vertical-align: middle;\">"+contractpicture1+"</td>";
 		    text += "<td style=\"vertical-align: middle;\" class=\"center\">"+plan1+"</td>";
 		   text += "<td style=\"vertical-align: middle;\" class=\"center \">";
 		  text += "<a class=\"btn btn-success\" href=\"ContractFileDownload.jsp?contractpicture="+codeA(contractpicture)+"\">";
 		  text += "<i class=\"halflings-icon white download-alt\"></i>  ";
 		  text += "</a>";
if (delpro==1||levelapro==1) {
    text += "<a class=\"btn btn-danger\" href=\"#\" onclick=\"return Del(\'"+codeA(contractpicture)+"\')\">";
	  text += "<i class=\"halflings-icon white trash\"></i> ";
	  text += "</a>"; 
}
 		  text += "</td>";
		    
 		}
// 		console.log(text);
		document.getElementById("idData").innerHTML=text; 
		</script>
		
		<script type="text/javascript">
/**
 * 分页函数
 * pno--起始页数
 * psize--每页显示记录数
 * 分页部分是从真实数据行开始，因而存在加减某个常数，以确定真正的记录数
 * 纯js分页实质是数据行全部加载，通过是否显示属性完成分页功能
 **/
 goPage(1, 5);
function goPage(pno, psize) {
       var itable = document.getElementById("idData");
//        console.log(itable);
    //  var num = itable.rows.length;//表格所有行数(所有记录数)
     var num=itable.getElementsByTagName("tr");
       num=num.length;
//        console.log(num);
       var totalPage = 0;//总页数
       var pageSize = psize;//每页显示行数
       var n1=num / pageSize;
       var n2=parseInt(num / pageSize);
       console.log(n1);
       console.log(n2);
       //总共分几页
       if (n1 > n2) {
             totalPage = n2 + 1;
       } else {
             totalPage = n2;
       }
       var currentPage = pno;//当前页数
       var startRow = (currentPage - 1) * pageSize + 1;//开始显示的行 31
       var endRow = currentPage * pageSize;//结束显示的行  40
       endRow = (endRow > num) ? num : endRow;  //40
//        console.log(endRow);
       //遍历显示数据实现分页
       for (var i = 1; i < (num + 1); i++) {
//           var irow = itable.rows[i - 1];
             var irow =itable.getElementsByTagName("tr")[i-1];
             if (i >= startRow && i <= endRow) {
                    irow.style.display = "";
             } else {
                    irow.style.display = "none";
             }
       }
       var tempStr = "共" + num + "条记录&nbsp;&nbsp;&nbsp; 分" + totalPage + "页&nbsp;&nbsp;&nbsp; 当前第" + currentPage + "页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ";
       if (currentPage > 1) {
             tempStr += "<a href=\"#\" onClick=\"goPage(" + (1) + "," + psize + ")\">首页</a>";
             tempStr += "<a href=\"#\" onClick=\"goPage(" + (currentPage - 1) + "," + psize + ")\"><上一页</a>"
       } else {
             tempStr += "首页";
             tempStr += "<上一页";
       }
       if (currentPage < totalPage) {
             tempStr += "<a href=\"#\" onClick=\"goPage(" + (currentPage + 1) + "," + psize + ")\">下一页></a>";
             tempStr += "<a href=\"#\" onClick=\"goPage(" + (totalPage) + "," + psize + ")\">尾页</a>";
       } else {
             tempStr += "下一页>";
             tempStr += "尾页";
       }
       document.getElementById("barcon").innerHTML = tempStr;
}
</script>
		
<script type="text/javascript">
function update() {
    var a=selecta( document.getElementById("payname"));
   // console.log(a);
    document.getElementById("payname1").value = a;
    if(document.getElementById("url").value==""){
	 alert("请选择一个文件!");
	 return false; 
     }else if (a=="请选择付款名称"||a==null) {
	 alert("请选择一个付款名称!");
    }
    else if (confirm("是否上传？点击确认上传")) {
	//确认执行时的代码    
	form1.enctype="multipart/form-data";
	form1.action="UpDataContractFile";
	form1.method="post";
	form1.submit();
    } else {
	return;//取消执行时的代码
    }
}

function selecta( selectx) {
    var index = selectx.length;
//     console.log(index);
    var s = false;
    var dd = "0";
    for (i = 0; i < index; i++) {
       s = selectx[i].selected;
//     console.log(s);
       if (s) {
           dd = selectx[i].text;
           return dd;
          
       }
    }
}
</script>

</body>
</html> 