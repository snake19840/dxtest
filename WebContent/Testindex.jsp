<%@page import="com.clas.Equ"%>
<%@page import="java.util.List"%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <!DOCTYPE html> -->
<html>
<head>
<!-- start: Meta -->
<meta http-equiv="Content-Type" content="text/html; charset='utf-8'" />
	<!-- <meta charset="utf-8"> -->
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
	<!-- fullcalendar: CSS -->
	<!-- <link href="assets/css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/lib/themify-icons.css" rel="stylesheet"> -->
    <link href="assets/css/lib/calendar/fullcalendar.css" rel="stylesheet" />
    <link href='css/jquery-ui-1.8.21.custom.css' rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="alert/css/alert.css">
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="img/favicon.ico">
	<!-- end: Favicon -->
</head>
<script type="text/javascript">
function setCookie(name,value,expires) {
    var exp = new Date();
    exp.setTime(exp.getTime() + expires*1000); 
   document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString(); 
   }
listusGson=<%=session.getAttribute("listusGson")%>;
loginId="<%=session.getAttribute("loginId")%>";
var listusGson = JSON.stringify(listusGson);
var loginId = JSON.stringify(loginId);
setCookie("listusGson",listusGson,28800);
setCookie("loginId",loginId,28800);


 function getCookie(name) {
    var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
    if(arr != null)
    {
  let ll=arr[2].indexOf("/")==-1?  arr[2].length:arr[2].indexOf("/");
    return  unescape(arr[2].substr(0,ll));
  }
 return null;
//  console.log(getCookie("listusGson") ); 
//  console.log(getCookie("loginId") );   
 }
 
 
 
</script>


<body>
<div  id="main">
<template v-if="showNotify">

</template>
</div>


<input type="hidden" id="date-time">


<%
String loginId=(String)session.getAttribute("loginId");
%>


<%@include file="TestHeader.jsp" %>

		<div class="container-fluid-full">
		<div class="row-fluid">

			<%@include file="TestMainMenu.jsp" %>


			<!-- start: Content -->
			<div id="content" class="span10">
<!-- 			<div id="" class="span10" style="width: 98%;min-height: 838px;padding-top: 30px;padding-left: 2%;"> -->



			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="ReturnIndex">首页</a>

				</li>

			</ul>

		<div >
				<div class="box span12">
				  <div class="box-header" data-original-title>
					  <h2><i class="halflings-icon white calendar"></i></span>日常巡检</h2>
				  </div>
				  <div class="box-content">
				  
<!-- 				  <input type="button" value="点我" onclick="a()"> -->				  
				  
<!-- <input type="button"   onclick="a()"> -->

<div id="gritter-notice-wrapper"></div> 
				
						<%
						String username=null;
						String userpwd=null;
						String userid=null;
						int aut=0;
						String edate=null;
						String sdate=null;
						String statu=null;
						List<Equ> listus=(List<Equ>)session.getAttribute("listus");
						
							// 遍历集合中的数据
							username=listus.get(0).getUsername();
							userpwd=listus.get(0).getUserpwd();
							userid=listus.get(0).getUserid();
							aut=listus.get(0).getAut();
								
							session.setAttribute("username", username);
								 session.setAttribute("userpwd", userpwd);
								 session.setAttribute("aut", aut);
								 session.setAttribute("userid", userid);
							
						%>
						<%-- <p><%=listus %>&nbsp;<%=username %>&nbsp;<%=userpwd %>&nbsp;<%=userid %>&nbsp;<%=aut %></p>
						<p id="s"></p> --%>
						<div id="external-events" style="width: 13%" class="span3 hidden-phone hidden-tablet">
						<h4>&nbsp</h4>

						<%
						if(aut==1){
							%>
							<a href="#" data-toggle="modal" data-target="#add-category" class="btn btn-lg btn-success btn-block waves-effect waves-light">
	                         <i class="fa fa-plus"></i> 创建添加巡检人员
	                         </a>
						<%
						}
					%>

                         <div class="clearfix"><b>设备状态:</b></div>
                         <div class=" badge badge-success" style="margin-bottom: 10px;" data-class="badge-success" >
                       <!--  <div class="external-event badge badge-success"  data-class="badge-success" > -->
                         <i class="fa fa-move"></i>巡检正常 </div>
                         <div class=" badge badge-warning" style="margin-bottom: 10px;" data-class="badge-warning" >
                         <i class="fa fa-move"></i>设备告警</div>
                         <div class=" badge badge-important" style="margin-bottom: 10px;" data-class="badge-important">
                          <i class="fa fa-move"></i>设备故障</div>
                          <!--  <div class="external-event badge badge-inverse" data-class="badge-inverse">
                          <i class="fa fa-move"></i>巡检人员</div> -->

                         <!--  <p>
						<label for="drop-remove"><input type="checkbox" id="drop-remove" /> 移除标签</label>
						</p>  -->
						<%
						if(aut==1){
							%>
							<div class="clearfix"><b>添加人员:</b></div>
						<%
						}
					%>

						</div>
					<%

					String listAllDxtestwork=(String)session.getAttribute("listAllDxtestwork");
					String listAllDxtestwork2=(String)session.getAttribute("listAllDxtestwork2");

					%>
					<input type="hidden" id="listAllDxtestwork"  value=<%=listAllDxtestwork %>/>
					<input type="hidden" id="username"  value=<%=username %>/>
					<input type="hidden" id="userid"  value=<%=userid %>/>
					<input type="hidden" id="aut"  value=<%=aut %>/>
					<input type="hidden" id="userpwd"  value=<%=userpwd %>/>

						 <div id="calendar" class="span9"></div>

						<!-- BEGIN MODAL -->
                                        <div class="modal fade none-border" id="event-modal">
                                            <div style="padding-top: 240px;" class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                        <%
						if(aut==1){
							%>
							<h4 class="modal-title"><strong>事件编辑</strong></h4>
						<%
						}else{%>
							<h4 class="modal-title"><strong>事件标签</strong></h4>
					<% 	}
					%>


                                                    </div>
                                                    <div class="modal-body"></div>
                                                    <div class="modal-footer">
