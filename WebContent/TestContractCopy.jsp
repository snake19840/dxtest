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
	<style> 
.flex-container {
    display: -webkit-flex;
    display: flex;
    -webkit-justify-content: space-between;
    justify-content: space-between;
    width: 98%;
    height: 50px;
    background-color: #ebeef5;
    padding-left: 20px;
}

.flex-container-table {
	text-align:center;
    display: -webkit-flex;
    display: flex;
    -webkit-justify-content: space-between;
    justify-content: space-between;
    width: 98%;
/*     height: 50px; */
    background-color: #ebeef5;
    padding-left: 20px;
    overflow: auto;
}
table{
margin: auto;
}
.flex-item1 {
    background-color: rgba(255, 255, 255, 0);
    width: 100px;
    height: 30px;
    margin: 10px 0px;
    margin-left: 10px;
    overflow: hidden;
	text-overflow:ellipsis;
	white-space: nowrap;
	padding-left: 5px;
	line-height: 30px;
    
}
.flex-item2 {
    background-color: rgba(255, 255, 255, 0);
    width: 36%;
    height: 30px;
    margin: 10px 0px;
    margin-right: 10px;
    text-overflow: ellipsis;
    padding-left: 5px;
    line-height: 30px;
}
.flex-input{
width: 90%;
}
.flex-heard{
text-align: center;
font-size: 25px;
margin: 10px;
}
.button-chage{
height: 10px;
    margin: 0px 22px;
    line-height: 10px;
    margin-right: 0px;
}
div.checker span {
    margin-top: 10px;
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
<script src="myjs/vue.js" charset="GBK"></script>
<script src="myjs/axios.js" charset="GBK"></script>
<script src="node_modules/moment/moment.js" charset="GBK"></script>
<script src="element-ui/lib/index.js"></script>
<link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">
<script type="text/javascript">
contractListItemGson=<%=session.getAttribute("contractListItemGson")%>;
contractListItemFileGson=<%=session.getAttribute("contractListItemFileGson")%>;
classonitemGson=<%=session.getAttribute("classonitemGson")%>;
paynameitemGson=<%=session.getAttribute("paynameitemGson")%>
list1Gson=<%=session.getAttribute("list1Gson")%>;
list2Gson=<%=session.getAttribute("list2Gson")%>;
list3Gson=<%=session.getAttribute("list3Gson")%>;
classflistGson=<%=session.getAttribute("classflistGson")%>;
contractListItemFile=<%=session.getAttribute("contractListItemFile")%>;
contractid="<%=session.getAttribute("contractid")%>";
classflistGson=<%=session.getAttribute("classflistGson")%>;
contClassGson=<%=session.getAttribute("contClassGson")%>;
contractPayGson=<%=session.getAttribute("contractPayGson")%>;


</script>
	
	
</head>
<body>


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
				<li><a href="TestChakanContract.jsp" >合同查询</a>
				<i class="icon-angle-right"></i>
				</li>
				<li><a href="#" >合同复制</a></li>
			</ul>


		<div  id="main">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>合同编辑</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
<!-- 							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a> -->
						</div>
					</div>
					
					
					<div class="box-content">
		<div class="flex-heard" ><b>合同信息</b></div>
			<div class="flex-container">
  <div class="flex-item1">合同类型</div>
  <div class="flex-item2">
  <select class="flex-input" v-model="classFamily" @change="getClassFamily">
  <option v-for="(cf,index) in classflistGson" keys="index" :value="cf.classfamily">{{cf.classfamily}}</option>
  </select>
  </div>
  <div class="flex-item1">合同小类</div>  
  <div class="flex-item2">
   <select class="flex-input" v-model="classSon" @change="getClassSon">
   <option v-for="(cs,index) in subcontents" keys="index" :value="cs.rowData.CLASSSON">{{cs.rowData.CLASSSON}}</option>
   </select>
  </div>
</div>
		<div class="flex-container">
  <div class="flex-item1">合同编号</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="contractid"></div>
  <div class="flex-item1">合同名称</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="contractname"></div>
</div>
	<div class="flex-container">
  <div class="flex-item1">合同签订日期</div>
  <div class="flex-item2"><input class="flex-input" value="" type="date" v-model="markdate"></div>
  <div class="flex-item1">合同有效日期</div>  
  <div class="flex-item2"><input class="flex-input" value="" type="date" v-model="contractnlife"></div>
</div>
	<div class="flex-container">
  <div class="flex-item1">甲方签署人</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="myname"></div>
  <div class="flex-item1">乙方签署人</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="oppname"></div>
</div>


<div class="flex-container">
  <div class="flex-item1">是否附加合同</div>
  <div class="flex-item2"><input type="checkbox" :p2="p2(plan2)"  v-model="isPlan2"></div>
  <template v-if="isPlan2">
 <div class="flex-item1">主合同编号</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="plan3"></div>
 </template>
<template v-else>
  <div class="flex-item1"> </div>
  <div class="flex-item2"> </div>
</template>
</div>



<div class="flex-heard"><b>乙方信息</b></div>
<div class="flex-container">
  <div class="flex-item1">供应商单位</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="oppu"></div>
  <div class="flex-item1">供应商地址</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="oppa"></div>
</div>
<div class="flex-container">
  <div class="flex-item1">法定代表人</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="oppp"></div>
  <div class="flex-item1">项目联系人</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="oppn"></div>
</div>
<div class="flex-container">
  <div class="flex-item1">联系方式</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="oppe"></div>
  <div class="flex-item1">通讯地址</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="oppad"></div>
</div>
<div class="flex-container">
  <div class="flex-item1">电话</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="oppe2"></div>
  <div class="flex-item1">传真</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="oppx"></div>
</div>
<div class="flex-container">
  <div class="flex-item1">电子邮箱</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="oppmail"></div>
  <div class="flex-item1">开户行</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="opppayb"></div>
</div>
<div class="flex-container">
  <div class="flex-item1">银行地址</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="opppaya"></div>
  <div class="flex-item1">户名</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="opppayh"></div>
</div>
<div class="flex-container">
  <div class="flex-item1">帐号</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="opppayz"></div>
  <div class="flex-item1">电话</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="opppaye"></div>
</div>
<div class="flex-container">
  <div class="flex-item1">地址</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="opppaya2"></div>
  <div class="flex-item1" title="统一社会信用码">统一社会信用码</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="opppaym"></div>
</div>
	
<div class="flex-heard"><b>甲方信息</b></div>
<div class="flex-container">
  <div class="flex-item1">甲方单位</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="myu"></div>
  <div class="flex-item1">甲方地址</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="mya"></div>
</div>
<div class="flex-container">
  <div class="flex-item1">法定代表人</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="myp"></div>
  <div class="flex-item1">项目联系人</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="myn"></div>
</div>
<div class="flex-container">
  <div class="flex-item1">联系方式</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="mye"></div>
  <div class="flex-item1">通讯地址</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="myad"></div>
</div>
<div class="flex-container">
  <div class="flex-item1">电话</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="mye2"></div>
  <div class="flex-item1">传真</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="myx"></div>
</div>
<div class="flex-container">
  <div class="flex-item1">电子邮箱</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="myemail"></div>
  <div class="flex-item1">开户行</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="mypayb"></div>
</div>
<div class="flex-container">
  <div class="flex-item1">银行地址</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="mypaya"></div>
  <div class="flex-item1">户名</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="mypayh"></div>
</div>
<div class="flex-container">
  <div class="flex-item1">帐号</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="mypayz"></div>
  <div class="flex-item1">电话</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="mypaye"></div>
</div>
<div class="flex-container">
  <div class="flex-item1">地址</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="mypaya2"></div>
  <div class="flex-item1" title="统一社会信用码">统一社会信用码</div>  
  <div class="flex-item2"><input class="flex-input" value="12" type="text" v-model="mypaym"></div>
</div>

	<div class="flex-heard"><b>合同计划</b></div>
	<div class="flex-container">
  <div class="flex-item1"><b>原合同计划:</b></div><br>
</div>	
<div class="flex-container">
  <div class="flex-item1">付款金额/元</div>
  <div class="flex-item2"><input class="flex-input" value="12" type="number" v-model="camount"></div>
  <div class="flex-item1" title="统一社会信用码">付款次数</div>  
  <div class="flex-item2"><b>{{count}}</b><button class="button-chage" @click="reduce">-</button> <button class="button-chage" @click="add">+</button></div>
</div>


	<div class="flex-container-table">
  <table >
  <tr>
  	<th ><b>付款名称</b></th>
  	<th ><b>付款比例</b></th>
  	<th ><b>计划付款时间</b></th>
  </tr>
  <tr v-for="(plan1,index) in plans1" keys="index">
  <td >
 <select style="width: 200px;" class="flex-input" v-model="plan1.payname" @change="getClassPay">
   <option v-for="(cp,index) in subcontents2" keys="index" :value="cp.rowData.PAYNAME">{{cp.rowData.PAYNAME}}</option>
   </select>
</td>
   <td ><input style="width: 100px;margin-left: 10px;" type="number" v-model="plan1.paypor"><b style="font-size: 18px;margin-right: 10px;">%</b></td>
    <td ><input type="date" v-model="plan1.paydate"></td>
  </tr>

 
  </table>
</div>		 

<div class="flex-container">
  <div class="flex-item1" style="width: 165px;"><b>是否添加实际付款情况</b></div>
    <div class="flex-item2"><input type="checkbox" v-model="isPlanm2" ></div>
      <div class="flex-item1"></div>
    <div class="flex-item2"></div>
</div>


<div v-if="isPlanm2">
<div class="flex-container">
  <div class="flex-item1"><b>实际付款情况:</b></div><br>
</div>	



	<div class="flex-container-table">
  <table >
  <tr>
  	<th ><b>付款名称</b></th>
  	<th ><b>付款比例</b></th>
  	<th ><b>计划付款时间</b></th>
  	<th ><b style="margin-left: 10px;">是否付款</b></th>
  </tr>
  <tr v-for="(planm2,index) in planms2" keys="index">
  <td >
 <select style="width: 200px;" class="flex-input" v-model="planm2.payname" @change="getClassPay" >
   <option v-for="(cp,index) in subcontents2" keys="index" :value="cp.rowData.PAYNAME">{{cp.rowData.PAYNAME}}</option>
   </select>
</td>
   <td ><input style="width: 100px;margin-left: 10px;" type="number" v-model="planm2.paypor" ><b style="font-size: 18px;margin-right: 10px;">%</b></td>
    <td ><input type="date" v-model="planm2.paydate" ></td>
     <td ><input type="checkbox" :pstatu="pst(planm2.statu,index)" v-model="planm2.statu" ></td>
</tr>

 
  </table>
</div>	

</div>

<div style="margin: 20px 20px;text-align: center;"><button @click="addContract">添加新合同</button></div>

					
					</div>
				</div><!--/span-->
			
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
	
	<script type="text/javascript">
	var vue=new Vue({
	    el:'#main',
	    data:{
		isPlan2:false,
		planm2_statu:false,
		isPlanm2:false,
		contractListItemGson:contractListItemGson,
		classflistGson:classflistGson,
		classFamily:'',
		classSon:'',
		subcontents:contClassGson,
		subcontents2:contractPayGson,
		contractid:contractListItemGson[0].contractid,
		contractname:contractListItemGson[0].contractname,
		oppunit:contractListItemGson[0].oppunit,
		markdate:contractListItemGson[0].markdate,
		contractnlife:contractListItemGson[0].contractnlife,
		myname:contractListItemGson[0].myname,
		oppname:contractListItemGson[0].oppname,
		oppu:contractListItemGson[0].oppu,
		oppp:contractListItemGson[0].oppp,
		oppa:contractListItemGson[0].oppa,
		oppn:contractListItemGson[0].oppn,
		oppe:contractListItemGson[0].oppe,
		oppx:contractListItemGson[0].oppx,
		oppmail:contractListItemGson[0].oppmail,
		oppe2:contractListItemGson[0].oppe2,
		oppad:contractListItemGson[0].oppad,
		opppayb:contractListItemGson[0].opppayb,
		opppaya:contractListItemGson[0].opppaya,
		opppayz:contractListItemGson[0].opppayz,
		opppayh:contractListItemGson[0].opppayh,
		opppaye:contractListItemGson[0].opppaye,
		opppaya2:contractListItemGson[0].opppaya2,
		opppaym:contractListItemGson[0].opppaym,
		myu:contractListItemGson[0].myu,
		mya:contractListItemGson[0].mya,
		myp:contractListItemGson[0].myp,
		myn:contractListItemGson[0].myn,
		mye:contractListItemGson[0].mye,
		myad:contractListItemGson[0].myad,
		mye2:contractListItemGson[0].mye2,
		myx:contractListItemGson[0].myx,
		myemail:contractListItemGson[0].myemail,
		myid:contractListItemGson[0].myid,
		mypayb:contractListItemGson[0].mypayb,
		mypaya:contractListItemGson[0].mypaya,
		mypayz:contractListItemGson[0].mypayz,
		mypayh:contractListItemGson[0].mypayh,
		mypaye:contractListItemGson[0].mypaye,
		mypaya2:contractListItemGson[0].mypaya2,
		mypaym:contractListItemGson[0].mypaym,
		camount:contractListItemGson[0].camount,
		statu:contractListItemGson[0].statu,
		plan2:contractListItemGson[0].plan2,
		plan3:contractListItemGson[0].plan3,
		count:'',
		plans1:[],
		planms2:[],
	    },
	    created(){
	     this.classFamily =this.contractListItemGson[0].plan4;
	     this.classSon =this.contractListItemGson[0].classson;
		let p=this.contractListItemGson[0].plan1;
	     this.count= JSON.parse(p).length;
	    this.plans1=JSON.parse(p);
	    this.planms2=JSON.parse(p);
	   
	    },
	    methods:{
		p2(e){
		    return e=='是' ? true:false;
		},
		 open2() {
		        this.$notify({
		          title: '警告',
		          message: '付款次数不能小于1',
		          type: 'warning'
		        });
		      },
		
		reduce(){
		    if (this.count>1) {
			this.count=this.count-1;
			let a=this.plans1;
			a.pop();
			 this.plans1= a ;
			 this.planms2= a ;
		    }else {
			this.open2();
		    }
		},
		add(){
		    this.count=this.count+1;
		    let a=this.plans1;
		    a.push({"payname":"","paypor":"","paydate":"","classson":"","statu":0});
		    this.plans1= a ;
		    this.planms2= a ;
		},
	
		addContract(){
		    let planm1='';
		    let sgmoney='';
		    let n=null;
		    let plandate1='';
		    let plandate2='';
		    for (var i = 0; i < this.planms2.length; i++) {
			if (this.planms2[i].statu==0) {
			    planm1=this.planms2[i].payname;
			    sgmoney=this.planms2[i].paypor;
			    plandate1=this.planms2[i].paydate;
			    n=i;
			    break;
			}else {
			    continue;
			}
		    }
		    plandate2=this.plans1[n].paydate;
		    let p2="";
		    let s='';
		    if (this.isPlanm2) {
			 p2=JSON.stringify( this.planms2 );
			 s= this.planms2[this.planms2.length-1].statu;
		    }else {
			 p2="[]";
			 s='';
		    }
		   
		    let statu='';
		   if (s==1) {
		       statu='end';
		}
		  
		    
		    axios({
			url:'/dxtest/copyAdd',
			method:'post',
			data:{
			    statu:statu,
			    contractid:this.contractid,
			    contractname:this.contractname,
			    oppunit:this.oppunit,
			    markdate:this.markdate,
			    contractnlife:this.contractnlife,
			    myname:this.myname,
			    oppname:this.oppname,
			    oppu:this.oppu,
			    oppp:this.oppp,
			    oppa:this.oppa,
			    oppn:this.oppn,
			    oppe:this.oppe,
			    oppx:this.oppx,
			    oppmail:this.oppmail,
			    oppe2:this.oppe2,
			    oppad:this.oppad,
			    opppayb:this.opppayb,
			    opppaya:this.opppaya,
			    opppayz:this.opppayz,
			    opppayh:this.opppayh,
			    opppaye:this.opppaye,
			    opppaya2:this.opppaya2,
			    opppaym:this.opppaym,
			    myu:this.myu,
			    mya:this.mya,
			    myp:this.myp,
			    myn:this.myn,
			    mye:this.mye,
			    myad:this.myad,
			    mye2:this.mye2,
			    myx:this.myx,
			    myemail:this.myemail,
			    myid:this.myid,
			    mypayb:this.mypayb,
			    mypaya:this.mypaya,
			    mypayz:this.mypayz,
			    mypayh:this.mypayh,
			    mypaye:this.mypaye,
			    mypaya2:this.mypaya2,
			    mypaym:this.mypaym,
			    plan1:JSON.stringify( this.plans1 ),
			    plan2:this.isPlan2==true? '是':'否',
			    plan3:this.plan3,
			    plan4:this.classFamily,
			    planm2:p2,
			    planm1:planm1,
			    sgmoney:sgmoney,
			    plandate1:plandate1,
			    plandate2:plandate2,
			    classson:this.classSon,
			    camount:this.camount,
			    
			}, enctype:'application/json',
		    }).then((response)=>{
			if (response.data.statu==0) {
			    this.$notify.error({
	                            title: '添加失败',
	                            message:response.data.WarningGsons,
	                                duration:1500
	                          });
			    
			}else {
			    this.$message({
	                         type: 'success',
	                         message: '添加成功!'
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
		
		pst(e,n){
		    if (e==0||e==false||e=="undefined") {
			return this.planms2[n].statu=0;
		    }else {
			return this.planms2[n].statu=1;
		    }
		},
		
		　getClassFamily(){
                    //获取选中的优惠券
                },
          getClassPay(){
                    console.log(this.classPay);
                },
          getClassSon(){
                    //获取选中的优惠券
                 console.log(this.classSon);
             },
         shaixuan:function(f){
             this.subcontents=contClassGson;
             this.subcontents2=contractPayGson;
              if ((f!=0) && (f!="")) {
                  this.subcontents = this.subcontents.filter(temp=>{
                      return   (temp['rowData']['CLASSFAMILY'] == f) ;
                  });
              }
              if ((f!=0) && (f!="")) {
                  this.subcontents2 = this.subcontents2.filter(temp=>{
                      return   (temp['rowData']['CLASSFAMILY'] == f) ;
                  });
              }
                },
        changePlan:function(n){
            
        },      
                
	    },
	    watch: {
			
			classFamily:function(n,o) {
	               this.shaixuan(n);
	            },
            count:function(n,o) {
	               this.changePlan(n);
            },
	    }
	    
	})
	
	</script>

</body>
</html> 