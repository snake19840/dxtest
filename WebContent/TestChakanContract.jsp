<%@page import="java.util.ArrayList"%>
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
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="img/favicon.ico">
	<!-- end: Favicon -->
	
<style type="text/css">
.input2 input{
height:40px; }
.el-input__icon{
height:0;line-height:40px; 
}
</style>		
	<style type="text/css">
.input2 input{
height:40px; }

.add-on, select, textarea, input[type="text"],.uneditable-input{
height:40px;
}
.el-input__icon {
    /* height: 0; */
    /* line-height: 40px; */
}
.el-input__icon {
     height: 40px; 
    width: 25px;
    text-align: center;
    -webkit-transition: all .3s;
    transition: all .3s;
    line-height: 40px;
}
.el-input--mini .el-input__icon {
    line-height: 0px;
    height: 28px;
}
</style>
	
</head>
<body>
<script type="text/javascript">
var contractListGson=<%=session.getAttribute("contractListGson")%>;
var listusGson=<%=session.getAttribute("listusGson")%>;
listGson_print=<%=session.getAttribute("listGson_print")%>
ListClassFamilyGson=<%=session.getAttribute("ListClassFamilyGson")%>
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
				<li><a href="#">合同查询</a></li>
			</ul>


		<div  >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>合同查询</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					
				<div  id="tableList" class="box-content">
				  <div style="float: left;width: 140px;">
<el-select v-model="classFamilyValue" :change="change_cf" clearable  placeholder="可筛选合同类型">
    <el-option
      v-for="item in ListClassFamilyGson"
      :key="item.rowData.CLASSFAMILY"
      :label="item.label"
      :value="item.rowData.CLASSFAMILY">
    </el-option>
  </el-select>  
  </div>
  

				
					<div style="float: right;height: 50px;">
<el-input
    placeholder="请输入查询内容"
    prefix-icon="el-icon-search"
    clearable
    v-model="input2" class="input2">
  </el-input>
  


  
					</div>
						<div style="float: right;height: 50px;margin-right: 50px">
	<span style="letter-spacing: 2px;">
			<b>
<!-- 			<font  color="red">*</font> -->
			时间范围  :</b>
			</span>
<el-date-picker
	:change="lostPoint"
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
					
	<el-table
    :data="tableData"
    style="width: 100%;margin-bottom: 20px;"
    row-key="contractid"
    border
    @row-dblclick="rowclick($event)"
    default-expand-all
    :tree-props="{children: 'children', hasChildren: 'hasChildren'}">
    <el-table-column
      prop="contractid"
      label="合同编号"
      sortable
      show-overflow-tooltip
      min-width="102"
      >
    </el-table-column>
    <el-table-column
    show-overflow-tooltip
      prop="contractname"
      label="合同名称"
      sortable
     min-width="200">
    </el-table-column>
     <el-table-column
     show-overflow-tooltip
      prop="markdate"
      label="签订日期"
      sortable
      width="110"
     >
    </el-table-column>
     <el-table-column
     show-overflow-tooltip
        prop="contractnlife"
      label="有效期"
      sortable
      min- width="100"
     >
    </el-table-column>
     <el-table-column
     
     show-overflow-tooltip
      prop="oppunit"
      label="乙方单位"
      sortable
     min-width="130"
     >
    </el-table-column>
     <el-table-column
      prop="camount"
     show-overflow-tooltip
      label="合同金额"
      sortable
       width="102"
     >
    </el-table-column>


    <el-table-column
     width="70px"
      fixed="right"
      label="操作" 
     >
         <template slot-scope="scope">
         
         <el-dropdown @command="handleCommand">
      <span class="el-dropdown-link">
        菜单<i class="el-icon-arrow-down el-icon--right"></i>
      </span>
      <el-dropdown-menu slot="dropdown">
          <template v-if="isCon">
        <el-dropdown-item icon="el-icon-search" :command="['v',scope.row.contractid]">查看</el-dropdown-item>
        </template>
         <template v-if="isConedit">
        <el-dropdown-item icon="el-icon-edit-outline" :command="['e',scope.row.contractid]">编辑</el-dropdown-item>
        </template>
         <template v-if="isConedit">
        <el-dropdown-item icon="el-icon-document-copy" :command="['c',scope.row.contractid]">复制</el-dropdown-item>
        </template>
         <template v-if="isCondel">
        <el-dropdown-item icon="el-icon-delete" :command="['d',scope.row.contractid]">删除</el-dropdown-item>
        </template>
      
      </el-dropdown-menu>
    </el-dropdown>
         
      </template>
    </el-table-column>  
    
    
  </el-table>
  
  <div class="block">
   <div style="float:left;" >
    <el-pagination
      @size-change="handleSizeChange"
      @current-change="handleCurrentChange"
      :page-sizes="[10, 25, 50, 100]"
      :page-size="pageSize"
      layout="total, sizes, prev, pager, next, jumper"
        :current-page.sync="currentPage"
      :total="allCount">
    </el-pagination></div>
 
    <div style="float:right;"><el-button size="mini" type="primary" @click="outPrint()">导出报表<i class="el-icon-upload el-icon--right"></i></el-button></div>
    <template v-if="showSum">
   <div style="float:right;padding-right: 20px;font-size: 12px;color: #df7910;" ><b>{{startDate}} 至 {{endDate}}合同总金额 : </b>{{sum}} <b>元</b></div>
   </template>
  </div>
  
  
  
  <table style="display:none;"   id="item"> 
	<tr>
