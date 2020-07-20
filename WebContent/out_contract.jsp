<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@page import="java.util.List"%>
            <%@page import="java.util.Date"%>
<%@page import="com.clas.Equ"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>out_contract</title>
<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="">
	<meta name="keyword" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	 <link href="mycss/iconfont.css" rel="stylesheet" type="text/css"/>
    <link href="mycss/fileUpload.css" rel="stylesheet" type="text/css">
	
	<link id="bootstrap-style" href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
<link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">
<style type="text/css">
div.radio{
display: none;
}
</style>
</head>
<body>
<script type="text/javascript">
arrGson=<%=session.getAttribute("arrGson")%>;
</script>
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
				<li><a href="TestChakanContract.jsp" >合同报表导出</a>
				</li>
			</ul>
			
		<div  id="output">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>合同报表导出</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
<!-- 							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a> -->
						</div>
					</div>
					
						<div class="box-content">
						 <div id="main" style="width: 100%;">
	<div style="margin-top: 15px;"><span style="letter-spacing: 2px;margin-left: 20%;"><b><font  color="red">*</font>时间范围  :</b></span>
	<el-date-picker
      v-model="dateValue"
      type="daterange"
      align="right"
      unlink-panels
      range-separator="至"
      start-placeholder="开始日期"
      end-placeholder="结束日期"
      :picker-options="pickerOptions">
    </el-date-picker>
	</div>
	 <div style="margin-top: 15px;"><span style="letter-spacing: 2px;margin-left: 20%;"><b><font  color="red">*</font>报表格式  :</b></span>
<!--     <el-radio v-model="radio1" label="1" style="letter-spacing: 1px;" border>WORD</el-radio> -->
    <el-radio v-model="radio1" label="2" style="letter-spacing: 1px;" border>EXCEL</el-radio>
  </div>
	<div><span style="padding-left: 89px;"></span>
	 <el-button  type="primary" size="medium"  style="margin-left: 20%;margin-top: 15px;" @click="output()">导出报表</el-button>
	</div>
						 
			</div>			
						</div>
					</div>
					
<table style="display:none;"   id="item"> 
	<tr>
    <th>合同编号</th>
<th>合同名称</th>
<th>录入时间</th>
<th>合同状态</th>
<th>供应商单位</th>
<th>合同签订日期</th>
<th>合同有效期</th>
<th>合同金额</th>
<th>我方联系人</th>
<th>对方联系人</th>
<th>我方联系电话</th>
<th>对方联系电话</th>
<th>是否附加合同</th>
<th>主合同号</th>
<th>我方签署人</th>
<th>对方签署人</th>
<th>项目子类</th>
<th>付款名</th>
<th>付款比例</th>
<th>文件付款日期</th>
<th>是否付款</th>
<th>实际付款日期</th>
<th>法定代表人</th>
<th>供应商地址</th>
<th>项目联系人传真</th>
<th>项目联系人电子邮箱</th>
<th>通讯地址</th>
<th>开户行</th>
<th>银行地址</th>
<th style="vnd.ms-excel.numberformat:@;">帐号</th>
<th>户名</th>
<th>电话</th>
<th>地址</th>
<th style="vnd.ms-excel.numberformat:@;">统一社会信用码</th>

   </tr>
  <tr v-for="(item,index) in listGson_print" :key="index">
    <td>{{item.rowData.CONTRACTID_T1}}</td>
<td>{{item.rowData.CONTRACTNAME_T1}}</td>
<td>{{item.rowData.CONTRACTNOWDATE_T1}}</td>
<td>{{STATU_T1(item.rowData.STATU_T1)}}</td>
<td>{{item.rowData.OPPUNIT_T1}}</td>
<td>{{item.rowData.MARKDATE_T1}}</td>
<td>{{item.rowData.CONTRACTNLIFE_T1}}</td>
<td style="vnd.ms-excel.numberformat:#,##0.00;">{{item.rowData.CAMOUNT_T1}}</td>
<td>{{item.rowData.MYN_T5}}</td>
<td>{{item.rowData.OPPN_T3}}</td>
<td>{{item.rowData.MYE_T5}}</td>
<td>{{item.rowData.OPPE2_T3}}</td>
<td>{{item.rowData.PLAN2_T1}}</td>
<td>{{item.rowData.PLAN3_T1=item.rowData.PLAN3_T1=="null"? "无":item.rowData.PLAN3_T1}}</td>

