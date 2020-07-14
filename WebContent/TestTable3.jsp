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
	
	
	 <script src="myjs/vue.js" charset="GBK"></script>
<script src="myjs/axios.js" charset="GBK"></script>
<script src="node_modules/moment/moment.js" charset="GBK"></script>
<script src="element-ui/lib/index.js"></script>
<link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">
<link rel="stylesheet" href="mycss/myvue.css">
	
	
	
	<style type="text/css">
.cc{text-align: left;padding-left: 20px;}
.el-upload{display: block;
    border: 0; 
    width: 0; 
   height: 0; 
}
.uploader{display: none;}
.el-card__header{padding: 10px 20px;}
 .text {
    font-size: 14px;
  }

  .item {
    margin-bottom: 18px;
  }
  .el-dropdown-link {
    cursor: pointer;
    color: #409EFF;
  }
  .el-icon-arrow-down {
    font-size: 12px;
  }

  .clearfix:before,
  .clearfix:after {
    display: table;
    content: "";
  }
  .clearfix:after {
    clear: both
  }

  .box-card {
    width: 480px;
  }
  .el-header, .el-footer {
    background-color: #B3C0D1;
    color: #333;
    text-align: center;
    line-height: 60px;
  }
  
  .el-aside {
    background-color: #D3DCE6;
    color: #333;
    text-align: center;
    line-height: 200px;
  }
  
  .el-main {
    background-color: #E9EEF3;
    color: #333;
    text-align: center;
    line-height: 160px;
  }
  
  body > .el-container {
    margin-bottom: 40px;
  }
  
  .el-container:nth-child(5) .el-aside,
  .el-container:nth-child(6) .el-aside {
    line-height: 260px;
  }
  
  .el-container:nth-child(7) .el-aside {
    line-height: 320px;
  }
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

<div id="app4">

</div>		



<%-- <%@include file="PartInput3.jsp" %>	 --%>
<div id="TB3">		
	<div class="box span12" ontablet="span6" ondesktop="span12" style="margin-left: 0%;">
		<div class="box-header">
		<h2><i class="halflings-icon white comment"></i><span class="break"></span>设备软硬件变更情况记录</h2>
		<div class="box-icon">
			<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
		</div>
	</div>
	<div class="box-content" >
	

 <div style="float: left;padding-left: 20px;"><span class="add-on">开始时间</span><input id="s_sdate" type="date" v-model="sx_sdate"></div>
  <div style="float: left;"><span class="add-on">结束时间</span><input id="s_edate" type="date" v-model="sx_edate" ></div>
   <div style="float: left;padding-left: 20px;">
<!-- 	<button class="btn btn-info" id="search" onclick="searchlist()" style="padding: 4px 12px; margin-bottom: 10px;" >搜索</button> -->
<div style="float: right;padding-right: 20px;" >
<el-button type="text" @click="dialogVisible = true" size="mini"  icon="el-icon-plus">添加</el-button>
</div>
	</div>

<div style="padding: 34px 0px;" id="w_masg" class="chat"  >
<ul >
<li name="li1"  id="ul1" v-for="(value,index) in listChageG">

<el-card ref="card" style="width:95%;margin-bottom: 10px;" class="box-card">
  <div slot="header" class="clearfix">
    <span style="padding-right: 10px;">记录人签名：{{value.rowData.USERS}}</span>
    <span style="padding-right: 10px;">登记时间:  {{value.rowData.CHAGEDATE}}</span>
   
    <el-dropdown style="float: right; padding: 3px 0;"  @command="handleCommand">
  <span class="el-dropdown-link">
    操作<i class="el-icon-arrow-down el-icon--right"></i>
  </span>
  <el-dropdown-menu   slot="dropdown">
    <el-dropdown-item :command="['edit',value.rowData.NOW,index]">
    编辑</el-dropdown-item>
<template v-if="value.rowData.USERS==this.listusGson[0].userid">
    <el-dropdown-item :command="['del',value.rowData.NOW]">删除</el-dropdown-item>
