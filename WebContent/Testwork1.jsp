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
<style type="text/css">
.input2 input{
height:40px; }
.el-input__icon{
height:0;line-height:40px; 
}
</style>	
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="img/favicon.ico">
	<!-- end: Favicon -->
	<script type="text/javascript">
	listGsonAll=<%=session.getAttribute("listGsonAll") %>;
TT="<%=session.getAttribute("TT")%>";
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
console.log(TT);
</script>
	
	
</head>
<body>


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
<!--      <el-table-column -->
<!--       prop="sname" -->
<!--       label="设备类型" -->
<!--       sortable -->
<!--       min-width="102"> -->
<!--     </el-table-column> -->
    
    <el-table-column
    width="70"
      fixed="right"
      label="操作"
      >
         <template slot-scope="scope">
        <el-button
          size="mini"
          type="danger"
          @click="wraning(scope.$index, scope.row)" class="el-icon-edit-outline"></el-button>
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
		
	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a>
			<a href="#" class="btn btn-primary">Save changes</a>
		</div>
	</div>
	<div class="common-modal modal fade" id="common-Modal1" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content">
			<ul class="list-inline item-details">
				<li><a href="http://sc.chinaz.com">Admin templates</a></li>
				<li><a href="http://sc.chinaz.com">Bootstrap themes</a></li>
			</ul>
		</div>
	</div>
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
	<script type="text/javascript" language="javascript">			
	
	
	function loadDoc() {
		 $.ajax({
             type:"post",            //传输方式为post，所以我们在servlet里面代码是写在doPost()函数中
             url:"DataServlet1",      //这就是使用的servlet的url
             success:function(data){
            	var obj= JSON.parse(data);
            	//console.log(obj);
            	//console.log(obj["1"]);
            	var str = "";
            	for(var i in obj){
            		var v1 = obj[i];
            		var pname = v1["pname"];
            	//	console.log(pname);
            		  var sn = v1["sn"];
            		 
            	var pos=v1["pos"];
            		var ip = v1["ip"];  
            		  var ip1=ip.substring(0, ip.indexOf("/")); 
            		  var styp = v1["styp"];  
            		  var	styp1=styp.substring(0, styp.indexOf("/"));	
            		  var sname = v1["sname"];
            		  var id = v1["id"];
            		//console.log(ip1); 
            		 str += "<tr><td id=Pname>"+pname+"</td><td class=\"center\">"+sn+"</td><td class=\"center\">"+pos+"</td><td class=\"center\">"+ip1+"</td><td class=\"center\">"+styp1+"</td><td class=\"center\">"+sname+"</td><td class=\"center\"><a class=\"btn btn-info\" target=\"_blank\" href=\"EditTestServlet?id="+id+"\"><i class=\"halflings-icon white warning-sign\"></i></a></td></tr>"; 
            		// str += "<tr><td >"+pname+"</td> <td class=\"center\">"+sn+"</td></tr>"; 
            
            	}; 
            	
            	document.getElementById("tbody").innerHTML = str;
            	}
		});
		 }
		  
</script>	
	
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
	
	<!-- end: JavaScript-->

<script type="text/javascript">
var tableList=new Vue({
    el:'#tableList',
    data:{
	isDel:false,
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
	let levela=listusGson[0].levela;
	if (levela==1) {
	    this.isDel=true;
	}
// 	console.log(this.tableData);
    },
    methods:{
	shaixuan:function(f){
            this.subcontents=listGsonAll;
//             console.log(this.subcontents);
             if ((f!=0) && (f!="")) {
                 this.subcontents = this.subcontents.filter(temp=>{
                     return   (temp['pname'].toLowerCase().includes(f.toLowerCase())||
                               temp['sn'].toLowerCase().includes(f.toLowerCase())||
                               temp['pos'].toLowerCase().includes(f.toLowerCase())||
                               temp['ip'].toLowerCase().includes(f.toLowerCase())||
                               temp['styp'].toLowerCase().includes(f.toLowerCase())
//                                ||(temp['sname']!=null ? temp['sname'].toLowerCase().includes(f.toLowerCase()):0)
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
		window.open("WarningServlet2?sn="+e.sn);
// 	    location.href = "WarningServlet2?sn="+e.sn;
	    
	},
	wraning(n,e){
	    this.rowclick(e);
	},

	
	open(e) {
	        this.$confirm('此操作将永久删除该文件, 是否继续?', '提示', {
	          confirmButtonText: '确定',
	          cancelButtonText: '取消',
	          type: 'warning'
	        }).then(() => {
	            axios.get('/dxtest/DeleteTestServlet', {
	        	params: {
	        	    id: e.id
	        	}
	        	})
	        	.then(function (response) {
	        
	        	if (response.data.statu) {
	        	    tableList.$message({
		   	            type: 'success',
		   	            message: '删除成功!'
		   	          });
	        	    
	        	    tableList.allData=response.data.listGsonAll;
	        	    let items=tableList.allData;
	        	    tableList.tableData=tableList.dataShow(items);
			}
	        	   
	        	})
	        	.catch(function (error) {
	        	console.log(error);
	        	})
	        	.then(function () {
	        	// always executed
	        	});
	        }).catch(() => {
	            tableList.$message({
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