<td>{{item.rowData.MYNAME_T1}}</td>
<td>{{item.rowData.OPPNAME_T1}}</td>
<td>{{item.rowData.CLASSSON_T1}}</td>
<td>{{item.rowData.PAYNAME_T2}}</td>
<td>{{item.rowData.PAYPOR_T2}}%</td>
<td>{{item.rowData.PAYDATE_T2}}</td>
<td>{{STATU_SUB(item.rowData.STATU_SUB_T2)}}</td>
<td>{{item.rowData.REALPAY_T2}}</td>
<td>{{item.rowData.OPPP_T3}}</td>
<td>{{item.rowData.OPPA_T3}}</td>
<td>{{item.rowData.OPPX_T3}}</td>
<td>{{item.rowData.OPPMAIL_T3}}</td>
<td>{{item.rowData.OPPAD_T3}}</td>
<td>{{item.rowData.OPPPAYB_T4}}</td>
<td>{{item.rowData.OPPPAYA_T4}}</td>
<td class="counta">{{item.rowData.OPPPAYZ_T4}}</td>
<td>{{item.rowData.OPPPAYH_T4}}</td>
<td>{{item.rowData.OPPPAYE_T4}}</td>
<td>{{item.rowData.OPPPAYA2_T4}}</td>
<td class="counta">{{item.rowData.OPPPAYM_T4}}</td>

  </tr>
	</table>	
					
				</div>

			</div><!--/.fluid-container-->
			<!-- end: Content -->
		</div><!--/#content.span10-->
	</div><!--/fluid-row-->
<!-- 	end -->


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
<!-- 	end -->

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
 var tableToExcel = (function () {
    
     var uri = 'data:application/vnd.ms-excel;base64,'
         , template = '<html xmlns:o="urn:schemas-microsoft-com:office:office"  xmlns:x="urn:schemas-microsoft-com:office:excel"  xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso  9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--><style>table td,th{text-align: center;} .counta{vnd.ms-excel.numberformat:@;} </style></head><body><table>{table}</table></body></html>'
         , base64 = function (s) { return  window.btoa(unescape(encodeURIComponent(s))) }
         , format = function (s, c) { return s.replace(/{(\w+)}/g, function (m,  p) { return c[p]; }) }

         return function (table, name, filename) {
             console.log(table);
             if (!table.nodeType) table = document.getElementById(table)
             var ctx = { worksheet: name || 'Worksheet', table: table.innerHTML }
             var link = uri + base64(format(template, ctx));
             var a = document.createElement("a");
             a.href = link;
             a.download = filename;//这里是关键所在,当点击之后,设置a标签的属性,这样就可以更改标签的标题了
             a.click();
         }
 })()
 
function formatDate(date) { 
     var y = date.getFullYear();  
     var m = date.getMonth() + 1;  
     m = m < 10 ? '0' + m : m;  
     var d = date.getDate();  
     d = d < 10 ? ('0' + d) : d;  
     return y + '-' + m + '-' + d;  
  }
