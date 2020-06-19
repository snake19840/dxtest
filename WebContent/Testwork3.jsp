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
.odd1{

}

.odd1:hover{

background: #e4e7ed;

}
.input2 input{
height:40px; }
.el-input__icon{
height:0;line-height:40px; 
}

</style> 
	
	<script type="text/javascript">
TT="<%=session.getAttribute("TT")%>";
listGsonAll=<%=session.getAttribute("listGsonAll") %>;

/*设置cookie*/ 
function setCookie(name,value,expires) {
 var exp = new Date();
 exp.setTime(exp.getTime() + expires*60*60*1000); 
document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString(); 
}

setCookie("TT",TT,4);

 //获取cookie 
function getCookie(name) {
 var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
 if(arr != null) return unescape(arr[2]);
 return false; }
 
 TT=getCookie("TT");

</script>				
				
	
</head>
<body >
<div id="app">

	<%@include file="TestHeader.jsp" %>
	
		<div class="container-fluid-full">
		<div class="row-fluid">
				
			<%@include file="TestMainMenu.jsp" %>
			
			
			
			<!-- start: Content -->
			<div id="content" class="span10">
			<%
			String userid=(String)session.getAttribute("userid_AllListServlet3");
			%>
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="ReturnIndex">主页</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">日常运维</a></li>
			</ul>

			<div >		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span>案例检索</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					
					
					<div class="box-content">
					
								  <div  class="input-prepend input-append">
								  <div style="float: left;">	<span class="add-on">故障编号</span><input style="width: 120px" id="stno" size="16" type="text"></div>
								<div style="float: left;"><span class="add-on">开始时间</span><input style="width: 120px" id="sdate" size="16" type="date"></div>
									<div style="float: left;" ><span class="add-on">结束时间</span>
									<input style="width: 120px" id="edate" size="16" type="date"></div>
									<div style="float: left;">
									<span class="add-on">关键字</span>
									<input style="width: 120px;" id="message" size="16" type="text"><button style="padding: 4px 12px;" class="btn" type="button" onclick="searchlist()" >搜索</button>
								  </div>
								  </div>
						
					</div>
					
					<div class="box-content">
						<table class="table table-bordered table-striped table-condensed">
							  <thead>
								  <tr>
									  <th>故障编号</th>
									  <th>设备编号</th>
									  
									  <th>巡检时间</th>
									  <th>故障内容</th> 
									  <th>详情</th>                                        
								  </tr>
							  </thead>   
							  <tbody id="idData">
								
								                                  
							  </tbody>
						 </table>  
			<%
			String listWaringSon=(String)session.getAttribute("listWaringSon");
			%>			
					
		<script type="text/javascript">
		
	
		var listWaringSon=<%=listWaringSon%>
		//listWaringSon=JSON.stringify(listWaringSon);
		//console.log(listWaringSon);
		ttt();
		function ttt() {
		    var text="";
			for (let i in listWaringSon) {
			    var stno = listWaringSon[i]["stno"];
			    var userpwd = listWaringSon[i]["userpwd"];
			    var sn = listWaringSon[i]["sn"];
			    var sdate = listWaringSon[i]["sdate"];
			    if (sdate==null) {
				sdate="0000-00-00";
			    }
			    var message = listWaringSon[i]["message"];
			    var time=listWaringSon[i]["time"];
			    if (time==null) {
				time="此条为故障跟踪记录";
			    }
			    var sdate1=sdate.substr(0,10);
			    time=sdate1+" "+time;
			    message=line2br(message);
			    if (message.length>70) {
				message=message.substr(0,30)+"......";
			    }
			    
			    
			    text += "<tr class=\"odd1\">";
			    text += "<td>"+stno+"</td>";
			    text += "<td class=\"center\">"+sn+"</td>";
			    text += "<td class=\"center\">"+time+"</td>";
			    text += "<td class=\"center\">"+message+"</td> ";
			   	text += "<td class=\"center \">";
			    if (userpwd=="restore") {
				text += "<a class=\"btn btn-Success\" href=\"WarningServlet5?userpwd="+userpwd+"&sn="+sn+"&stno="+stno+"\">";
				    text += "<i class=\"halflings-icon white zoom-in\"></i>  ";
				    text += "</a>";
			    }else {
				text += "<a class=\"btn btn-danger\" href=\"WarningServlet5?userpwd="+userpwd+"&sn="+sn+"&stno="+stno+"\">";
				    text += "<i class=\"halflings-icon white warning-sign\"></i>  ";
				    text += "</a>";
			    }
			   	
			    
			}
// 			console.log(text);
			document.getElementById("idData").innerHTML=text; 
		}
		
		
	
		    
		              var timer=null;
						 document.getElementById("idData").addEventListener('click',function(e){
						                   clearTimeout(timer);
						                   timer=setTimeout(function(){//初始化一个延时
						                   },250)
						                 },false);
					
							 document.getElementById("idData").addEventListener('dblclick',function(e){//双击事件会先触发两次单击事件，然后再执行双击事件，使用清除定时器来达到双击只执行双击事件的目的
						                   clearTimeout(timer);
						                   var T    =e.target.parentElement.getElementsByTagName("a");
									       console.log(T);
						                   location.href = T[0].href;
						                 },false);
							 
								function line2br(text){
								     return text.split("<br />").join(";");
								     }
							 
		</script>			

					
					
							
 <table >
    <tr><td><div id="barcon" name="barcon"></div></td></tr>
  </table>
					
				</div>
			</div>	<!--/row-->
			
			
		
			
 <div >		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span>设备故障信息</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
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
    row-key="id"
    border
    @row-dblclick="rowclick($event)"
    default-expand-all
    :tree-props="{children: 'children', hasChildren: 'hasChildren'}">
    <el-table-column
      prop="pname"
      label="系统名称"
      sortable
      show-overflow-tooltip
      >
    </el-table-column>
    <el-table-column
    show-overflow-tooltip
      prop="sn"
      label="序列号"
      sortable
      width="180">
    </el-table-column>
     <el-table-column
     show-overflow-tooltip
      prop="pos"
      label="机架位置"
      sortable
      width="110"
     >
    </el-table-column>
     <el-table-column
     
     show-overflow-tooltip
      label="IP地址"
      sortable
      width="130"
     >
     <template slot-scope="scope">
     {{(scope.row.ip).substring(0, (scope.row.ip).indexOf("/"))}}
     </template>
    </el-table-column>
     <el-table-column
     
     show-overflow-tooltip
      label="品牌"
      sortable
      width="80"
     >
     <template slot-scope="scope">
     {{(scope.row.styp).substring(0, (scope.row.styp).indexOf("/"))}}
     </template>
    </el-table-column>
     <el-table-column
     
     show-overflow-tooltip
      label="型号"
      sortable
    
     >
     <template slot-scope="scope">
     {{(scope.row.styp).substring( (scope.row.styp).lastIndexOf("/")+1)}}
     </template>
    </el-table-column>
    <el-table-column
     width="70px"
      fixed="right"
      label="操作">
         <template slot-scope="scope">
        <el-button
          size="mini"
          type="danger"
          @click="wraning(scope.$index, scope.row)" class="el-icon-warning-outline"></el-button>
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
			
			
		

			</div>
			</div>

