<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	
	<link rel="stylesheet" href="alert/css/alert.css">
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
				<li><a href="#">权限管理</a></li>
			</ul>



			<div id="testPerm">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span>用户列表</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
					 
						 <table class="table table-striped table-bordered bootstrap-datatable datatable"> 
						
						  <thead>
							   <tr >
								  <th>用户姓名</th>
								  <th>用户ID</th>
								  <th>管理员</th>
								  <th>提醒天数</th>
								  <th>编辑</th>
								  <th>删除</th>
								 <th>合同</th>
								 <th>预设人员</th>
								  <th>操作</th>
							  </tr> 
							 </thead>   
						  <tbody id="list1">
<!-- 						  edi:'×', -->
<!-- 		del: '×', -->
<!-- 		con: '×', -->
<!-- 		levela: '×', -->
<!-- 		addevent:'×' -->
							 <tr v-for="(user,index) in users">
								<td>{{user.userid}}</td>
								<td class="center">{{user.username}}</td>
								<td class="center" v-if="user.levela==1">{{truea}}</td><td class="center" v-else>{{falsea}}</td>
								<td class="center">{{user.day}}</td>
								<td class="center" v-if="user.edi>0">{{truea}}</td><td class="center" v-else>{{falsea}}</td>
								<td class="center" v-if="user.del>0">{{truea}}</td><td class="center" v-else>{{falsea}}</td>
								<td class="center" v-if="user.con>0">{{truea}}</td><td class="center" v-else>{{falsea}}</td>
								<td class="center" v-if="user.addevent>0">{{truea}}</td><td class="center" v-else>{{falsea}}</td>
								<td class="center">
									 <button class="btn btn-info" @click="editx(user.username,index)"><i class="halflings-icon white edit"></i>  </button>
									<button class="btn btn-danger" @click="delx(user.username,index)"><i class="halflings-icon white trash"></i>   </button>
								</td>
							</tr>

							
						  </tbody>
					  </table>  
					  <div @click="addx()" style="text-align: center;"><button class="btn btn-info"><i class="halflings-icon  white plus"></i>添加人员</button>   </div>   
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
<script src='alert/js/alert.js' charset="utf-8"></script>
		<script src="js/custom.js"></script>
		<script src="myjs/vue.js" charset="GBK"></script>
	<!-- end: JavaScript-->
	<script src="element-ui/lib/index.js"></script>
	<script type="text/javascript">
	
	</script>
	
	

<script type="text/javascript">

usersallGson=<%=session.getAttribute("usersallGson")%>;
M={};
M2={};
 vm=new Vue({
    el:'#testPerm',
    data:{
		users:usersallGson,
		edi:'×',
		del: '×',
		con: '×',
// 		levela: '×',
		addevent:'×',
		truea:'√',
		falsea:'×'
    },
	methods:{
	    editx:function (e,e2) {
		searchUser(e,e2);
		},
		addx: function () {
		    add();
		},
		delx: function (e,e2) {
		    if (confirm("是否删除用户？点击确认删除")) {
			del(e,e2); 
                    } else {
                        return;// 取消执行时的代码
                    }
		}
		
	}
})

 
 function del(e,e2) {
//     alert(e+"-"+e2);
    
    data="username="+e;
    url="DelUser";
    getPostdel(data,url);
    
	function getPostdel(data, url) {
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
		    var obj=JSON.parse(json);
		    console.log(obj);
		    if (obj.deluser) {
			alert("添加成功!");
		 }else {
			alert("添加失败!");
		 }
		    usersallGson=obj.usersallGson;
		}
		vm.users=usersallGson;
	    };
	}
    
}
 
 function addUser() {
	    var userid=document.getElementById("userid").value;
	    var userpwd=document.getElementById("userpwd").value;
	    var username=document.getElementById("username").value;
	    var userpwd2=document.getElementById("userpwd2").value;
	    var author= document.getElementsByName('checkbox2');
	
	    var con="0";
	    var conedit="0";
	    var condel="0";
		var addevent="0";
		var levela="0";
	    if (author.length==0) {
		var con="0";
		var addevent="0";
		var levela="0";
	    }else {
		if (author[1].checked) {
		 con="1";   
		}
		if (author[1].checked) {
			 conedit="1";   
			}
		if (author[1].checked) {
			 condel="1";   
			}
		if (author[2].checked) {
		    addevent="1";
		}
		if (author[0].checked) {
		    levela="1";
		}
	    }
	   
//	     console.log(con);
//	     console.log(levela);
//	     console.log(addevent);
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
			    data="userid="+userid+"&userpwd="+userpwd+"&username="+username+"&author="+author+"&con="+con+"&conedit="+conedit+"&condel="+condel+"&addevent="+addevent+"&levela="+levela;
			    url="AddUser";
			    getPostadd(data,url);
			    
				function getPostadd(data, url) {
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
					    var obj=JSON.parse(json);
					    console.log(obj);
					    if (obj.updataUser) {
						alert("添加成功!");
					 }else {
						alert("添加失败!");
					 }
					    usersallGson=obj.usersallGson;
					}
					vm.users=usersallGson;
				    };
				}
			    
	} 
  
