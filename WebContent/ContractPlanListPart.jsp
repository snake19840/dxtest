<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@page import="java.util.List"%>
<%@page import="com.clas.Equ"%>
 <%@page import="com.clas.DataSets"%>   
    
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
<script >
monthNow=<%=session.getAttribute("monthNow")%>;
monthNext=<%=session.getAttribute("monthNext")%>;
ListClassFamilyGson=<%=session.getAttribute("ListClassFamilyGson")%>
</script>
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
				<li><a href="#">合同预报账统计</a></li>
			</ul>


		<div  >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>合同预报账统计</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
<!-- 							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a> -->
						</div>
					</div>
					
					<div  id="tableList" class="box-content">
					<div style="height: 50px;">
					<div style="float: left;">
					<span style="padding-left: 20px;padding-right: 10px;"><b>请选择月份 :</b></span><el-date-picker
      v-model="monthNow"
      type="month"
      placeholder="选择月">
    </el-date-picker>
    <span style="padding-left: 20px;padding-right: 10px;"><b>付款状态 :</b></span>
     <el-select v-model="paycon" style="width: 100px;" >
    <el-option
      v-for="item in options"
      :key="item.value"
      :label="item.label"
      :value="item.value">
    </el-option>
  </el-select>
 
  <el-select  style="padding-left:10px;width:140px;" v-model="classFamilyValue" :change="change_cf" clearable  placeholder="可筛选合同类型">
    <el-option
      v-for="item in ListClassFamilyGson"
      :key="item.rowData.CLASSFAMILY"
      :label="item.label"
      :value="item.rowData.CLASSFAMILY">
    </el-option>
  </el-select> 
  
					</div>
					
					
					
<div style="float: right;line-height: 40px;padding-right: 10px;"><span ><b>当月合计付款金额  :</b></span>
<span style="padding-right: 20px; " >{{sum}} 元</span>
</div>
    
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
    show-overflow-tooltip
      prop="rowData.CONTRACTNAME"
      label="合同名称"
     min-width="200">
    </el-table-column>
     <el-table-column
     show-overflow-tooltip
      prop="rowData.CAMOUNT"
      label="总金额/元"
      sortable
      width="110"
     >
    </el-table-column>
     <el-table-column
     
     show-overflow-tooltip
      prop="rowData.OPPUNIT"
      label="乙方单位"
      sortable
     min-width="120"
     >
    </el-table-column>
     <el-table-column
     show-overflow-tooltip
      label="当前进度"
      sort-by="contractPlanListGson."
      sortable
      sort-by="scope"
       width="102"
     >
      <template slot-scope="scope">
      {{planname(scope.row)}}
      </template>
    </el-table-column>
      <el-table-column
      prop="rowData.REALPAY"
     show-overflow-tooltip
      label="付款时间"
      sortable
       width="110"
     >
    </el-table-column>
      <el-table-column
      prop="rowData.CONTRACTID"
      show-overflow-tooltip
      label="付款金额/元"
      sortable
      sort-by="sortby"
      width="122"
      >
      <template slot-scope="scope">
      {{countCamcount(scope.row)}}
      </template>
    </el-table-column>
    
       <el-table-column
      prop="rowData.CONTRACTID"
      label="是否付款"
      sortable
      sort-by="sortby"
      width="110"
      >
      <template slot-scope="scope">
      {{payconfirm(scope.row)}}
      </template>
    </el-table-column>
    
<!--  <el-table-column -->
<!--      show-overflow-tooltip -->
<!--       label="到期天数" -->
<!--       sortable -->
<!--       sort-by="sortby" -->
<!--        width="102" -->
<!--      > -->
<!--       <template slot-scope="scope"> -->
<!--       {{datel(scope.row)}} -->
<!--       </template> -->
<!--     </el-table-column> -->