<!--                                                         <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">关闭</button> -->

                                                        <button id="modal-add"  style="none"  type="button" class="btn btn-success save-event waves-effect waves-light">添加</button>
                                                        <button id="modal-del" style="none" type="button" class="btn btn-danger delete-event waves-effect waves-light" >删除</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Modal Add Category -->
                                        <div class="modal fade none-border" id="add-category">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                        <h4 class="modal-title"><strong>添加维护人员 </strong></h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label class="control-label">处理人员</label>
                                                                     <input class="form-control form-white" placeholder="输入姓名" type="text" name="category-name" />
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label class="control-label">选择事件类型</label>
                                                                    <select class="form-control form-white" data-placeholder="Choose a color..." name="category-color">
																<option value="inverse">添加人员</option>
																<option value="success">巡检正常</option>
																<option value="important">设备故障</option>

																<option value="warning">设备告警</option>


															</select>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button"  class="btn btn-default waves-effect" data-dismiss="modal">关闭</button>
                                                        <button type="button"  class="btn btn-danger waves-effect waves-light save-category" data-dismiss="modal">保存</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END MODAL -->

						 <div class="clearfix"></div>
					</div>
				</div>
			</div>



		<div class="clearfix"></div>



			<div class="box black span4" onTablet="span6" onDesktop="span4" style="margin-left: 0px;width: 100%;">
					<div class="box-header">
						<h2><i class="halflings-icon white list"></i><span class="break"></span>处理工单</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
						<ul id="li" class="dashboard-list metro" style="white-space:nowrap;overflow:hidden;text-overflow: ellipsis;">

						</ul>
					</div>
				</div><!--/span-->

			<%
			Date date = new Date();
			SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
		//	System.out.println(dateFormat.format(date));

			%>

		</div><!--/span-->

		</div><!--/#content.span10-->
		

		
		</div><!--/fluid-row-->

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
<script type="text/javascript">
function getCookie(name) {
    var reg = RegExp(name + '=([^;]+)');
    var arr = document.cookie.match(reg);
    if (arr) {
        return arr[1];
    } else {
        return '';
    }
};
<%--     useridindex="<%=request.getAttribute("userid")%>"; --%>
    listAllDxtestworkObj2 = <%=session.getAttribute("listAllDxtestwork2") %>;
	 listAllDxtestworkObj = <%=session.getAttribute("listAllDxtestwork")  %>;
	
    typeclassGson=<%=session.getAttribute("typeclassGson")%>;
  let  data=<%=session.getAttribute("planalertlistGson")%>;
  listusGson=<%=session.getAttribute("listusGson")%>;   
  
  if (getCookie("mark")==0) {
       planalertlistGson=data;
} else {
    planalertlistGson=[];
}
   var nn=listusGson[0].day;
   datan=[];
if (planalertlistGson!=[]) {
    datan=planalertlistGson.filter(temp=>{
	       return (Number(temp['lastday'])<=Number(nn));
	   }); 
}
  
