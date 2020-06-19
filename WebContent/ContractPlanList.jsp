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
	

	<!-- start: Favicon -->
	<link rel="shortcut icon" href="img/favicon.ico">
	<!-- end: Favicon -->
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

 tr.highlight td {   
    background:#e4e7ed; /*这个将是鼠标高亮行的背景色*/  
}

</style> 
	<style type="text/css">
.input2 input{
height:40px; }
.el-input__icon{
height:0;line-height:40px; 
}
</style>
	
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
				<li><a href="#">合同计划</a></li>
			</ul>


		<div  >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>合同计划</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
<!-- 							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a> -->
						</div>
					</div>
					
					<div  id="tableList" class="box-content">
					<div style="float: right;height: 50px;">
<el-input
    placeholder="请输入查询内容"
    prefix-icon="el-icon-search"
    clearable
    v-model="input2" class="input2">
  </el-input>
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
     min-width="130">
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
     min-width="120"
     >
    </el-table-column>
     <el-table-column
      prop="planm1"
     show-overflow-tooltip
      label="当前进度"
      sortable
       width="102"
     >
    </el-table-column>
      <el-table-column
      prop="plandate1"
     show-overflow-tooltip
      label="付款时间"
      sortable
       width="110"
     >
    </el-table-column>
 <el-table-column
      
     show-overflow-tooltip
      label="到期天数"
      sortable
      sort-by="sortby"
       width="102"
     >
      <template slot-scope="scope">
      {{datel(scope.row.plandate1)}}
      </template>
    </el-table-column>

    <el-table-column
     width="70px"
      fixed="right"
      label="操作" 
     >
         <template slot-scope="scope">
          <el-button
          size="mini"
          :type="typeOwn(scope.row.plandate1)"
          @click="wraning(scope.$index, scope.row.contractid)" class="el-icon-date"></el-button>
      </template>
    </el-table-column>  
    
    
  </el-table>
  
  <div class="block">
   
    <el-pagination
      @size-change="handleSizeChange"
      @current-change="handleCurrentChange"
      :page-sizes="[10, 25, 50, 100]"
      :page-size="pageSize"
      layout="total, sizes, prev, pager, next, jumper"
        :current-page.sync="currentPage"
      :total="allCount">
    </el-pagination>
  </div>
  
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
	
	<script type="text/javascript">
	 contractListJSON=<%=session.getAttribute("contractPlanListGson")%>;
	 TT="ContractPlanList.jsp";
	
	</script>

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
		<script >contractPlanListGson=<%=session.getAttribute("contractPlanListGson")%>;
		</script>
		
<!-- 		<script src="myjs/UpDataContract.js"></script> -->
		
		
<script type="text/javascript">
var tableList=new Vue({
    el:'#tableList',
    data:{
	
	tableData:[],
	input2: '',
	currentPage:1,
	pageSize:10,
	pageNum:1,
	totalPage:[],
	allCount:0,
	allData:contractListJSON,
	subcontents:[],
    },
    mounted:function(){
	let items=this.allData;
	this.tableData=this.dataShow(items);

	



// 	console.log(this.tableData);
    },
    methods:{
	shaixuan:function(f){
            this.subcontents=contractListJSON;
       
             if ((f!=0) && (f!="")) {
                 this.subcontents = this.subcontents.filter(temp=>{
                     return   (temp['contractid'].toLowerCase().includes(f.toLowerCase())||
                               temp['contractname'].toLowerCase().includes(f.toLowerCase())||
                               temp['markdate'].toLowerCase().includes(f.toLowerCase())||
                               temp['contractnlife'].toLowerCase().includes(f.toLowerCase())||
                               temp['oppunit'].toLowerCase().includes(f.toLowerCase())||
                               temp['planm1'].toLowerCase().includes(f.toLowerCase())||
                               temp['plandate1'].toLowerCase().includes(f.toLowerCase())
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
//  	  console.log(id);
	 this.edit(id);
	},
	wraning(n,e){
// 	    console.log(n);
// 	    console.log(e);
	    this.edit(e);
	},
	sortby(){
	    console.log(row);
	    console.log(index);
	},
	      edit(id){
// 	    console.log(id);
		  location.href = "ContractPlanItem?contractid="+id+"&TT="+TT;
	      },
	
	      datel(e){
		    var dateP=new Date(e);
		    var dateJ=dateP.getTime();
		    var dateJ0=new Date().getTime();
		    var datex=dateJ-dateJ0;
//	 	    console.log(parseInt(datex/(86400000)));
		    return parseInt(datex/(86400000))+'天';
	      },
	      typeOwn(e){
		  let nd=new Date(),
			 nd30=new Date(nd.valueOf()+30*86400000),
			 nd7=new Date(nd.valueOf()+7*86400000);
				 let   d=initDate(e);
				    if (nd7>d) {
					return 'danger';
				    }else if (nd30>d) {
					return 'warning';
				    }else{
					return 'success';
				    }
				
				    function initDate(date) {
					   var a=null;
					   a= new Date(Date.parse(date.replace(/-/g, "/"))); 
					   return a;
					}
				  
	      },
	      
	      
    },
    watch:{
	input2:function(n,o){
	    console.log(n);
	    this.shaixuan(n);
	},
    },
})

</script>

</body>
</html> 