<!-- 	</div>/.fluid-container -->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
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
	</div>
	
	
	<script type="text/javascript">
/**
 * 分页函数
 * pno--页数
 * psize--每页显示记录数
 * 分页部分是从真实数据行开始，因而存在加减某个常数，以确定真正的记录数
 * 纯js分页实质是数据行全部加载，通过是否显示属性完成分页功能
 **/
goPage(1, 5);

function goPage(pno, psize) {
	var itable = document.getElementById("idData");
// 	console.log(itable);
	var num = itable.rows.length;//表格所有行数(所有记录数)
// 	console.log(num);
	var totalPage = 0;//总页数
	var pageSize = psize;//每页显示行数
	var n1=num / pageSize;
	var n2=parseInt(num / pageSize);
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
// 	console.log(endRow);
	//遍历显示数据实现分页
	for (var i = 1; i < (num + 1); i++) {
		var irow = itable.rows[i - 1];
		if (i >= startRow && i <= endRow) {
			irow.style.display = "";
		} else {
			irow.style.display = "none";
		}
	}
	var tempStr = "共" + num + "条记录 分" + totalPage + "页 当前第" + currentPage + "页";
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
	<!-- start: JavaScript-->
	
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
	
	
	<script type="text/javascript" language="javascript" src="myjs/Testwork3.js" charset="utf-8"></script>
	<script>
$(function(){ //加载完成
 $("#list2 tr").mouseover(function(){   
      //如果鼠标移到class为list的表格的tr上时，执行函数 ，给该行添加class
      $(this).addClass("highlight");
  });
  $("#list2 tr").mouseout(function(){   
       //当鼠标移出该行时执行函数  ,移除class
      $(this).removeClass("highlight");
  });   
 });
 
</script>
	

	<!-- end: JavaScript-->
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
	allData:listGsonAll,
	subcontents:[],
    },
    mounted:function(){
	let items=this.allData;
	this.tableData=this.dataShow(items);
// 	console.log(this.tableData);
    },
    methods:{
	shaixuan:function(f){
            this.subcontents=listGsonAll;
             if ((f!=0) && (f!="")) {
                 this.subcontents = this.subcontents.filter(temp=>{
                     return   (temp['pname'].toLowerCase().includes(f.toLowerCase())||
                               temp['sn'].toLowerCase().includes(f.toLowerCase())||
                               temp['pos'].toLowerCase().includes(f.toLowerCase())||
                               temp['ip'].toLowerCase().includes(f.toLowerCase())||
                               temp['styp'].toLowerCase().includes(f.toLowerCase())
                               ) ;
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
// 	    console.log(e);
	    location.href = "WarningServlet2?sn="+e.sn;
	},
	wraning(n,e){
	    this.rowclick(e);
	},
    },
    watch:{
	input2:function(n,o){
// 	    console.log(n);
	    this.shaixuan(n);
	},
    },
})

</script>


</body>
</html>