<th>合同编号</th>
<th>合同名称</th>
<th>录入时间</th>
<th>合同状态</th>
<th>合同金额</th>

<th>项目子类</th>
<!-- <th>付款名</th> -->
<!-- <th>付款比例</th> -->
<!-- <th>文件付款日期</th> -->
<!-- <th>是否付款</th> -->
<!-- <th>实际付款日期</th> -->

<th>供应商单位</th>
<th>合同签订日期</th>
<th>合同有效期</th>

<th>我方联系人</th>
<th>对方联系人</th>
<th>我方联系电话</th>
<th>对方联系电话</th>
<th>是否子合同</th>
<th>子合同对应主合同号</th>

<th>我方签署人</th>
<th>对方签署人</th>

<th>供应商法定代表人</th>
<th>供应商地址</th>
<th>供应商项目联系人传真</th>
<th>供应商项目联系人电子邮箱</th>
<th>供应商通讯地址</th>
<th>供应商收款开户行</th>
<th>供应商收款银行地址</th>
<th>供应商收款帐号</th>
<th>供应商收款户名</th>
<th>供应商收款电话</th>
<th>供应商收款地址</th>
<th>供应商收款统一社会信用码</th>


<th>委托方单位</th>
<th>委托方地址</th>
<th>委托方法定代表人</th>
<th>委托方项目联系人</th>
<th>委托方联系方式</th>
<th>委托方通讯地址</th>
<th>委托方电话</th>
<th>委托方传真</th>
<th>委托方电子邮箱</th>
<th>委托方付款开户行</th>
<th>委托方付款银行地址</th>
<th>委托方付款帐号</th>
<th>委托方付款户名</th>
<th>委托方付款电话</th>
<th>委托方付款地址</th>
<th>委托方付款统一社会信用码</th>

   </tr>
  <tr v-for="(item,index) in listGson_print" :key="index">
<td>{{item.rowData.CONTRACTID_T1}}</td>
<td>{{item.rowData.CONTRACTNAME_T1}}</td>
<td>{{item.rowData.CONTRACTNOWDATE_T1}}</td>
<td>{{STATU_T1(item.rowData.STATU_T1)}}</td>
<td >{{item.rowData.CAMOUNT_T1}}</td>