// console.log(getCookie("mark"));		 
// planalertlistGson= JSON.parse(data);
// console.log(planalertlistGson);
    userIdsGson=<%=session.getAttribute("userIdsGson")%>;
     myDate = new Date();
 //  console.log(userIdsGson);
<%-- listusGson=<%=session.getAttribute("listusGson")%>; --%>
<%-- 	loginId="<%=session.getAttribute("loginId")%>"; --%>
	userid=listusGson[0].userid;
    </script>
    
    <script type="text/javascript">
    
//     var _alert =window.alert;
//     window.alert = function(){    
// 	console.log(arguments);
//     _alert(arguments);
// }
    
//     console.log(_alert);

</script>
<script type="text/javascript">

	var vm=new Vue({
	    el:'#main',
	    data:{
		showNotify:false,
		listusGson:listusGson,
		datan:datan,
		todate:7,
	    },
	    methods:{
		setCookie(name, value, day) {
		    var date = new Date();
		    date.setDate(date.getDate() + day);
		    document.cookie = name + '=' + value + ';expires=' + date;
		    },
		
		htmls(plandate1,lastday,planm1,sgmoney,i,contractid,planm2){
		    var text = "";
		    text += "<div >";
		    text += "<div style=\"font-size: 11px;font-family: \"微软雅黑\";font-weight: 400;\">";
		    text += "<div class=\"gritter-close\">";
		    text += "</div>";
		    text += "<input id='contractid"+i+"'  type=\"hidden\" value='"+contractid+"'>";
		    text += "<input id=\"plandate1"+i+"\" type=\"hidden\" value=\""+plandate1+"\">";
		    text += "<div class=\"gritter-without-image\">";
		    text += "付款日期：<span>"+plandate1+"</span>&nbsp;&nbsp;&nbsp;离付款日期还剩<span >"+lastday+"</span>天<br>";
		    text += "付款名称：<span >"+planm1+"</span>&nbsp;&nbsp;&nbsp;付款比例<span >"+sgmoney+"</span>%<br>";
		    text += "<select id=\"late"+i+"\"   style=\"width: auto;font-size: 1px;background-color: f0f0f0;box-sizing: border-box;height: auto;margin-bottom: 1px;background-color: white;\">";
		    text += "<option value='1'>1</option ><option value='7'>7</option><option value='10'>10</option>";
		    text += "<option value='15'>15</option><option value='30'>30</option>";
		    text += "</select>&nbsp;天&nbsp;";
		    text += "<input style=\"font-size: 1px;line-height: 13px;\" type=\"button\" onclick='latealert("+i+")' value=\"延后提醒\">";
// 		    text += "<input onclick='return payover("+i+")' style=\"display: inline;float: right;font-size: 1px;line-height: 13px;margin-top: 4px;\" type=\"button\" value=\"已付款\">";
		    text += "</div>";
		    text += "<div style=\"clear:both\">";
		    text += "</div>";
		    text += "</div>";
		    text += "<div class=\"gritter-bottom\">";
		    text += "</div>";
		    text += "</div>";

		    return text;
		},
		
	    },
	    mounted(){
// 		console.log(this.listusGson);
// 		console.log(this.datan);
		if (this.listusGson[0].con==1) {
		 
		   for (var i = 0; i < this.datan.length; i++) {
		       let dd=this.datan[i];
		       let contractid=dd.contractid,
		       contractname=dd.contractname,
		       camount=dd.camount,
		       plandate1=dd.plandate1,
		       plandate2=dd.plandate2,
		       planm1=dd.planm1,
		       planm2=dd.planm2,
		       lastday=dd.lastday,
		       sgmoney=dd.sgmoney;
		       let pay=(camount*sgmoney/100).toFixed(2);
		       this.$notify({
			          title: contractname,
			          dangerouslyUseHTMLString: true,
			          message: this.htmls(plandate1,lastday,planm1,sgmoney,i,contractid,planm2),
			          duration: 0,
			          onClose:function(){this.setCookie("mark", 1, 1);  },
			        });
		}
		}
	    },
	    wacth:{
		todate:function(n){
		    console.log(n);
		},
	    },
	});
	
	</script>

    <script charset="GBK" src='alert/js/alert.js'></script>
		<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/jquery-migrate-1.0.0.min.js"></script>
		<script src="js/jquery-ui-1.10.0.custom.min.js"></script>
		<script src="js/modernizr.js"></script>
		<script src="js/jquery.cookie.js"></script>
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

	 <script src="assets/js/lib/jquery.min.js"></script>
    <script src="assets/js/lib/jquery.nanoscroller.min.js"></script>
    <script src="assets/js/lib/menubar/sidebar.js"></script>
     <script src="assets/js/lib/preloader/pace.min.js"></script>
     <script src="assets/js/lib/bootstrap.min.js" charset="utf-8" language="javascript"></script>
    <script src="assets/js/lib/jquery-ui/jquery-ui.min.js"></script>
     <script charset="GBK" type="text/javascript" language="javascript" src="assets/js/lib/moment/moment.js"></script>
     
