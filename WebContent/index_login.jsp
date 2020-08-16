
<%@page import="java.util.ArrayList"%>
<%-- <%@page import="org.apache.jasper.tagplugins.jstl.core.If"%> --%>
<%@page import="com.clas.Turn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.util.List"%>
<%@page import="com.clas.Equ"%>
<%@page import="com.clas.Turn"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--  <!DOCTYPE html5 > -->
<html >
<head>
	
	<!-- start: Meta -->
	<meta charset="utf-8">
	<title></title>
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="">
	<meta name="keyword" content="">
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">
	<link id="bootstrap-style" href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
	<script src="myjs/vue.js" charset="GBK"></script>
<script src="myjs/axios.js" charset="GBK"></script>
<script src="element-ui/lib/index.js"></script>


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
	
			<style type="text/css">
			body {
	background: url(img/bg_dx.jpg) no-repeat;
    background-position: center 0;
    background-size: cover;
    min-height: 100vh;
}

.login-box{
 width: 420px;
}
.row-fluid .span10{
width: 200px;
}
			
		</style>
		
		
		
</head>

<body  onunload="goodbye()">
<%String loginId=(String)session.getAttribute("loginId"); %>
		<div  id="vue" class="container-fluid-full">
		<div class="row-fluid">
					
			<div class="row-fluid">
				<div class="login-box">
					<div style="padding: 20px  20px;padding-top: 30px;text-align:center;  font-family: KaiTi;text-size: 1px;font-size: 28px;">
<!-- 					<b>宁波电信IT机房运维管理系统</b> -->
					<img alt="" src="img/icon5_dx.fw.png">
<!-- 					<img alt="" src="img/icon6_dx.png" > -->
<!-- 						<a href="Testindex.jsp"><i class="halflings-icon home"></i></a> -->
<!-- 						<a href="#"><i class="halflings-icon cog"></i></a> -->
					</div>
					<div style="margin-left: -39%;text-align: center;">
					<h2 ><b>登陆您的帐户</b></h2>
					</div>
					
					<!-- <form class="form-horizontal" > -->
					<!-- <form class="form-horizontal" action="Testindex.jsp" method="post"> -->
						<fieldset>
						<form action="">
							<div class="input-prepend" title="Username">
								<span class="add-on"><i class="halflings-icon user"></i></span>
								<input class="input-large span10"  type="text" v-model="username" placeholder="请输入您的用户名"/>
							</div>
							<div class="clearfix"  ></div>

							<div class="input-prepend" title="Password">
								<span class="add-on"><i class="halflings-icon lock"></i></span>
								<input class="input-large span10"  v-model="userpwd" type="password" placeholder="请输入您的密码" autocomplete/>
							</div>
						
							<div  style="margin-left: -36%;text-align: center;">
							<input  type="checkbox" ref="remember" checked="checked"  @change="isRem" v-model="remember"/> 
							<span>记住密码</span>
							</div>
						</form>
							<div style="text-align: center;">	
								<button  class="btn btn-primary"  @click="login" >登陆</button>
							</div>
							<div class="clearfix" style="padding-bottom: 20px;padding-top: 0px;"></div>
				
				
					<!-- <h3>Forgot Password?</h3>
					<p>
						No problem, <a href="#">click here</a> to get a new password.
					</p>	 -->
				</div><!--/span-->
			</div><!--/row-->
			

	</div><!--/.fluid-container-->
	
		</div><!--/fluid-row-->
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
		<script type="text/javascript">

		//设置cookie
		function setCookie(name, value, day) {
		    var date = new Date();
		    date.setDate(date.getDate() + day);
		    document.cookie = name + '=' + value + ';expires=' + date;
		};


		//获取cookie
		function getCookie(name) {
		    var reg = RegExp(name + '=([^;]+)');
		    var arr = document.cookie.match(reg);
		    console.log(arr);
		    if (arr) {
		        return arr[1];
		    } else {
		        return '';
		    }
		};
		//删除cookie
		function delCookie(name) {
		    setCookie(name, null, -1);
		};
		
		
		var vm=new Vue({
			 el:"#vue",
		data:{
		    username:'',
		    userpwd:'',
		    remember:false,
		    checked:'checked',
		},
		 mounted(){
		    console.log(getCookie("remember"));
			if (getCookie("remember")=="true") {
			    this.$refs.remember.checked=true;
			    this.username=getCookie("usernameL");
			    this.userpwd=getCookie("userpwdL");
			}else {
			    this.$refs.remember.checked=false;
			}
		   
		},
		methods:{
		    isRem(){
// 			console.log(this.remember);
			if(this.remember){
			    setCookie("usernameL", this.username, 30);
			    setCookie("userpwdL", this.userpwd, 30);
			}else {
			    delCookie("usernameL");
			    delCookie("userpwdL");
			}
			 setCookie("remember", this.remember, 30);
		    },
		    
		    login(){
			setCookie("usernameL", this.username, 30);
			setCookie("userpwdL", this.userpwd, 30);
			
			axios({
			    method: 'post',
			    url:'/dxtest/LoginServlet2',
			    data:{
				'username':this.username,
				'userpwd':this.userpwd,
			    },
			    enctype:'application/json',
			}).then((response)=>{
			   
			    if (response.data.statu=="username_error") {
				 this.$message({
				            type: 'error',
				            message: '用户名错误!',
				        	duration:1500
				          });
			    }else if (response.data.statu=="userpwd_error") {
				 this.$message({
				            type: 'error',
				            message: '密码错误!',
				        	duration:1500
				          });
			    }else if (response.data.statu=="success") {
				setCookie("mark", 0, 1)
				console.log(getCookie("mark"));
// 				console.log(response.data.planalertlistGson);
// 				sessionStorage.setItem('planalertlistGsonStorage', JSON.stringify(response.data.planalertlistGson)); 
// 				console.log(sessionStorage.getItem('planalertlistGsonStorage'));
				location.href = "Testindex.jsp";
			    }
			    
			}).catch((error)=>{
			    console.log(error);
			})
			
		    },
		},
		watch:{
		},
		})
		
		
		</script>
		
	<!-- end: JavaScript-->
	
	
	
</body>
</html>