<td>{{item.rowData.CLASSSON_T1}}</td>
<!-- <td>{{item.rowData.PAYNAME_T2}}</td> -->
<!-- <td>{{item.rowData.PAYPOR_T2}}%</td> -->
<!-- <td>{{item.rowData.PAYDATE_T2}}</td> -->
<!-- <td>{{STATU_SUB(item.rowData.STATU_SUB_T2)}}</td> -->
<!-- <td>{{item.rowData.REALPAY_T2}}</td> -->


<td>{{item.rowData.OPPUNIT_T1}}</td>
<td>{{item.rowData.MARKDATE_T1}}</td>
<td>{{item.rowData.CONTRACTNLIFE_T1}}</td>

<td>{{item.rowData.MYN_T5}}</td>
<td>{{item.rowData.OPPN_T3}}</td>
<td>{{item.rowData.MYE_T5}}</td>
<td>{{item.rowData.OPPE2_T3}}</td>
<td>{{item.rowData.PLAN2_T1}}</td>
<td>{{item.rowData.PLAN3_T1=item.rowData.PLAN3_T1=="null"? " ":item.rowData.PLAN3_T1}}</td>

<td>{{item.rowData.MYNAME_T1}}</td>
<td>{{item.rowData.OPPNAME_T1}}</td>

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

<td>{{item.rowData.MYU_T5}}</td>
<td>{{item.rowData.MYA_T5}}</td>
<td>{{item.rowData.MYP_T5}}</td>
<td>{{item.rowData.MYN_T5}}</td>
<td>{{item.rowData.MYE_T5}}</td>
<td>{{item.rowData.MYAD_T5}}</td>
<td>{{item.rowData.MYE2_T5}}</td>
<td>{{item.rowData.MYX_T5}}</td>
<td>{{item.rowData.MYEMAIL_T5}}</td>
<td>{{item.rowData.MYPAYB_T6}}</td>
<td>{{item.rowData.MYPAYA_T6}}</td>
<td class="counta">{{item.rowData.MYPAYZ_T6}}</td>
<td>{{item.rowData.MYPAYH_T6}}</td>
<td>{{item.rowData.MYPAYE_T6}}</td>
<td>{{item.rowData.MYPAYA2_T6}}</td>
<td class="counta">{{item.rowData.MYPAYM_T6}}</td>

  </tr>
	</table>
  
  
					</div>	
					
				</div><!--/span-->
			
			</div><!--/row-->

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
	
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
var tableToExcel = (function () {
    
    var uri = 'data:application/vnd.ms-excel;base64,'
        , template = '<html xmlns:o="urn:schemas-microsoft-com:office:office"  xmlns:x="urn:schemas-microsoft-com:office:excel"  xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso  9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--><style>table td,th{text-align: center;} .counta{vnd.ms-excel.numberformat:@;} </style></head><body><table>{table}</table></body></html>'
        , base64 = function (s) { return  window.btoa(unescape(encodeURIComponent(s))) }
        , format = function (s, c) { return s.replace(/{(\w+)}/g, function (m,  p) { return c[p]; }) }

        return function (table, name, filename) {
//             console.log(table);
            if (!table.nodeType) table = document.getElementById(table)
            var ctx = { worksheet: name || 'Worksheet', table: table.innerHTML }
            var link = uri + base64(format(template, ctx));
            var a = document.createElement("a");
            a.href = link;
            a.download = filename;//这里是关键所在,当点击之后,设置a标签的属性,这样就可以更改标签的标题了
            a.click();
        }
})();


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


