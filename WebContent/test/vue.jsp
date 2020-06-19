<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script type="text/javascript" charset="utf-8" src="../myjs/vue.js"></script>
<link id="index" href="../element-ui/lib/theme-chalk/index.css" rel="stylesheet">
<link id="bootstrap" href="../css/bootstrap.min.css" rel="stylesheet">
<link id="style" href="../css/style.css" rel="stylesheet">

<script src="../element-ui/lib/index.js"></script>
<meta charset="ISO-8859-1">
<style type="text/css">
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
  text-align: center;
  line-height: 36px;
  white-space:nowrap; 
	text-overflow:ellipsis; 
	overflow:hidden;
	padding: 0px 10px;	
  }
</style>
<title>Insert title here</title>
</head>
<body>
<div id="app">
    <el-button @click="visible = true">Button</el-button>
    <el-dialog :visible.sync="visible" title="Hello world">
      <p>Try Element</p>
    </el-dialog>


<div class="box span12">
<div data-original-title="" class="box-header">
		<h2>
			<i class="halflings-icon white user">
			</i>
			<span class="break">
		</span>
		测试
		</h2>
		<div class="box-icon">
			<a href="#" class="btn-minimize">
				<i class="halflings-icon white chevron-up">
				</i>
			</a>
		</div>
	</div>
	<div class="box-content">
	 <tempalte >   
<el-row >
  <el-col :span="4"><div class="grid-content " title="123456789123456789123456789">123456789123456789123456789</div></el-col>
  <el-col :span="8"><div class="grid-content ">12</div></el-col>
  <el-col :span="4"><div class="grid-content ">12</div></el-col>
  <el-col :span="8"><div class="grid-content ">12</div></el-col>
 
</el-row>
        
<el-row>
  <el-col :span="4"><div class="grid-content ">12</div></el-col>
  <el-col :span="8"><div class="grid-content ">12</div></el-col>
  <el-col :span="4"><div class="grid-content ">12</div></el-col>
  <el-col :span="8"><div class="grid-content ">12</div></el-col>
 
</el-row>
   </tempalte> 
	
	
	</div>
</div>   

    
    
    
  </div>

</body>
<script type="text/javascript">
var vm= new Vue({
    el: '#app',
    data: function() {
      return { 
	  visible: false ,
	  row:{
	    
	  }
      }
    }
  })

</script>


</html>