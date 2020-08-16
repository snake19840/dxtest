<%@page import="java.util.ArrayList"%>
<%@page import="com.clas.Turn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.util.List"%>
<%@page import="com.clas.Equ"%>
<%@page import="com.clas.Turn"%>
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
		<style type="text/css">
.cc{text-align: left;padding-left: 20px;}
</style>
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






	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="css/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="css/ie9.css" rel="stylesheet">
	<![endif]-->
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="img/favicon.ico">
	<!-- end: Favicon -->
	<script type="text/javascript">
	</script>	
	<style type="text/css">
.input2 input{
height:40px; }
.el-input__icon{
height:0;line-height:40px; 
}
</style>		
	<style type="text/css">
.input2 input{
height:40px; 

}

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
.el-input--suffix .el-input__inner {
   
    padding-left: 20px;
}
.radio{display: none; }
</style> 
	
</head>
<body   onload="loadDoc()">


<%@include file="TestHeader.jsp" %>
		
	
		<div class="container-fluid-full">
		<div class="row-fluid">
				
			<%@include file="TestMainMenu.jsp" %>
			
			<!-- start: Content -->
			<div id="content" class="span10">
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="ReturnIndex">首页</a>
					<i class="icon-angle-right"></i> 
				</li>
				<li>
					<i class="icon-edit"></i>
					<a href="#">机房环境问题录入</a>
				</li>
			</ul>
						

<script type="text/javascript">
</script>

<div id="warning">
		
		<div class="box span12" ontablet="span6" ondesktop="span12" style="margin-left: 0%;">
		<div class="box-header">
		<h2><i class="halflings-icon white comment"></i><span class="break"></span>机房环境问题录入</h2>
		<div class="box-icon">
			<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
		</div>
	</div>
	<div class="box-content" >
	<div style="padding-left: 34px;padding-top: 20px;">
	<el-select v-model="value" placeholder="请选择">
    <el-option
      v-for="item in options"
      :key="item.value"
      :label="item"
      :value="item">
    </el-option>
  </el-select>
	</div>
	<template v-if="this.value=='机房环境'">
<div style="padding-left: 40px;padding-top: 20px;text-align: left;">
<el-radio v-model="radio" label="门禁、门锁故障">门禁、门锁故障</el-radio>
<el-radio v-model="radio" label="温、湿度不正常">温、湿度不正常</el-radio>
<el-radio v-model="radio" label="天花板、墙体、玻璃问题">天花板、墙体、玻璃问题</el-radio>
<el-radio v-model="radio" label="其它问题">其它问题</el-radio>
</div>
</template>
<template v-else-if="this.value=='卫生环境'">
<div style="padding-left: 40px;padding-top: 20px;text-align: left;">
<el-radio v-model="radio" label="卫生面貌问题">卫生面貌问题</el-radio>
<el-radio v-model="radio" label="有异味、异物、异常痕迹">有异味、异物、异常痕迹</el-radio>
<el-radio v-model="radio" label="机房工具不齐全,摆放不整齐">机房工具不齐全,摆放不整齐</el-radio>
<el-radio v-model="radio" label="其它问题">其它问题</el-radio>
</div>
</template>
<template v-else>
<div style="padding-left: 40px;padding-top: 20px;text-align: left;">
<el-radio v-model="radio" label="有用电安全隐患">有用电安全隐患</el-radio>
<el-radio v-model="radio" label="有火灾安全隐患">有火灾安全隐患</el-radio>
<el-radio v-model="radio" label="有水灾安全隐患">有水灾安全隐患</el-radio>
<el-radio v-model="radio" label="有鼠害安全隐患">有鼠害安全隐患</el-radio>
<el-radio v-model="radio" label="其它问题">其它问题</el-radio>
</div>
</template>



<div style="padding-left: 40px;padding-top: 20px;text-align: left;width: 90%;">
<el-input
  type="textarea"
  :autosize="{ minRows: 4, maxRows: 6}"
  placeholder="检查异常描述"
  v-model="textarea">
</el-input>
</div>

<div style="float: right;padding-top: 20px;padding-right: 10%;padding-bottom: 30px;">
<el-button size="mini" type="primary" @click="Updata()">提交</el-button>
</div>
	
	</div>
	</div>
	</div>
		
		
	<!-- 提交故障信息描述	 -->
		
		<!-- 提交故障信息描述	 -->
			
		</div><!--/fluid-row-->
</div>
</div>
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
	
	<!-- start: JavaScript-->

	
  <script type="text/javascript"></script>
		<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/jquery-migrate-1.0.0.min.js"></script>
	<script src="myjs/pag.js" charset="GBK">
	</script>
	
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
<!-- 		<script charset="GBK" type="text/javascript" src="myjs/Liedit.js"></script> -->
	<!-- end: JavaScript-->
<script type="text/javascript">
function getCookie(name) {
    var arr = document.cookie.match(new RegExp("(^| )" + name +  "=([^;]*)(;|$)"));
    
   if(arr != null)
  {
let ll=arr[2].indexOf("/")==-1?  arr[2].length:arr[2].indexOf("/");
  return  unescape(arr[2].substr(0,ll));
}
return null;
    
}

EnvServlet_sdate=getCookie("EnvServlet_sdate");
EnvServlet_edate=getCookie("EnvServlet_edate");
EnvServlet_userid=getCookie("EnvServlet_userid");
EnvServlet_statu=getCookie("EnvServlet_statu");
EnvServlet_time=getCookie("EnvServlet_time");

var vm=new Vue({
    el:'#warning',
    data:{
	a:1,
	value:"机房环境",
	textarea:'',
	EnvServlet_sdate:EnvServlet_sdate,
	EnvServlet_edate:EnvServlet_edate,
	EnvServlet_userid:EnvServlet_userid,
	EnvServlet_statu:EnvServlet_statu,
	EnvServlet_time:EnvServlet_time,
	options:["机房环境","卫生环境","安全隐患"],
	radio:'',
    },
    methods:{
	Updata(){
// 	    console.log(this.value);
// 	    console.log(this.radio);
// 	    console.log(this.EnvServlet_edate);
	    if (this.radio=='' ) {
		this.$message.warning('请选择类型!');
		return
	    }
	    else if  ( this.textarea=='') {
		this.$message.warning('请输入内容!');
		return
	    }
	   
	    axios.get('/dxtest/EnvServlet', {
		params: {
		    value: this.value,
		    radio: this.radio,
		    textarea: this.textarea,
		    EnvServlet_sdate:this.EnvServlet_sdate,
			EnvServlet_edate:this.EnvServlet_edate,
			EnvServlet_userid:this.EnvServlet_userid,
			EnvServlet_statu:this.EnvServlet_statu,
			EnvServlet_time:this.EnvServlet_time,
		}
		})
		.then( (response)=> {
		console.log(response);
		
		this.$message.warning('录入成功!');
		location.href='ReturnIndex';
		})
		.catch( (error) =>{
		console.log(error);
		this.$message.warning('录入内容出错!');
		return
		});
	    
	},
    },
    watch:{

    },
    
})

</script>


</body>
</html>