<!--     <script charset="GBK" type="text/javascript" language="javascript"  src="js/fullcalendar.min.js"></script> -->
    <script charset="UTF-8" type="text/javascript" language="javascript"  src="assets/js/lib/calendar/fullcalendar.min.js"></script>
    <script charset="GBK" type="text/javascript" language="javascript"  src="assets/js/lib/calendar/fullcalendar-init.js"></script>
    

     <script src="assets/js/scripts.js"></script>
    <!-- scripit init-->
    
<!-- 	<script charset="GBK" type="text/javascript" language="javascript"  src="myjs/Testindex/remind.js"></script> -->
	<script charset="GBK" type="text/javascript" language="javascript"  src="myjs/Testindex/calendar.js"></script>
<!-- 	<script charset="GBK" type="text/javascript" language="javascript"  src="myjs/layout/header.js"></script> -->
	
	<!-- end: JavaScript-->

<script type="text/javascript">

function formatDate(date) { 
    var y = date.getFullYear();  
    var m = date.getMonth() + 1;  
    m = m < 10 ? '0' + m : m;  
    var d = date.getDate();  
    d = d < 10 ? ('0' + d) : d;  
    return y + '-' + m + '-' + d;  
 } 

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
function setCookie(name, value, day) {
var date = new Date();
date.setDate(date.getDate() + day);
document.cookie = name + '=' + value + ';expires=' + date;
};
    
function latealert(i) {
	var selectx=document.getElementById("late"+i);
	var contractid=document.getElementById("contractid"+i).value;
	var plandate1=document.getElementById("plandate1"+i).value;
	var p2= JSON.parse( datan[i].planm2);
// 	console.log(p2);
	var dd=selecta(selectx);
	
	var t0=new Date(plandate1);
	var t1=new Date(t0.valueOf() + dd * 86400000)
	
// 	console.log(formatDate(t0));
// 	console.log(formatDate(t1));
	for (var i = 0; i < p2.length; i++) {
	    if (p2[i].statu==0) {
		p2[i].paydate=formatDate(t1);
		break;
	    }
	}
	var p3= JSON.stringify(p2);
	var url="LateAlert";
	var data="planm2="+p3+"&contractid="+contractid+"&plandate1="+formatDate(t1);
//	console.log(dd);
//	console.log(ld);
			setCookie("mark", 1, 1);
	    getPost(data, url,i);
	
}


function selecta(selectx) {
	    var index = selectx.length;
//	     console.log(index);
	    var s = false;
	    var dd = "0";
	    for (i = 0; i < index; i++) {
	       s = selectx[i].selected;
//	     console.log(s);
	       if (s) {
	           dd = selectx[i].text;
	           return dd;
	          
	       }
	    }
	}

function getPost(data, url,i) {
	var httpRequest = new XMLHttpRequest(); // 第一步：创建需要的对象
	httpRequest.open('POST', url, true); // 第二步：打开连接
	httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); // 设置请求头
	// 注：post方式必须设置请求头（在建立连接后设置请求头）
	httpRequest.send(data); // 发送请求 将情头体写在send中
	var json = null;
	httpRequest.onreadystatechange = function() { // 请求后的回调接口，可将请求成功后要执行的程序写在其中
		if (httpRequest.readyState == 4 && httpRequest.status == 200) { // 验证请求是否发送成功
			var json = httpRequest.responseText; // 获取到服务端返回的数据
			console.log(json);
			if (json == "LateAlertSuccess") {alert("修改成功");}
			if (json == "PayoverSuccess") {alert("付款成功!");aclose(i);}
			if (json == "False") {alert("失败,请联系管理员!");return;}
		}
	};
}


</script>

<script type="text/javascript">
$('#my-prev-button').click(function() {
  
    var moment = $('#calendar').fullCalendar('getDate');
    alert("The current date of the calendar is " + moment.format());
});
</script>
</body>
</html>