function alertx(SearchAuthorGson) {
	
	

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
		 //   console.log(json);
		  var a= JSON.parse(json);
		  usersallGson=a[0].usersallGson;
//	 	    console.log(a[0].usersallGson1); 
//	 	    a[0].usersallGson= JSON.parse(json);
		}
	    };
	}


	
}

function add() {
    if(M2.dialog9){
	   
	    return M2.dialog9.show();
	}
	M2.dialog9 = jqueryAlert({
	    'style'   : 'wap',
	    'title'   : '',
	    'content' : contentadd(),
	    'modal'   : true,
	    'contentTextAlign' : 'left',
//	    'width'   : '50%',
//	    'height'  : '40%',
	    'animateType': 'linear',
	    'position'     : 'fixed',
	    'buttons' : {
	        '关闭' : function(){
	            M2.dialog9.close();
	        }
	    }
	
	})
	
	function contentadd() {
	    var text = "";
	    text += "					<div style=\"padding-top: 20px;text-align: center;\">";
	    text += "						<b style=\"padding-left: 50px;padding-right: 52px;letter-spacing: 3px;font-size: 25px;\">";
	    text += "							添加用户";
	    text += "						</b>";
	    text += "						<hr>";
	    text += "					</div>";
	    text += "					<div style=\"padding-left: 20px\" class=\"control-group\">";
	    text += "						<div class=\"input-prepend\">";
	    text += "							<span class=\"add-on\">";
	    text += "								请输入用户姓名";
	    text += "							</span>";
	    text += "							<input id=\"userid\" size=\"16\" type=\"text\">";
	    text += "						</div>";
	    text += "						<div class=\"input-prepend\">";
	    text += "							<span class=\"add-on\">";
	    text += "								请输入登陆帐号";
	    text += "							</span>";
	    text += "							<input id=\"username\" size=\"16\" type=\"text\">";
	    text += "						</div>";
	    text += "					</div>";
	    text += "					<div style=\" padding-left: 20px\" class=\"control-group\">";
	    text += "						<div class=\"input-prepend\">";
	    text += "							<span class=\"add-on\">";
	    text += "								请输入新密码";
	    text += "							</span>";
	    text += "							<input id=\"userpwd\" size=\"16\" type=\"password\">";
	    text += "						</div>";
	    text += "						<div class=\"input-prepend\">";
	    text += "							<span class=\"add-on\">";
	    text += "								再输一遍";
	    text += "							</span>";
	    text += "							<input id=\"userpwd2\" size=\"16\" type=\"password\">";
	    text += "						</div>";
	    text += "					</div>";
	    text += "<div style=\"padding-left: 20px\" class=\"control-group\">";
	    text += "	<label>";
	    text += "		<b style=\"font-size: 16px;\">";
	    text += "			用户权限:";
	    text += "		</b>";
	    text += "	</label>";
	    text += "	<div id=\"upAuthor\" style=\"display: inline;\">";
	    text += "		<span style=\"padding-right: 20px;\">";
	    text += "			<input id=\"levela2\" type=\"checkbox\" value=\"levela\" name=\"checkbox2\">";
	    text += "			管理员权限";
	    text += "		</span>";
	    text += "		<span style=\"padding-right: 20px;\">";
	    text += "			<input type=\"checkbox\" id=\"con2\" value=\"con\" name=\"checkbox2\">";
	    text += "			合同权限";
	    text += "		</span>";
	    text += "		<span style=\"padding-right: 20px;\">";
	    text += "			<input  type=\"checkbox\" id=\"addevent2\" value=\"addevent\"";
	    text += "			name=\"checkbox2\">";
	    text += "			任务权限";
	    text += "		</span><br>";
	    text += "		<span id=\"con3edit\"  style=\"padding-right: 20px;\">";
	    text += "			<input  type=\"checkbox\" id=\"con2edit\" value=\"addevent\"";
	    text += "			name=\"checkbox2\">";
	    text += "			合同编辑权限";
	    text += "		</span>";
	    text += "		<span id=\"con3del\" style=\"padding-right: 20px;\">";
	    text += "			<input  type=\"checkbox\" id=\"con2del\" value=\"addevent\"";
	    text += "			name=\"checkbox2\">";
	    text += "			合同删除权限";
	    text += "		</span>";
	    text += "	</div>";
	    text += "</div>";
	    text += "					<div style=\"padding-left: 20px\" class=\"control-group\">";
	    text += "						<input type=\"button\" id=\"4\" style=\"height: 16px;\" class=\"btn btn-primary\"";
	    text += "					:aa='aa'	value=\"添加\" onclick=\"return addUser()\" />";
	    text += "					</div>";
	    return text;
	}

}