function getEndMonth(n,x){
    var year = n.getYear(); //获取当前日期的年份
    var month = n.getMonth(); //获取当前日期的月份
    var day = n.getDate; //获取当前日期的日
    var days = new Date(year, month+1, 0);
    days = days.getDate(); //获取当前日期中的月的天数
    var year2 = year;
    var month2 = parseInt(month) + 1+x;
    if (month2 >= 13) {
	year2 = parseInt(year2) + 1;
	month2 = month2%12;
	}else if(month2 <= 0){
	    year2 = parseInt(year2) - 1;
	    month2=12-month2;
	}
    if (month2 < 10) {
	month2 = '0' + month2;
	}
    if(days<10){
	days='0'+days;
    }
    var t2 = year2+1900 + '-' + month2 + '-' +days;
    return t2;
}
 function getNextMonth(n,x) {
//      n=new Date(n);
var year = n.getYear(); //获取当前日期的年份
var month = n.getMonth(); //获取当前日期的月份
var day = n.getDate; //获取当前日期的日
var days = new Date(year, month, 0);
days = days.getDate(); //获取当前日期中的月的天数
var year2 = year;
var month2 = parseInt(month) + 1+x;
if (month2 >= 13) {
year2 = parseInt(year2) + 1;
month2 = month2%12;
}else if(month2 <= 0){
    year2 = parseInt(year2) - 1;
    month2=12-month2;
}
var day2 = day;
var days2 = new Date(year2, month2, 0);
days2 = days2.getDate();
if (day2 > days2) {
day2 = days2;
}
if (month2 < 10) {
month2 = '0' + month2;
}
var t2 = year2+1900 + '-' + month2 + '-01';

return t2;
}
 function getNextYear(n,x){
     var year = n.getYear(); //获取当前日期的年份
     var year2 = year;
     year2 = parseInt(year2) + x;
     var t2 = year2+1900 + '-01-01';
     return t2;
 }
 function getEndYear(n,x){
     var year = n.getYear(); //获取当前日期的年份
     var year2 = year;
     year2 = parseInt(year2) + x;
     var t2 = year2+1900 + '-12-31';
     return t2;
 }
 
 var dd=new Date();
 var output=new Vue({
     el:'#output',
     data:{
	 startDate:"",
	 endDate:"",
	 radio1:'2',
	 listGson_print:[],
	 pickerOptions:{
	     shortcuts: [{
	            text: '最近一个月',
	            onClick(picker) {
	              const end = getEndMonth(dd,0);
	              const start = getNextMonth(dd,0);
	              
	              picker.$emit('pick', [start, end]);
	            }
	          }, {
	            text: '最近三个月',
	            onClick(picker) {
	              const end = getEndMonth(dd,0);
	              const start = getNextMonth(dd,-3);
	              picker.$emit('pick', [start, end]);
	            }
	          },{
		            text: '最近一年',
		            onClick(picker) {
		              const end = getEndYear(dd,0);
		              const start = getNextYear(dd,0);
		           
		              picker.$emit('pick', [start, end]);
		            }
		          },{
			            text: '上一年',
			            onClick(picker) {
			              const end = getEndYear(dd,-1);
			              const start = getNextYear(dd,-1);
			              picker.$emit('pick', [start, end]);
			            }
			          }]
	 },
	 
	          value1: '',
	          dateValue: '',
     },
     methods:{
	 STATU_SUB(STATU_SUB_T2){
	     if(STATU_SUB_T2=='1'){
		 return "已付款";
	     }else{
		 return "未付款";
	     }
	 },
	 STATU_T1(STATU){
	     if(STATU=='end'){
		 return "合同已结束";
	     }else{
		 return "合同未结束";
	     }
	 },
	 changeTable(){
	     axios.get('out_contract',{
		 params:{
		     startDate:this.startDate,
		     endDate:this.endDate,
		     type:"2",
		 }
	     }).then((response)=>{
			 console.log(response.data);
			 this.listGson_print=response.data.listGson_print;
		     }).catch((error)=>{
			 console.log(error);
		     }).then(function(){
			 
		     });
	 },
	 output(){
	     if(this.startDate==''|| this.endDate==''){
		 this.$message.error('请输入时间');
	     }
	     if(this.radio1=='1'){
	     axios.get('out_warning',{
		 params:{
		     startDate:this.startDate,
		     endDate:this.endDate,
		     type:this.radio1,
		 }
	     }).then((response)=>{
			 console.log(response.data);
			 location.href="PrintTest2.jsp";
		     }).catch((error)=>{
			 console.log(error);
		     }).then(function(){
			 
		     });
	     }else if(this.radio1=='2'){
		 tableToExcel('item','workSheet','合同报表.xls');
	     }
	 },
     },
     watch:{
	 dateValue:function(n,o){
	   n[0]= n[0].toString().length>15? formatDate(n[0]):n[0];
	   n[1]= n[1].toString().length>15? formatDate(n[1]):n[1];
// 	   console.log(n);
	   this.startDate=n[0];
	   this.endDate=n[1];
	   this.changeTable();
	 },
     },
 })
    </script>
    <script type="text/javascript">


 // 点击导出按钮

    </script>
    
</body>
</html>