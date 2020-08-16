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
	
</head>
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
				<li><a href="#">用户管理</a></li>
			</ul>


		<div id="main">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>密码修改</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal">
							<fieldset>
							  
							<% 
							
							String userid=(String)session.getAttribute("userid");
							String userpwd=(String)session.getAttribute("userpwd");
							String username=(String)session.getAttribute("username");
							int aut=(int)session.getAttribute("aut");
							String a=null;
							if (aut==1){
								a="管理员";
							}else if(aut==2){
								a="普通用户";
							}
							%>	
							
							<div style="padding-top: 20px;padding-left: 20px;padding-bottom: 20px;font-size: 16px;" >
								<b>用户名&nbsp;&nbsp;:&nbsp;&nbsp;<%=userid %></b>
								<b style="padding-left: 20px;">用户权限&nbsp;&nbsp;:&nbsp;&nbsp;<%=a %></b>
								 <input type="hidden" id="us0" value="<%=userpwd %>">
								 <input type="hidden" id="usn" value="<%=username %>">
								
							  </div>
							  
							  <div style="padding-left: 20px" class="control-group">
								  <div class="input-prepend">
									<span class="add-on">请输入原密码</span><input id="prependedInput0" size="16" type="text" >
								
								 </div> 
							  </div>
							  
							  <div style="padding-left: 20px" class="control-group">
								  <div class="input-prepend">
									<span class="add-on">请输入新密码</span><input id="prependedInput1" size="16" type="password" autocomplete="off">
								
								 </div> 
							  </div>
							
							<div style="padding-left: 20px" class="control-group">
								  <div class="input-prepend">
								<span class="add-on">再输一遍</span><input id="prependedInput2" size="16" type="password" autocomplete="off">
								<input type="button" id="psw1" style="margin-left: 10px;height: 16px;" class="btn btn-primary" value="确认修改密码" onclick="return pp()" />
								 </div> 
							  </div>
							  
							  <template v-if="isDay">
								<div style="padding-left: 20px" class="control-group">
								  <div class="input-prepend">
								<span class="add-on">提醒时间</span><input disabled="disabled" style="width: 30px;text-align: center;height: 24px;" v-model="day">
								<input type="button"  style="margin-left: 10px;height: 16px;" class="btn btn-primary" value="+" @click="add" />
								<input type="button"  style="margin-left: 10px;height: 16px;" class="btn btn-primary" value="-" @click="reduce" />
								 </div> 
							  </div>  
							</template>
								
							</fieldset>
						  </form>
					</div>
				</div><!--/span-->
			</div><!--/row-->

			
		<!-- excelButtom	 -->
			
				
				<div id="jurisdiction" style="display: none;">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>权限管理</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal">
							<fieldset>
							
							  <div style="padding-top: 20px;text-align: center;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;font-size: 25px;">添加用户</b><hr>
							</div>
							  
							  <div style="padding-left: 20px" class="control-group">
								  <div class="input-prepend">
									<span class="add-on">请输入用户姓名</span><input id="userid" size="16" type="text" >
								
								 </div> 
								 <div class="input-prepend">
								 <span class="add-on">请输入登陆帐号</span><input id="username" size="16" type="text" >
								 </div>
							  </div>
							  
							  <div style=" padding-left: 20px" class="control-group">
								  <div class="input-prepend">
									<span class="add-on">请输入新密码</span><input id="userpwd" size="16" type="password" autocomplete="off">
								
								 </div> 
								 <div class="input-prepend">
								<span class="add-on">再输一遍</span><input id="userpwd2" size="16" type="password" autocomplete="off">
								
								 </div> 
							  </div>
							
							<div style="padding-left: 20px" class="control-group">
								<label><b style="font-size: 16px;">用户权限:</b></label>
								<div style="display: inline;">
								  <label class="checkbox inline">
									<span><input  type="checkbox"  name="author" value="levela" ></span>管理员权限
								  </label>
								  <label class="checkbox inline">
									<span><input type="checkbox" name="author" value="con"></span> 合同权限
								  </label>
								  <label class="checkbox inline">
									<span><input type="checkbox" name="author" value="addevent"></span> 任务权限
								  </label>
								</div>
								
							  </div>
							  <div style="padding-left: 20px" class="control-group">
							  <input type="button" id="4" style="height: 16px;" class="btn btn-primary" value="添加" onclick="return addUser()" />
							  </div>
							  
							  
							  <div style="padding-top: 20px;text-align: center;">
							<b style="padding-left: 50px;padding-right: 52px;letter-spacing: 3px;font-size: 25px;">权限设置</b><hr>
							</div>
							  
							    <div style="padding-left: 20px" class="control-group">
								  <div class="input-prepend">
									<span class="add-on">请输入用户姓名</span><input id="search" size="16" type="text" >
								 </div> 
								 <input  type="button"  style="height: 16px;margin-bottom: 10px;" class="btn btn-lg" value="搜索" onclick="return searchUser()" />
							  </div>
							  
							  
							  <div style="padding-left: 20px" class="control-group">
								<label><b style="font-size: 16px;">用户权限:</b></label>
								<div id="upAuthor" style="display: inline;">
								  <label class="checkbox inline">
									<span ><input id="levela2" type="checkbox" value="levela" name="checkbox2" ></span>管理员权限
								  </label>
								  <label class="checkbox inline">
									<span><input type="checkbox" id="con2" value="con" name="checkbox2" ></span> 合同权限
								  </label>
								  <label class="checkbox inline">
									<span><input type="checkbox" id="addevent2"  value="addevent" name="checkbox2" ></span> 任务权限
								  </label>
								</div>
							  </div>
							  
							  <div style="padding-left: 20px" class="control-group">
							  <input type="button" id="updataUser" style="height: 16px;" class="btn btn-primary" value="修改" onclick="return updataUser1()" />
							  </div>
							  
							  
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->
			</div><!--/row-->
				

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
	<!-- end: JavaScript-->
