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
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
	<style type="text/css">
.cc{text-align: left;padding-left: 20px;}
</style>

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
	
 <script src="myjs/vue.js" charset="GBK"></script>
<script src="myjs/axios.js" charset="GBK"></script>
<script src="node_modules/moment/moment.js" charset="GBK"></script>
<script src="element-ui/lib/index.js"></script>
<link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">
<link rel="stylesheet" href="mycss/myvue.css">

<style>
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
	<script type="text/javascript">
	
	listusGson=<%=session.getAttribute("listusGson")%>;
	 c_sdate="<%=session.getAttribute("sdate_AllListServlet3")%>";
	 c_edate="<%=session.getAttribute("edate_AllListServlet3")%>";
	 c_statu="<%=session.getAttribute("statu_AllListServlet3")%>";
	 c_userid="<%=session.getAttribute("userid_AllListServlet3")%>";
	 c_stno="<%=session.getAttribute("stno_AllListServlet3")%>";
	 time="<%=session.getAttribute("time")%>";
	 TT="<%=session.getAttribute("TT")%>";
	 list_WarningServlet2Gson=<%=session.getAttribute("list_WarningServlet2Gson")%>;
	 listGsons=<%=session.getAttribute("listGson") %>;
	 WarningStatuGsons=<%=session.getAttribute("WarningStatuGsons") %>;
		WarningGsons=<%=session.getAttribute("WarningGsons")%>;
		WarningStatuGsons=<%=session.getAttribute("WarningStatuGsons")%>;
		WarningStatuGsons = WarningStatuGsons.filter(temp=>{
        					return temp.rowData.STATU!="恢复";
                     });
		statu="<%=session.getAttribute("statu_AllListServlet3")%>";
		listusGson=<%=session.getAttribute("listusGson")%>;
		sn=this.listGsons[0].sn;
		  
		
	</script>

</head>
<body   onload="loadDoc()">


<%@include file="TestHeader.jsp" %>
		
	
		<div class="container-fluid-full">
		<div class="row-fluid">
				
			<%@include file="TestMainMenu.jsp" %>
			
			
			<!-- start: Content -->
			<div id="content" class="span10">
			<%
			String c_sdate=(String)session.getAttribute("sdate_AllListServlet3");
			String c_edate=(String)session.getAttribute("edate_AllListServlet3");
			String c_statu=(String)session.getAttribute("statu_AllListServlet3");
			String c_userid=(String)session.getAttribute("userid_AllListServlet3");
			String c_stno=(String)session.getAttribute("stno_AllListServlet3");
			
			%>
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="ReturnIndex">首页</a>
					<i class="icon-angle-right"></i> 
				</li>
				<li>
			
				
				
					<i class="icon-edit"></i>
					<%
					String TT=(String)session.getAttribute("TT");
					if(TT.equals("Testwork1.jsp")){
						%>
						<a href="Testwork1.jsp" >日常运维</a>
						<%
					}else{
						%>
						<a href="Testwork3.jsp">日常运维</a>
						<%
					}
					
					%>
					<i class="icon-angle-right"></i>
				</li>
				<li>
					<i class="icon-edit"></i>
					<a href="#">设备故障信息录入</a>
				</li>
			</ul>
						


<%@include file="EquMain.jsp" %>
<script type="text/javascript">
document.getElementById("equMain2").style.display ="none";
document.getElementById("equMain3").style.display ="none";
var  chevron=document.getElementsByClassName("chevron-up");
chevron[1].classList.add("chevron-down");
chevron[2].classList.add("chevron-down");
</script>
			
	<!-- 提交故障信息描述	 -->
	
	<%@include file="PartInput.jsp" %>		
		
		<!-- 提交故障信息描述	 -->
		
		 <script charset="UTF-8" type="text/javascript" language="javascript"  >
		 
		  
		 </script>
			
		
			
		
		</div>
		</div>
		
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
<!-- 		<script charset="GBK" src="myjs/Liedit.js"></script> -->
		<script type="text/javascript" charset="GBK" src="myjs/TW3.js"></script>
	<!-- end: JavaScript-->

</body>
</html>