</template>
  </el-dropdown-menu>
</el-dropdown>
  </div>
  <template v-if="!value.flag">
    <span  style="float: left;white-space: pre-wrap;width: 70%;word-wrap:break-word;padding-bottom: 15px;">{{value.rowData.CONTENT}}</span>
   </template> 
   <template v-else>
    <span  style="float: left;white-space: pre-wrap;width: 70%;word-wrap:break-word;padding-bottom: 15px;">
    <el-input
  type="textarea"
  :rows="2"
   v-model:value="value.rowData.CONTENT">
   {{value.rowData.CONTENT}}
</el-input>
<el-button type="primary" size="mini" icon="el-icon-check" @click="edit_p(value.rowData.NOW,value.rowData.CONTENT)">确定</el-button>
    </span>
   </template> 
<!--     <span v-else style="float: left;width: 70%;word-wrap:break-word;padding-bottom: 15px;"> -->
<!--     <el-input style="white-space: pre-wrap;"  type="textarea" ></el-input> -->
<!--     <span style="float: right;"> -->
<!--      <el-button  type="success" icon="el-icon-check"  ></el-button> -->
<!--     </span> -->
<!--     </span> -->

</li>
</ul>

</div>

<div style="padding-left: 25px" class="block">
 <el-pagination
  @current-change="handleCurrentChange"
  @size-change="handleSizeChange"
 :page-size="pagesize"
 :page-sizes="pagesizes"
 :current-page.sync="currentPage"
    layout="total,sizes,prev, pager, next"
    :total="totalLen">
  </el-pagination>
</div>
	</div>

<!-- <div v-if="isRec" style="text-align: left;background-color: #eee !important;" class="box-content"> -->
<!-- <span style="margin-left:25px" id="select_name"> -->
<!-- 	<b>{{listusGson[0].userid}}</b> -->
<!-- </span> -->
<!-- <span>   -->

<!-- <select style="margin-left: 25px" ref="select_statu"   v-model="couponSelected" @change="getCouponSelected"> -->
<!-- 			<option :value=WarningStatuGson.rowData.STATU  v-for="(WarningStatuGson,index) in WarningStatuGsons" :key="index"> -->
<!-- 			{{WarningStatuGson.rowData.STATU}}</option> -->
<!-- </select> -->
<!-- </span> -->

<!-- <div v-if="TT"  style="display: inline;">&nbsp;&nbsp;&nbsp;&nbsp;<b>巡检时间:</b>&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- <input  type="datetime-local" v-model:value="getNowTime"></div> -->

<!-- <div style="padding: 10px 20px;padding-right: 50px;"> -->
<!-- <textarea id="w_text" style="margin: 0px 0px 10px; width: 100%; height: 85px;white-space: pre-wrap;" v-model:value="newMessage"></textarea> -->
<!-- </div> -->
<!-- <div  style="padding: 0px 20px; text-align: center;"> -->
<!-- <button class="btn btn-info" id="warningchart" @click="warningchart()"  >提交</button> -->
<!-- </div> -->

<!-- </div>				 -->

</div>	

<el-dialog
  title="请添加设备软硬件变更情况记录"
  :visible.sync="dialogVisible"
  width="60%"
  :before-close="handleClose">
  <b>变更日期： </b><input  type="date" v-model="chagedate">
<el-input
  type="textarea"
  :autosize="{ minRows: 2, maxRows: 4}"
  placeholder="请输入变更内容"
  v-model="textarea2">
</el-input>
  <span slot="footer" class="dialog-footer">
    <el-button @click="dialogVisible = false" size="mini">取 消</el-button>
    <el-button type="primary" @click="updatachage()" size="mini">确 定</el-button>
  </span>