<script type="text/javascript">
var vm=new Vue({
    el:'#main',
    data:{
	listusGson:listusGson,
	day:this.listusGson[0].day,
	isDay:false,
    },
    methods:{
	add(){
	    
	    let day=Number(this.day)+Number(1),
	    username=this.listusGson[0].username,
	    userpwd=this.listusGson[0].userpwd;
	    axios({
                url: '/dxtest/addday',
                   method: 'post',
                   data: {
                       "username":username,
                       "userpwd":userpwd,
                       "day":day,
                   },
                   enctype:'application/json',
             }).then((response)=>{
        	 if (response.data.statu) {
        	     listusGson=response.data.listusGson;
        	     this.day=listusGson[0].day;
		}else {
		    this.$message.error('修改出错');
		}
             }).catch((error)=>{
        	 this.$message.error('提交出错');
             })
	    
	},
	reduce(){
	    let day=this.day-1,
	    username=this.listusGson[0].username,
	    userpwd=this.listusGson[0].userpwd;
	    if (day>0) {
		axios({
	                url: '/dxtest/reduceday',
	                   method: 'post',
	                   data: {
	                       "username":username,
	                       "userpwd":userpwd,
	                       "day":day,
	                   },
	                   enctype:'application/json',
	             }).then((response)=>{
	        	 console.log(response.data);
	        	 if (response.data.statu) {
	        	     listusGson=response.data.listusGson;
	        	     this.day=listusGson[0].day;
			}else {
			    this.$message.error('修改出错');
			}
	             }).catch((error)=>{
	        	 console.log(error);
	        	 this.$message.error('提交出错');
	             })

		
	    }else {
		this.$message.error('提醒时间不能小于0');
	    }
	    
	},
    },
    mounted(){
	if (listusGson[0].con==1) {
	    this.isDay=true;
	}
	
    },
})

</script>
<script type="text/javascript">
usersallGson=<%=session.getAttribute("usersallGson")%>;
// console.log(listusGson);
if (listusGson[0].aut==1) {
   document.getElementById("jurisdiction").style.display="block"; 
}

function addUser() {
    var userid=document.getElementById("userid").value;
    var userpwd=document.getElementById("userpwd").value;
    var username=document.getElementById("username").value;
    var userpwd2=document.getElementById("userpwd2").value;
    var author=checkboxa("author");
   // console.log(author);
    var con="0";
	var addevent="0";
	var levela="0";
    if (author.length==0) {
	var con="0";
	var addevent="0";
	var levela="0";
    }else {
	if (author.indexOf("con")!=-1) {
	 con="1";   
	}
	if (author.indexOf("addevent")!=-1) {
	    addevent="1";
	}
	if (author.indexOf("levela")!=-1) {
	    levela="1";
	}
    }
   
//     console.log(con);
//     console.log(levela);
//     console.log(addevent);
    if (userid==""||userpwd==""||username==""||userpwd2=="") {
	 alert("表单有空值!");
	return false;
    }
    if (userpwd!=userpwd2) {
	 alert("两次密码不一致,请重新输入!");
	 return false;
    }
    
	for (var i = 0; i < usersallGson.length; i++) {
	   
		if (usersallGson[i].userid==userid) {
		    alert("已经存在相同的用户姓名!");
		    return false;
		    break;
		}
		 if (usersallGson[i].username==username) {
		    alert("已经存在相同的帐号!");
		    break;
		}
	}   
		    data="userid="+userid+"&userpwd="+userpwd+"&username="+username+"&author="+author+"&con="+con+"&addevent="+addevent+"&levela="+levela;
		    url="AddUser";
		    getPost(data,url);
}

