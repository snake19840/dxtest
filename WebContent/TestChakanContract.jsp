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
var tableList=new Vue({
    el:'#tableList',
    data:{
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
	shaixuan:function(f){
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
		  location.href = "ContractMain?contractid="+id;
	      },
	      edit(id){
		  location.href = "ContractEdit?contractid="+id;
	      },
	
	      copy(id){
		  location.href = "ContractCopy?contractid="+id;
	      },
	
	      del(id){
		  this. open(id);
		
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
		        	console.log(response.data);
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