var tableList=new Vue({
    el:'#tableList',
    data:{
	classFamilyValue:'',
	ListClassFamilyGson:ListClassFamilyGson,
	showSum:false,
	sum:0,
	listGson_print:[],
	startDate:"",
	endDate:"",
	radio1:'2',
	listGson_print:listGson_print,
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
     dateValue: null,
	isCon:false,
	isConedit:false,
	isCondel:false,
	
	tableData:[],
	input2: '',
	currentPage:1,
	pageSize:10,
	pageNum:1,
	totalPage:[],
	allCount:0,
	allData:contractListGson,
	subcontents:[],
    },
    
    
    mounted:function(){
	let items=this.allData;
	this.tableData=this.dataShow(items);
	let con=listusGson[0].con,
	conedit=listusGson[0].conedit,
	condel=listusGson[0].condel,
	levela=listusGson[0].levela;

if (levela==1) {
   this.isCon=true;
   this.isConedit=true;
   this.isCondel=true;
	}else {
    if (conedit==1) {
	    this.isConedit=true; 
	  
		}
		if (condel==1) {
	    this.isCondel=true; 
	   
		}
	 if (con==1) {
	    this.isCon=true; 
	    
	}
}

// 	console.log(this.tableData);
    },
    methods:{
	outPrint(){
// 	    console.log(this.startDate);
// 	    if(this.startDate==''|| this.endDate==''){
// 		 this.$message.error('请输入时间');
// 		 return;
// 	     }
	    tableToExcel('item','workSheet','合同报表.xls');
	},
	 STATU_T1(STATU){
	     if(STATU=='end'){
		 return "合同已结束";
	     }else{
		 return "合同未结束";
	     }
	 },
	
	shaixuan(f){
            this.subcontents=contractListGson;
       
             if ((f!=0) && (f!="")) {
                 this.subcontents = this.subcontents.filter(temp=>{
                     return   (temp['contractid'].toLowerCase().includes(f.toLowerCase())||
                               temp['contractname'].toLowerCase().includes(f.toLowerCase())||
                               temp['markdate'].toLowerCase().includes(f.toLowerCase())||
                               temp['contractnlife'].toLowerCase().includes(f.toLowerCase())||
                               temp['oppunit'].toLowerCase().includes(f.toLowerCase())||
                               temp['camount'].toLowerCase().includes(f.toLowerCase())
//                                (temp['camount']!=null ? temp['sname'].toLowerCase().includes(f.toLowerCase()):0)
                 )
                 });
             }
//              console.log(this.classFamilyValue);
             if (this.classFamilyValue!='') {
        	 this.subcontents = this.subcontents.filter(temp=>{
                     return   (temp['plan4'].includes(this.classFamilyValue)
                 )
                 });
	    }
             
             this.allData=this.subcontents;
             this.tableData=this.dataShow( this.allData);
             
               },
	
	       dataShow(items){
// 	           console.log(items);
	           this.allCount=items.length;
//	         console.log(this.WarningGsons.length);
// 	         console.log(this.pageSize);
	         //如果没有这句代码，select中初始化会是空白的，默认选中就无法实现
	               this.pageNum= Math.ceil(items.length/this.pageSize)||1;
// 	         console.log(this.pageNum);
	             for (let i = 0; i < this.pageNum; i++) {
	                   // 每一页都是一个数组 形如 [['第一页的数据'],['第二页的数据'],['第三页数据']]
	                   // 根据每页显示数量 将后台的数据分割到 每一页,假设pageSize为5，  则第一页是1-5(对slice操作来说是0-5)条，第二页是6-10(对slice操作来说是5-10)条...
	                   this.totalPage[i] = items.slice(i*this.pageSize,(i+1)*this.pageSize);
	                 }
	             
	          // 当前显示的内容
//	        console.log(this.currentPage);
	          return  this.totalPage[this.currentPage-1];
	},
	
	handleSizeChange(val){
// 	    console.log(val);
	    this.pageSize=val;
	    let items=this.allData;
	    this.tableData=this.dataShow(items);
	},
	handleCurrentChange(val){
// 	    console.log(val);
	    this.currentPage=val;
	    let items=this.allData;
	    this.tableData=this.dataShow(items);
	   
	},
	rowclick(e){
	   let id=e.contractid;
	   this.view(id);
	},
	wraning(n,e){
	    this.rowclick(e);
	},
	handleCommand(command) {
	    
	       let statu=command[0],
	       id=command[1];
	       console.log(statu);
	       console.log(id);
	       if (statu=='v') {
		this.view(id);
	    }else if (statu=='e') {
		this.edit(id);
	    }else if (statu=='c') {
		this.copy(id);
	    }else if (statu=='d'){
		this.del(id);
	    }
	       
	      },
	view(id){
		  window.open("ContractMain?contractid="+id);
// 		  location.href = "ContractMain?contractid="+id;
	      },
	      edit(id){
		  window.open("ContractEdit?contractid="+id);
// 		  location.href = "ContractEdit?contractid="+id;
	      },
	
	      copy(id){
		  window.open("ContractCopy?contractid="+id);
// 		  location.href = "ContractCopy?contractid="+id;
	      },
	
	      del(id){
		  this. open(id);
		
	      },
	      
		 changeTable(){
		     axios.get('out_contractMain',{
			 params:{
			     startDate:this.startDate,
			     endDate:this.endDate,
			     type:"2",
			 }
		     }).then((response)=>{
// 				 console.log(response.data);
				 contractListGson=response.data.contractListGson;
				 this.listGson_print=response.data.listGson_print;
				 this.shaixuan(this.input2);
				 this.sum=this.sumAll();
				 this.showSum=true;
			     }).catch((error)=>{
				 console.log(error);
			     }).then(function(){
				 
			     });
		 },
	      open(id) {
		        this.$confirm('此操作将永久删除该文件, 是否继续?', '提示', {
		          confirmButtonText: '确定',
		          cancelButtonText: '取消',
		          type: 'warning'
		        }).then(() => {
		            axios.get('/dxtest/ContractDel', {
		        	params: {
		        	    contractid: id
		        	}
		        	})
		        	.then(function (response) {
// 		        	console.log(response.data);
		        	tableList.allData=response.data.contractListGson;
		        	let items=tableList.allData;
		        	tableList.tableData=tableList.dataShow(items);
		        	
		        	tableList.$message({
				            type: 'success',
				            message: '删除成功!'
				          });
		        	})
		        	.catch(function (error) {
		        	console.log(error);
		        	});
		       
		        }).catch(() => {
		          this.$message({
		            type: 'info',
		            message: '已取消删除'
		          });          
		        });
		      },
		      noTime(){
			  axios.get('/dxtest/NoTime', {
			      params: {
			      statu:"noTime",
			      }
			      })
			      .then( (response)=> {
			      contractListGson=response.data.contractListGson;
				 this.listGson_print=response.data.listGson_print;
				 this.shaixuan(this.input2);
				this.showSum=false;
			      })
			      .catch( (error) =>{
			      console.log(error);
			      })
			      .then(function () {
			      // always executed
			      });
		      },
		     
		      
			  sumAll(){
// 			  console.log(this.subcontents);
			      let a=0;
			      for(i in this.subcontents){
// 				  console.log(parseInt(contractListGson[i].camount));
// 				  console.log(a);
				  a=a+parseInt(this.subcontents[i].camount);
			      }
// 			      console.log(a);
			      return a;
			  },
			 
    },
    computed:{
	 lostPoint(){
		  let n= this.dateValue;
			if(n==null||n==''){
			    this.noTime();
			}else{
			 
				   n[0]= n[0].toString().length>15? formatDate(n[0]):n[0];
				   n[1]= n[1].toString().length>15? formatDate(n[1]):n[1];
// 		 	 	   console.log(n);
				   this.startDate=n[0];
				   this.endDate=n[1];
				   this.changeTable();
			}
	      },
	      change_cf(){
// 		  console.log(this.classFamilyValue);
		  this.shaixuan(this.input2);
	      },
    },
    watch:{
	subcontents:function(n,o){
// 	    console.log(n);
	    this.sum=this.sumAll();
	},
	input2:function(n,o){
// 	    console.log(n);
	    this.shaixuan(n);
	},

    },
})

</script>


</body>
</html> 