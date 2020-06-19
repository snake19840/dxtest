<%@page import="com.clas.EquFile"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import="java.util.List"%>
<%@page import="com.clas.Equ"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http ://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<!-- start : Meta -->
	<meta charset="utf-8">
	<title>Home</title>
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="">
	<meta name="keyword" content="">
	<!-- end : Meta -->
	
	<!-- start : Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end : Mobile Specific -->
	
	<!-- start : CSS -->
	<link id="bootstrap-style" href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="css/style-responsive.css" rel="stylesheet">
	<link href='http ://fonts.googleapis.com/css?family=Open+Sans :300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end : CSS -->
	<link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">
<script src="myjs/vue.js" charset="GBK"></script>
<script src="myjs/axios.js" charset="GBK"></script>
<script src="element-ui/lib/index.js"></script>
	
	
	<style type="text/css">
.cc{text-align: left;padding-left: 20px;}
</style>	

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http ://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="css/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="css/ie9.css" rel="stylesheet">
	<![endif]-->
		
	<!-- start : Favicon -->
	<link rel="shortcut icon" href="img/favicon.ico">
	<!-- end : Favicon -->
	 <script type="text/javascript" language="javascript">	
// 	function checkall(){
// 		//document.getElementById("sn1").value=document.getElementById("sn").value	;
// 		//alert(document.getElementById("id1").value);
// 		formall.action="PrintTestServlet"; 
// 		formall.submit();
// 	}
	
	 </script>
	
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
</style>  
	 

	 
	 
</head>
<body>
<div id="app">

<%@include file="TestHeader.jsp" %>
		
	
		<div class="container-fluid-full">
		<div class="row-fluid">
				
			<%@include file="TestMainMenu.jsp" %>
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<!-- start : Content -->
			<div id="content" class="span10">
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="ReturnIndex">首页</a>
					<i class="icon-angle-right"></i> 
				</li>
				<li>
					<i class="icon-edit"></i>
					<a href="AllListServlet">设备查询</a>
					<i class="icon-angle-right"></i> 
				</li>
				<li>
					<i class="icon-edit"></i>
					<a href="#">详细</a>
					
				</li>
			</ul>
			


<%@include file="EquMain.jsp" %>			
			
			
			
			
			<div id="app2">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span>附件下载</h2>
						<div class="box-icon">
						<!-- 	<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
					
					
<el-table 
tooltip-effect="dark"
  :data="tableData.slice((currentPage-1)*pagesize,currentPage*pagesize)"
    style="width: 100%">
  
    <el-table-column
   
      label="上传时间"
      prop="redate">
    </el-table-column>
    
    
    <el-table-column
      label="文件名"
      prop="url"
      
      >
    </el-table-column>
    <el-table-column
      align="right">
      <template slot="header" slot-scope="scope">
       
      </template>
      <template slot-scope="scope">
        <el-button
          size="mini"
          @click="handleEdit(scope.$index, scope.row)">下载</el-button>
        <el-button
          size="mini"
          type="danger"
          @click="handleDelete(scope.$index, scope.row)">删除</el-button>
      </template>
    </el-table-column>
  </el-table>
	
		  <el-pagination

	:page-size="pagesize"   
   :page-sizes="[5,10]"
	layout="total,prev, pager, next,sizes"
		  @size-change="handleSizeChange"
      @current-change="handleCurrentChange"
      :current-page.sync="currentPage"

    :total="tableData.length">
  </el-pagination>
					
<!-- layout="total,jumper,prev, pager, next,sizes" -->
			        
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
	<div id="app3">
		<form action="" method="post" name="formall" align="center" id="formall"  >								
						
								   <input type ="hidden" id="id1" name="id1" :value ="id" >
								    <input type ="hidden" id="sn1" name="sn1" :value ="sn" >
								   					   
	<input   type="submit" name="buttonall" class="btn btn-primary" id="buttonall" value="打印页面"   @click="checkall">
								  
								
				</form>			 
	</div>	
		
			
			

	</div><!--/.fluid-container-->
	
	
		
	
			<!-- end : Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
		

<%@include file="footer.jsp" %>


</div>
	<!-- start : JavaScript-->

	<!-- end : JavaScript-->

</body>

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
	
	
<script type="text/javascript">
listG=<%=session.getAttribute("listG") %>;
var app3=new Vue({
   el:'#app3',
   data:{
       id:listGsons[0].id,
       sn:listGsons[0].sn,
   },
   methods:{
       checkall(){
	   console.log(this.id);
	   console.log(this.sn);
	   formall.action="PrintTestServlet";
		formall.submit();
       }
   }
});


var vm=new Vue({
    el:'#app2',
    data:{
	row:{},
	currentPage:1,
	pagesize:5,   
 	tableData: listG,
    },
    
    methods: {
	      handleSizeChange(size) {
// 		  console.log(size);
// 		  console.log(this);
// 	        console.log(`每页 ${val} 条`);
		  this.pagesize=size;
	      },
	      handleCurrentChange(currentPage) {
// 		console.log(this.pagesize);
// 		  console.log(currentPage);
// 		  console.log(this._data.currentPage1);
// 	        console.log(`当前页: ${val}`);
	      },
	      handleEdit(index, row) {
// 		        console.log(index, row);
		        location.href = "download.jsp?path="+row.url;
		      },
		      handleDelete(index, row) {
// 		        console.log(index, row);
		        
		        this.$confirm('此操作将永久删除该文件, 是否继续?', '提示', {
		            confirmButtonText: '确定',
		            cancelButtonText: '取消',
		            type: 'warning'
		          }).then(() => {
// 		              console.log(row.url);
					let param=new FormData();
// 					param=append("path",row.url);
					
					axios({
		    url: '/dxtest/DeleteFileServlet',
        method: 'get',
        params: {
            path: row.url,
            id:listGsons[0].id,
          
            },
        
		}).then((response)=>{
		   console.log(response);
		   
		    if (response.data.statu==1) {
			 this.$message.success('删除文件成功!');
			 this.tableData=response.data.WarningGsons;
			
		    }else {
			this.$message.error('删除文件失败!');
		    }
		}).catch((error)=>{
		    this.$message.error('删除文件错误');
		});

// 		              location.href = "DeleteFileServlet?path="+row.url;	
// 		            this.$message({
// 		              type: 'success',
// 		              message: '删除成功!'
// 		            });
// 		          }).catch(() => {
// 		            this.$message({
// 		              type: 'info',
// 		              message: '已取消删除'
// 		            });          
	          });
		      }
	    },
    
})
</script>
</html>