<!--     <el-table-column -->
<!--      width="70px" -->
<!--       fixed="right" -->
<!--       label="操作"  -->
<!--      > -->
<!--          <template slot-scope="scope"> -->
<!--           <el-button -->
<!--           size="mini" -->
<!--           :type="typeOwn(scope.row.plandate1)" -->
<!--           @click="wraning(scope.$index, scope.row.contractid)" class="el-icon-date"></el-button> -->
<!--       </template> -->
<!--     </el-table-column>   -->
    
    
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
function tab(date1,m){
    date2=getNextMonth(m,0)
    var oDate1 = new Date(date1);
    var oDate2 = new Date(date2);
    if(oDate1.getTime() > oDate2.getTime()){
        return 1;
    } if(oDate1.getTime() == oDate2.getTime()){
	  return 2;
    }else {
       return 3;
    }
}
function getNextMonth(n,x) {
    n=new Date(n);
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
// console.log(t2);
return t2;
}
var tableList=new Vue({
    el:'#tableList',
    data:{
	classFamilyValue:'',
	ListClassFamilyGson:ListClassFamilyGson,
	st:1,
	paycon:"未付款",
	options:[{"value":"未付款"},{"value":"已付款"},{"value":"全部"}],
// 	options:[{"value":"未付款"}],
	monthNow:monthNow,
	value3:monthNext,
	contractPlanListGson:contractPlanListGson,
	tableData:[],
	input2: '',
	currentPage:1,
	pageSize:10,
	pageNum:1,
	totalPage:[],
	allCount:0,
	allData:contractListJSON,
	subcontents:[],
	date1:getNextMonth(Date(),0),
    },
    mounted:function(){
	let items=this.allData;
	this.tableData=this.dataShow(items);

// 	console.log(this.tableData);
    },
    methods:{
	
	shaixuan:function(){
            this.subcontents=this.contractPlanListGson;
             if (this.classFamilyValue!='') {
        	 this.subcontents = this.subcontents.filter(temp=>{
                     return   (
                	     temp['rowData']['PLAN4'].includes(this.classFamilyValue)
                 )
                 });
	    }
//              console.log(this.subcontents);
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
// 	        console.log(this.totalPage[0]);
	          
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
// 	    console.log(e);
	   let id=e.rowData.CONTRACTID;
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
			window.open("ContractPlanItem?contractid="+id+"&TT="+TT);
// 		  location.href = "ContractPlanItem?contractid="+id+"&TT="+TT;
	      },
	      countCamcount(e){
		  var sum=e.rowData.CAMOUNT;
		  var per=e.rowData.PAYPOR/100;
		  return (sum*per).toFixed(2);
	      },
	      payconfirm(e){
// 		  console.log(e);
		  var a=e.rowData.STATU_SUB;
		  if (a=="1"){
		      return "已付款";
		  }else {
		      return "未付款";
		}
	      },
	      datel(e){
// 		 console.log(e);
		  var e=e.rowData.PLANDATE1;
		    var dateP=new Date(e);
		    var dateJ=dateP.getTime();
		    var dateJ0=new Date().getTime();
		    var datex=dateJ-dateJ0;
// 	 	    console.log(parseInt(datex/(86400000)));
		    return parseInt(datex/(86400000))+'天';
	      },
	      changeMonth(n){
// 			this.options
		  this.ax(n);
	      },
	      changepaycon(n){
		 
		  axios.get('/dxtest/TestChakanContractPart', 
			  {
		      params:{
			  monthNow:this.monthNow,
			  monthNext:this.value3,
			  f:"c",
			  f2:n
		      }
			  })
		      .then( (response)=> {
// 		      console.log(response);
		      this.value3=response.data.monthNext;
		      this.contractPlanListGson=response.data.contractPlanListGson;
		      this.shaixuan();
		      })
		      .catch( (error) =>{
		      console.log(error);
		      })
		      .then(function () {
		      // always executed
		      });
	      },
	      
	      ax(n){
// 		  console.log(getNextMonth(n,0));
// 		  console.log(getNextMonth(n,1));
		  axios.get('/dxtest/TestChakanContractPart', 
			  {
		      params:{
			  monthNow:getNextMonth(n,0),
			  monthNext:getNextMonth(n,1),
			  f:"b",
			  f2:this.paycon,
		      }
			  })
		      .then( (response)=> {
// 		      console.log(response);
		      this.value3=response.data.monthNext;
		      this.contractPlanListGson=response.data.contractPlanListGson;
		      this.allData=response.data.contractPlanListGson;
		      this.tableData=this.dataShow( this.allData);
		      })
		      .catch( (error) =>{
		      console.log(error);
		      })
		      .then(function () {
		      // always executed
		      });
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
		planname(e){
	 	   if(e.rowData.STATU=='end'){
	 	       return "已结束";
	 	   } 
	 	    return e.rowData.PLANM1;
		},
		sumPart(n){
		    let s=0;
		    let a=0;
		    let per=0; 
		    for(i in n){
			a=n[i].rowData.CAMOUNT;
			per=n[i].rowData.PAYPOR/100;
			s=s+(a*per);
		}
		return s.toFixed(2);
		},
	      
    },
    computed:{
	change_cf(){
// 		  console.log(this.classFamilyValue);
		  this.shaixuan();
	      },
	
	sum(){
	    let s=0;
	    let a=0;
	    let per=0;
	    let n=this.subcontents;
	    for(i in n){
		a=n[i].rowData.CAMOUNT;
		per=n[i].rowData.PAYPOR/100;
		s=s+(a*per);
	    }
	    return s.toFixed(2);
	},
    },
    watch:{
	subcontents:function(n,o){
// 	   console.log(n);
// 	   this.sum=this.sumPart(n);
	},
	input2:function(n,o){
	    
	    this.shaixuan();
	},
	monthNow:function(n,o){
		  if(tab(this.date1,n)==1){
		      this.options=[{"value":"已付款"}];
		      this.paycon="已付款";
		  }else if (tab(this.date1,n)==2) {
		      this.options=[{"value":"未付款"},{"value":"已付款"},{"value":"全部"}];
		      this.paycon="未付款";
		}else if (tab(this.date1,n)==3) {
		    this.options=[{"value":"未付款"}];
		    this.paycon="未付款";
		}
		  if(getNextMonth(this.monthNow,0)==this.date1){
		      this.st=0;
		  }
		  var  t1=new Date(n);
			var  t0=new Date(o);
			var  t=new Date(this.date1)
		  if (getNextMonth(this.monthNow,0)==this.date1 && (t0.getTime()-t.getTime())>=0) {
		      this.st=1;
		}
// 		  console.log(this.st);
		  this.changeMonth(n);
	},
	paycon:function(n,o){
	    if (this.st==1) {
// 		console.log(getNextMonth(this.monthNow,0));
		  if(getNextMonth(this.monthNow,0)==this.date1){
			this.changepaycon(n);
	    }
	    }
	    this.st=1;
	},
    },
})

</script>

</body>
</html> 