</el-dialog>
</div><!--/row-->


	<div id="app3">
		<form action="" method="post" name="formall" align="center" id="formall"  >								
			<input type ="hidden" id="id1" name="id1" :value ="id" >
			<input type ="hidden" id="sn1" name="sn1" :value ="sn" >
		<input   type="submit" name="buttonall" class="btn btn-primary" id="buttonall" value="打印页面"   @click="checkall">								
		</form>			 
	</div>	
		
			
			

	</div>
	
	
		
	
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
listChageG=<%=session.getAttribute("listChageG") %>;
tatolGson=<%=session.getAttribute("tatolGson") %>;
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



<script type="text/javascript">
 function fd(date) {
    //date为字符串
    var date= new Date(Date.parse(date.replace(/-/g,  "/")));
      var y = date.getFullYear();  
      var m = date.getMonth() + 1;  
      m = m < 10 ? '0' + m : m;  
      var d = date.getDate();  
      d = d < 10 ? ('0' + d) : d;  
      return y + '-' + m + '-' + d;  
  }
 
 var nd=fd(Date());


var tb3=new Vue({
    el:'#TB3',
    data:{
	listChageG:listChageG,
	listusGson:listusGson,
	dialogVisible: false,
	chagedate:nd,
	textarea2:"",
	pagesize:5,
	pagesizes:[5, 20],
	totalLen:tatolGson,
	currentPage:1,
	sx_sdate:"",
	sx_edate:"",
	isRec:false,
	now:"",
	control:"",
	isEdit:true,
    },
    
    methods:{
	edit_p(now,content){
	    this.now=now;
	    this.content=content;
	    this.ax();
	},
	edit(now,index){
	    this.listChageG[index].flag=this.listChageG[index].flag?  false:true;
	    },
	del(now){
	this.now=now;
	this.ax();
	},
	 handleCommand(command) {
	   this.control=command[0];
	   if (command[0]=="edit") {
	       this.edit(command[1],command[2]);
	}else {
	    this.control=command[0];
	    this.del(command[1]);
	}
	      },
	handleClose(done) {
	    this.dialogVisible=false;
	      },
	      shaixun(){
		  this.ax();
	      },
	      handleSizeChange(val) {
		        this.pagesize =val;
		       this.ax();
		      },
		      ax(){
			  axios.get('/dxtest/Changesize', {
			            params: {
			        	id:listGsons[0].id,
			            m: this.pagesize,
			            n:this.currentPage,
			            sdate:this.sx_sdate,
			            edate:this.sx_edate,
			            nowdate:this.now,
			            control:this.control,
			            content:this.content,
			            }
			            })
			            .then( (response)=> {
			        	this.listChageG=response.data.listChageG;
			        	this.totalLen=response.data.tatolGson;
			        	 this.nowdate="";
				         this.control="";
			            })
			            .catch((error)=> {
			            console.log(error);
			            })
			            .then(function () {
			            // always executed
			            });
		      },
		      
	      handleCurrentChange(val) {
			  this.currentPage=val;
			  this.ax();
		      },
	   
	updatachage(){
	
		 if (this.textarea2=='') {
		     this.$message.error('请输入变更内容');
		  return
		}
		  axios({
	                    url: '/dxtest/Updatachage',
	                       method: 'post',
	                       data: {
	                	   'users':this.listusGson[0].userid,
	                	   'chagedate':this.chagedate,
	                	   'content':this.textarea2,
	                	   'id':listGsons[0].id,
	                	   'm':this.pagesize,
	                       },
	                       enctype:'application/json',
	                 }).then((response)=>{
	                     console.log(response.data);
	                     if (response.data.statu) {
	                	 this.listChageG=response.data.listChageG;
	                	 this.totalLen=response.data.tatolGson;
	                	 this.$message.success('添加成功');
	                	 this.content="";
	                	 this.dialogVisible=false
			    }else {
				this.$message.error('添加失败');
				return
			    }
	                 }).catch((error)=>{
	                     this.$message.error('错误');
	                 });
	      }
    },
    watch: {          
		sx_sdate:function(n,o) {
		    this.sx_sdate=n;
		    this.shaixun();
       },
       sx_edate:function(n,o) {
	  
	   this.sx_edate=n;
	   this.shaixun();
       },
}
    
})

</script>
</html>