function searchUser(e,e2) {
 
   var data="username="+e;
   var url="SearchAuthor";
    getPost1(data, url,e,e2);
   
	function getPost1(data, url,e,e2) {
	   
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
//  		   console.log(json);
			    SearchAuthorGson= JSON.parse(json);
			//    console.log(SearchAuthorGson);
// 			    alertx(SearchAuthorGson);
			    if(M.dialog9){
				document.getElementById("dayx").value=vm.users[e2].day;
				    var dd=document.getElementById("upAuthor");
				    var dd=dd.getElementsByTagName("input");
				//    console.log(dd);
				    var levelaE=dd[0];
				    var conE=dd[1];
				    var addeventE=dd[2];
				    var conEedit=dd[3];
				    var conEdel=dd[4];
				    conE.checked=false; addeventE.checked=false;  levelaE.checked=false; conEedit.checked=false; conEdel.checked=false;
				    	if (SearchAuthorGson[0].con==1) {
				    	    conE.checked=true;
				    	}
				    	if (SearchAuthorGson[0].addevent==1) {
				    	    addeventE.checked=true;
				    	}
				    	if (SearchAuthorGson[0].levela==1) {
				    	    levelaE.checked=true;
				    	}
				    	if (SearchAuthorGson[0].conedit==1) {
				    	    conEedit.checked=true;
				    	}
				    	if (SearchAuthorGson[0].condel==1) {
				    	    conEdel.checked=true;
				    	}
				    	$("#updataUser").attr("onclick","return updataUser1('"+e+"')");
				    return M.dialog9.show(e);
				}
				M.dialog9 = jqueryAlert({
				    'style'   : 'wap',
				    'title'   : '',
				    'content' :  contentedit(e,e2),
				    'modal'   : true,
				    'contentTextAlign' : 'left',
//				    'width'   : '50%',
//				    'height'  : '40%',
				    'animateType': 'linear',
				    'position'     : 'fixed',
				    'buttons' : {
				        '关闭' : function(){
				            M.dialog9.close();
				        }
				    }
				
				})
				
			var alertM= getByClass("document", "alert-modal");
			alertM[0].style.position=" fixed";
			//    console.log(111);
			document.getElementById("dayx").value=vm.users[e2].day;
			    var dd=document.getElementById("upAuthor");
			    var dd=dd.getElementsByTagName("input");
			   // console.log(dd);
			    var levelaE=dd[0];
			    var conE=dd[1];
			    var addeventE=dd[2];
			    var conEedit=dd[3];
			    var conEdel=dd[4];
			    
			    conE.checked=false; addeventE.checked=false;  levelaE.checked=false;conEedit.checked=false;conEdel.checked=false;
			    	if (SearchAuthorGson[0].con==1) {
			    	    conE.checked=true;
			    	}
			    	if (SearchAuthorGson[0].addevent==1) {
			    	    addeventE.checked=true;
			    	}
			    	if (SearchAuthorGson[0].levela==1) {
			    	    levelaE.checked=true;
			    	}
			    	if (SearchAuthorGson[0].conedit==1) {
			    	    conEedit.checked=true;
			    	}
			    	if (SearchAuthorGson[0].condel==1) {
			    	    conEdel.checked=true;
			    	}
		}
	    };
	}
}


