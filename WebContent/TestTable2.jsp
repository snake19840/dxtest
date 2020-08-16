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
	
	
</head>
<body>
<script type="text/javascript">
listGsonAll=<%=session.getAttribute("listGsonAll") %>;
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
				<li><a href="#">设备查询</a></li>
			</ul>



			<div >		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span>查询设备</h2>
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
      min-width="167"
      >
    </el-table-column>
    <el-table-column
    show-overflow-tooltip
      prop="sn"
      label="序列号"
      sortable
     min-width="88">
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
   sort-by="ip"
   
     >
     <template slot-scope="scope">
     {{(scope.row.ip).substring(0, (scope.row.ip).indexOf("/"))}}
     </template>
    </el-table-column>
     <el-table-column
     
     show-overflow-tooltip
      label="品牌"
      sortable
         sort-by="styp"
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
     sort-by="styp"
     >
     <template slot-scope="scope">
     {{(scope.row.styp).substring( (scope.row.styp).lastIndexOf("/")+1)}}
     </template>
    </el-table-column>
     <el-table-column
      prop="sname"
      label="设备类型"
      sortable
       sort-by="sname"
      width="102">
    </el-table-column>
    
    <el-table-column
     width="70px"
      fixed="right"
      label="操作">
         <template slot-scope="scope">
        <el-button
          size="mini"
          type="primary"
          @click="wraning(scope.$index, scope.row)" class="el-icon-search"></el-button>
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

			
		<!-- excelButtom	 -->
			

		<!-- <table  id="item">  -->
	 <table style="display: none;" id="item"> 
	<tr>
    <th>卡片编号</th>
     <th>初次搬入机房日期</th>
    <th>档案最后变更日期</th>
    <th>设备所属项目系统名称</th>
    <th>设备用途</th>
   <th>设备资产单位</th>
    <th>系统集成商</th>
    <th>系统维护责任人</th>
    <th>代维单位</th>
    <th>维护形式</th>
    <th>设备名称</th>
    <th>品牌/型号</th>
    <th>机房/机架位置</th>
    <th>IP地址</th>
    <th>网线编号</th>
    <th>CPU型号</th>
    <th>内存</th>
    <th>硬盘</th>
     <th>操作系统</th>
    <th>数据库版本</th>
    <th>设备序列号</th>
    <th>备注</th> 
   </tr>
   <%
				// 获取图书信息集合
					List<Equ> list2 = (List<Equ>)request.getAttribute("list");
               
					// 判断集合是否有效
					if(list2 == null || list2.size() < 1){
						
						out.print("没有数据！");
					}else{
						// 遍历集合中的数据
						for(Equ equ : list2){
						
							
			%>
   
  <tr>
    <td style="vnd.ms-excel.numberformat:@;"><%=equ.getSid()%></td>
    <td><%=equ.getStdate()%></td>
    <td><%=equ.getRedate()%></td>
    <td><%=equ.getPname()%></td>
    <td><%=equ.getUse()%></td>
     <td><%=equ.getOwnname()%></td>
    <td><%=equ.getProname()%></td>
    <td><%=equ.getManname()%></td>
    <td><%=equ.getAgename()%></td>
    <td><%=equ.getMantyp()%></td>
    <td><%=equ.getSname()%></td>
    <td><%=equ.getStyp()%></td>
    <td><%=equ.getPos()%></td>
    <td><%=equ.getIp()%></td>
    <td><%=equ.getPort()%></td>
    <td><%=equ.getCpu()%></td>
    <td><%=equ.getMemory()%></td>
    <td><%=equ.getDisk()%></td>
    <td><%=equ.getSyn()%></td>
    <td><%=equ.getOracle()%></td>
     <td style="vnd.ms-excel.numberformat:@;"><%=equ.getSn()%></td>
      <td><%=equ.getOth()%></td> 
    
    
  </tr>
 				<%
					}
				}
			%> 
	</table>	
		
	
		<form action="" method="post" name="formall" align="center" id="formall">		
		<input type="hidden" id="id1" name="id1" value="46">
	 <!-- <input type="submit" name="buttonall" class="btn btn-primary" id="buttonall" value="导出EXCEL" onclick="tableToExcel('item','data')">  -->
		<input type="button"  id="excel" class="btn btn-primary"  value="导出EXCEL" >
</form>	
		<!-- excelButtomEnd	 -->
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
		
	<!-- end: JavaScript-->

<script type="text/javascript">
    
//点击导出按钮
 $("#excel").click(function(){
 	var fileName = $("电信9楼机房设备").text();// 获取表格名称
     var table = document.getElementById("item");// 通过id获取
     var excelContent = table.innerHTML;
     var excelFile = "<html xmlns:o='urn:schemas-microsoft-com:office:office' xmlns:x='urn:schemas-microsoft-com:office:excel' xmlns='http://www.w3.org/TR/REC-html40'>";
     excelFile += "<head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>worksheet</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head>";
     excelFile += "<body><table>";
     excelFile += excelContent.replace(/\n/g,"<br style='mso-data-placement:same-cell;'/>") ;
     excelFile += "</table></body>";
     excelFile += "</html>";
     var link = "data:application/vnd.ms-excel;base64," + base64(excelFile);
     var a = document.createElement("a");
     a.download = "电信9楼机房设备.xls";
     a.href = link;
     a.click();
 });

 function base64 (content) {
     return window.btoa(unescape(encodeURIComponent(content)));
 }

   
</script>

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
            console.log(this.subcontents);
             if ((f!=0) && (f!="")) {
                 this.subcontents = this.subcontents.filter(temp=>{
                     return   (temp['pname'].toLowerCase().includes(f.toLowerCase())||
                               temp['sn'].toLowerCase().includes(f.toLowerCase())||
                               temp['pos'].toLowerCase().includes(f.toLowerCase())||
                               temp['ip'].toLowerCase().includes(f.toLowerCase())||
                               temp['styp'].toLowerCase().includes(f.toLowerCase())||
                               (temp['sname']!=null ? temp['sname'].toLowerCase().includes(f.toLowerCase()):0)
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
// 	    console.log(e);
		window.open("ChakanTestServlet?id="+e.id);
//  	    location.href = "ChakanTestServlet?id="+e.id;
	    
	},

	wraning(n,e){
	    this.rowclick(e);
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