function checkboxa(checkboxName){
    var box = document.getElementsByName(checkboxName);
    console.log(box);
    var bb=[];
    var cc="";
    for(i=0;i<box.length;i++){
        if(box[i].checked){
          console.log(box[i].value);  
            bb.push(box[i].value);
        }
    }
    if(bb.length==0){}else{cc=bb.toString()}
    return cc;
}

function getPost(data, url) {
    var httpRequest = new XMLHttpRequest(); // 第一步：创建需要的对象
    httpRequest.open('POST', url, true); // 第二步：打开连接
    httpRequest.setRequestHeader("Content-type",
	    "application/x-www-form-urlencoded"); // 设置请求头
    // 注：post方式必须设置请求头（在建立连接后设置请求头）
    httpRequest.send(data); // 发送请求 将情头体写在send中
    var json = null;
    httpRequest.onreadystatechange = function() { // 请求后的回调接口，可将请求成功后要执行的程序写在其中
	if (httpRequest.readyState == 4 && httpRequest.status == 200) { //  验证请求是否发送成功
	    var json = httpRequest.responseText; // 获取到服务端返回的数据
	    console.log(json);
	  var a= JSON.parse(json);
	  usersallGson=a[0].usersallGson;
// 	    console.log(a[0].usersallGson1); 
// 	    a[0].usersallGson= JSON.parse(json);
	}
    };
}

function searchUser() {
    var searchVal= document.getElementById("search").value;
    if (searchVal=="") {
	alert("请输入用户姓名!");
	return false;
    }
    data="userid="+searchVal;
	url="SearchAuthor";
	getPost1(data, url);
	
	function getPost1(data, url) {
	    var httpRequest = new XMLHttpRequest(); // 第一步：创建需要的对象
	    httpRequest.open('POST', url, true); // 第二步：打开连接
	    httpRequest.setRequestHeader("Content-type",
		    "application/x-www-form-urlencoded"); // 设置请求头
	    // 注：post方式必须设置请求头（在建立连接后设置请求头）
	    httpRequest.send(data); // 发送请求 将情头体写在send中
	    var json = null;
	    httpRequest.onreadystatechange = function() { // 请求后的回调接口，可将请求成功后要执行的程序写在其中
		if (httpRequest.readyState == 4 && httpRequest.status == 200) { //  验证请求是否发送成功
		    var json = httpRequest.responseText; // 获取到服务端返回的数据
// 		    console.log(json);
		    SearchAuthorGson= JSON.parse(json);
		    var dd=document.getElementById("upAuthor");
		    var dd=dd.getElementsByTagName("input");
		    var levelaE=dd[0].parentElement.classList;
		    var conE=dd[1].parentElement.classList;
		    var addeventE=dd[2].parentElement.classList;
		    levelaE.remove("checked");conE.remove("checked");addeventE.remove("checked");
			if (SearchAuthorGson[0].con==1) {
			    conE.add("checked");
			}
			if (SearchAuthorGson[0].addevent==1) {
			    addeventE.add("checked");
			}
			if (SearchAuthorGson[0].levela==1) {
			    levelaE.add("checked");
			}
		}
	    };
	    
	    
	    
	}
}