function contentedit(e,e2) {
   
    var text = "";
    text += "<div style=\"padding-top: 20px;text-align: center;\">";
    text += "	<b style=\"padding-left: 50px;padding-right: 52px;letter-spacing: 3px;font-size: 25px;\">";
    text += "		权限设置";
    text += "	</b>";
    text += "	<hr>";
    text += "</div>";
    text += "<div style=\"padding-left: 20px\" class=\"control-group\">";
    text += "	<label>";
    text += "		<b style=\"font-size: 16px;\">";
    text += "			用户提前提醒天数:";
    text += "		</b>";
    text += "	</label>";
    text += "<input style=\"width: 120px;\" type=\"number\" id=\"dayx\"></div>";
    text += "<div style=\"padding-left: 20px\" class=\"control-group\">";
    text += "	<label>";
    text += "		<b style=\"font-size: 16px;\">";
    text += "			用户权限:";
    text += "		</b>";
    text += "	</label>";
    text += "	<div id=\"upAuthor\" style=\"display: inline;\">";
    text += "		<span style=\"padding-right: 20px;\">";
    text += "			<input id=\"levela2\" type=\"checkbox\" value=\"levela\" name=\"checkbox2\">";
    text += "			管理员权限";
    text += "		</span>";
    text += "		<span style=\"padding-right: 20px;\">";
    text += "			<input type=\"checkbox\" id=\"con2\" value=\"con\" name=\"checkbox2\">";
    text += "			合同权限";
    text += "		</span>";
    text += "		<span style=\"padding-right: 20px;\">";
    text += "			<input  type=\"checkbox\" id=\"addevent2\" value=\"addevent\"";
    text += "			name=\"checkbox2\">";
    text += "			任务权限";
    text += "		</span><br>";
    text += "		<span style=\"padding-right: 20px;\">";
    text += "			<input id=\"con2edit\" type=\"checkbox\" value=\"conedit\" name=\"checkbox2\">";
    text += "			合同编辑权限";
    text += "		</span>";
    text += "		<span style=\"padding-right: 20px;\">";
    text += "			<input type=\"checkbox\" id=\"con2edl\" value=\"condel\" name=\"checkbox2\">";
    text += "			合同删除权限";
    text += "		</span>";
    text += "	</div>";
    text += "</div>";
    text += "<div style=\"padding-left: 20px\" class=\"control-group\">";
    text += "	<input type=\"button\" id=\"updataUser\" style=\"height: 16px;\" class=\"btn btn-primary\"";
    text += "	value=\"修改\" onclick=\"return updataUser1('"+e+"')\" />";
    text += "</div>";
    return text;
}

function getByClass(parent, cls){
    if(parent.getElementsByClassName){
      return document.getElementsByClassName(cls);
    }else{
      var res = [];
      var reg = new RegExp(' ' + cls + ' ', 'i')
      var ele = document.getElementsByTagName('*');
      for(var i = 0; i < ele.length; i++){
        if(reg.test(' ' + ele[i].className + ' ')){
          res.push(ele[i]);
        }
      }
      return res;
    }
  }
  
  
function updataUser1(e) {
	   var author= document.getElementsByName('checkbox2');
// 	    console.log(author);
	   var con="0";
	   var condel="0";
	   var conedit="0";
		var addevent="0";
		var levela="0";
	if (author.length==0) {
		 con="0";
		addevent="0";
		 levela="0";
		 conedit="0";
		 condel="0";
	}else {
		if (author[0].checked) {
		    levela ="1";   
		}
		if (author[1].checked) {
		    con ="1";
		}
		if (author[2].checked) {
		    addevent   ="1";
		}
		if (author[3].checked) {
		    conedit ="1";
		}
		if (author[4].checked) {
		    condel ="1";
		}
	}
	
	var day= $("#dayx").val();
			    data ="username="+e+"&con="+con+"&conedit="+conedit+"&condel="+condel+"&addevent="+addevent+"&levela="+levela+"&day="+day;
			    url="UpdataAuthor";
			    getPost2(data, url);
		
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
			var  obj=   JSON.parse(json);
			    if (obj.updataAuthor) {
				alert("修改成功!");
			    }else {
				alert("修改失败!");
			    }
			    usersallGson=obj.usersallGson;
			}
		    vm.users=usersallGson;
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

</body>
</html>