function updataUser1() {
   var author= checkboxa2("checkbox2");
//    console.log(author);
   var con="0";
	var addevent="0";
	var levela="0";
if (author.length==0) {
	var con="0";
	var addevent="0";
	var levela="0";
}else {
	if (author.indexOf("con")!=-1) {
	 con="1";   
	}
	if (author.indexOf("addevent")!=-1) {
	    addevent="1";
	}
	if (author.indexOf("levela")!=-1) {
	    levela="1";
	}
}
   
   var searchVal= document.getElementById("search").value;
   
	   if (searchVal=="") {
	    alert("请在搜索栏输入用户姓名!");
	}else {
	    for (var i = 0; i < usersallGson.length; i++) {
		if (usersallGson[i].userid==searchVal) {
		    data ="userid="+searchVal+"&con="+con+"&addevent="+addevent+"&levela="+levela;
		    url="UpdataAuthor";
		    getPost2(data, url);
		    break;
		}else {
		    if (i==usersallGson.length-1) {
			alert("没有相应的用户姓名!");
		    }
		    continue;
		}
	    }
	}
	   function getPost2(data, url) {
	    var httpRequest = new XMLHttpRequest(); // 第一步：创建需要的对象
	    httpRequest.open('POST', url, true); // 第二步：打开连接
	    httpRequest.setRequestHeader("Content-type",
		    "application/x-www-form-urlencoded"); // 设置请求头
	    // 注：post方式必须设置请求头（在建立连接后设置请求头）
	    httpRequest.send(data); // 发送请求 将情头体写在send中
	    var json = null;
	    httpRequest.onreadystatechange = function() { // 请求后的回调接口，可将请求成功后要执行的程序写在其中
		if (httpRequest.readyState == 4 && httpRequest.status == 200) { //  验证请求是否发送成功
		    var json = httpRequest.responseText; // 获取到服务端返回的数据
		    console.log(json);
		    if (json) {
			alert("修改成功!");
		    }else {
			alert("修改失败!");
		    }
		}
	    };
	}
	   
	   function checkboxa2(checkboxName){
	       var box = document.getElementsByName(checkboxName);
	       var bb=[];
	       var cc="";
	       for(i=0;i<box.length;i++){
	           if(box[i].parentElement.classList!=""){
	            // console.log(box[0].parentElement.classList);  
	               bb.push(box[i].value);
	           }
	       }
	       if(bb.length==0){}else{cc=bb.toString()}
	       return cc;
	   }
	}

</script>
<script type="text/javascript">
								username=listusGson[0].username;
								userpwd=listusGson[0].userpwd;

								function codeA(a) {
								      var codeA= encodeURIComponent(encodeURIComponent(a));
								       return codeA;
								      }
							function pp() {
							    var prependedInput0=document.getElementById("prependedInput0").value; 
							   var prependedInput1=document.getElementById("prependedInput1").value;
							//   var prependedInput1=document.getElementById("prependedInput1");
							   var prependedInput2=document.getElementById("prependedInput2").value;
							   var us0=listusGson[0].userpwd;
						 
							   var p1=codeA(prependedInput1);
							   var u=codeA(username);
							   var p0=codeA(prependedInput0);
// 							  console.log(prependedInput0); 
// 							  console.log(prependedInput1); 
// 							  console.log(prependedInput2); 
// 							   console.log(us0); 
							   
							   if (us0!=prependedInput0) {
							       alert("原密码错误");
								    return false;
							}
							   
							 else    if (prependedInput1=="") {
							       alert("请输入新密码");
								    return false;
							}
							   
							   else  if (prependedInput2=="") {
							    alert("请重新输入密码");
							    return false;
							} 
							   
							   else  if (prependedInput1!=prependedInput2) {
							    alert("重新输入密码与密码不一致");
							    return false;
							}
							else {
							   data="username="+username+"&userpwd0="+userpwd+"&userpwd1="+prependedInput1;
							   url="UpPwd";
							    getPost(data, url);
							} 
							}
							
							
							function getPost(data, url) {
							    var httpRequest = new XMLHttpRequest();// 第一步：创建需要的对象
							    httpRequest.open('POST', url, true); // 第二步：打开连接
							    httpRequest.setRequestHeader("Content-type",
								    "application/x-www-form-urlencoded");// 设置请求头
							    // 注：post方式必须设置请求头（在建立连接后设置请求头）
							    httpRequest.send(data);// 发送请求 将情头体写在send中
							    var json = null;
							    httpRequest.onreadystatechange = function() {// 请求后的回调接口，可将请求成功后要执行的程序写在其中
								if (httpRequest.readyState == 4 && httpRequest.status == 200) {// 验证请求是否发送成功
								    var json = httpRequest.responseText;// 获取到服务端返回的数据
							 	   console.log(json);
							 
							 	   if(json==1){alert('修改密码成功,请重新登陆!');window.location.href='/dxtest';}
								}
							    };
							}
							</script>


</body>
</html> 