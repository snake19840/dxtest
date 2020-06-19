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
<% String classflistGson=(String)session.getAttribute("classflistGson"); %>

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
			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="ReturnIndex">主页</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">基础信息录入</a></li>
			</ul>


		<div  >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>供应商信息录入</h2>
						<div  class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-down"></i></a>
<!-- 							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a> -->
						</div>
					</div>
					<div class="box-content" style="display: none;">
						
						
						<form id="form1" class="form-horizontal" action=""  method="post">
							<fieldset>
							  <div style="padding-top: 20px;text-align: center;">
							<b style="padding-left: 25px;padding-right: 52px;letter-spacing: 3px;font-size: 25px;">基础信息</b><hr />
							</div>
							<div style="padding-bottom: 20px;padding-top: 5px">
							<b style="padding-left: 25px;padding-right: 16px;letter-spacing: 3px;">供应商单位</b><input id="oppu" name="oppu" size="16" type="text"> 
							<b style="padding-left: 18%;padding-right: 16px;letter-spacing: 3px;">供应商地址</b><input id="oppa" name="oppa" size="16" type="text"> 
							
							</div>
							
							<div style="padding-bottom: 20px">
							<b style="padding-left: 25px;padding-right: 16px;letter-spacing: 3px;" >法定代表人</b><input name="oppp" id="oppp" size="16" type="text"> 
							<b style="padding-left: 18%;padding-right: 16px;letter-spacing: 3px;">项目联系人</b><input name="oppn" id="oppn" size="16" type="text">
							</div>

				 			<div style="padding-bottom: 20px">
							<b style="padding-left: 25px;padding-right: 33px;letter-spacing: 3px;">联系方式</b><input id="oppe" name="oppe" size="16" type="text"> 
							<b style="padding-left: 18%;padding-right: 33px;letter-spacing: 3px;">通讯地址</b><input id="oppad" name="oppad" size="16" type="text"> 
							
							</div>
							
							<div style="padding-bottom: 20px">
							<b style="padding-left: 25px;padding-right: 67px;letter-spacing: 3px;" >电话</b><input name="oppe2" id="oppe2" size="16" type="text"> 
							<b style="padding-left: 18%;padding-right: 67px;letter-spacing: 3px;">传真</b><input name="oppx" id="oppx" size="16" type="text">
							</div>
							
							<div style="padding-bottom: 20px">
							<b style="padding-left: 25px;padding-right: 33px;letter-spacing: 3px;" >电子邮箱</b><input name="oppmail" id="oppmail" size="16" type="text"> 
							</div>
							<input type="hidden" id="oppid" value="">
							
						
							<div style="padding-top: 20px;text-align: center;">
							<b style="padding-left: 25px;padding-right: 52px;letter-spacing: 3px;font-size: 25px;">财务信息</b><hr />
							</div>
							<div style="padding-bottom: 20px">
							<b style="padding-left: 25px;padding-right: 50px;letter-spacing: 3px;" >开户行</b><input name="opppayb" id="opppayb" size="16" type="text"> 
							<b style="padding-left: 18%;padding-right: 33px;letter-spacing: 3px;">银行地址</b><input name="opppaya" id="opppaya" size="16" type="text">
							</div>
							
							<div style="padding-bottom: 25px">
							<b style="padding-left: 25px;padding-right: 67px;letter-spacing: 3px;" >户名</b><input name="opppayh" id="opppayh" size="16" type="text"> 
							<b style="padding-left: 18%;padding-right: 67px;letter-spacing: 3px;">帐号</b><input name="opppayz" id="opppayz" size="16" type="text">
							</div>
							
							<div style="padding-bottom: 5px;height: 20p;line-height: 0px;">
							<p><b style="padding-left: 25px;padding-right: 28px;letter-spacing: 3px;" >统一社会</b>
							<input name="opppaym" id="opppaym" size="16" type="text" />
							<b style="padding-left: 18%;padding-right: 64px;letter-spacing: 3px;">地址</b>
							<input name="opppaya2" id="opppaya2" size="16" type="text" />
							</p>
							<p><b style="padding-left: 25px;padding-right: 50px;letter-spacing: 3px;" >信用码</b></p>
							</div>
							
							
							<div style="padding-bottom: 20px">
							<b style="padding-left: 25px;padding-right: 67px;letter-spacing: 3px;" >电话</b><input name="opppaye" id="opppaye" size="16" type="text"> 
							</div>
							
							<input type="hidden" id="opppayid" value="">
							
							<div class="form-actions">
								<button type="button" class="btn btn-primary"  onclick="return  oppall()">提交</button>
								<button type="button" class="btn" onclick="rs('1')">取消</button>
							  </div>
							  
							</fieldset>
						  </form>
						  
					 
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->

			
			<div  >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>委托人信息录入</h2>
						<div  class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-down"></i></a>
<!-- 							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a> -->
						</div>
					</div>
					<div class="box-content" style="display: none;">
						<form id="form2" class="form-horizontal" action=""  method="post">
							<fieldset>
							  <div style="padding-top: 20px;text-align: center;">
							<b style="padding-left: 25px;padding-right: 52px;letter-spacing: 3px;font-size: 25px;">基础信息</b><hr />
							</div>
							<div style="padding-bottom: 20px;padding-top: 5px">
							<b style="padding-left: 25px;padding-right: 16px;letter-spacing: 3px;">委托人单位</b><input id="myu" name="myu" size="16" type="text"> 
							<b style="padding-left: 18%;padding-right: 16px;letter-spacing: 3px;">委托人地址</b><input id="mya" name="mya" size="16" type="text"> 
							
							</div>
							
							<div style="padding-bottom: 20px">
							<b style="padding-left: 25px;padding-right: 16px;letter-spacing: 3px;" >法定代表人</b><input name="myp" id="myp" size="16" type="text"> 
							<b style="padding-left: 18%;padding-right: 16px;letter-spacing: 3px;">项目联系人</b><input name="myn" id="myn" size="16" type="text">
							</div>

				 			<div style="padding-bottom: 20px">
							<b style="padding-left: 25px;padding-right: 33px;letter-spacing: 3px;">联系方式</b><input id="mye" name="mye" size="16" type="text"> 
							<b style="padding-left: 18%;padding-right: 33px;letter-spacing: 3px;">通讯地址</b><input id="myad" name="myad" size="16" type="text"> 
							
							</div>
							
							<div style="padding-bottom: 20px">
							<b style="padding-left: 25px;padding-right: 67px;letter-spacing: 3px;" >电话</b><input name="mye2" id="mye2" size="16" type="text"> 
							<b style="padding-left: 18%;padding-right: 67px;letter-spacing: 3px;">传真</b><input name="myx" id="myx" size="16" type="text">
							</div>
							
							<div style="padding-bottom: 20px">
							<b style="padding-left: 25px;padding-right: 33px;letter-spacing: 3px;" >电子邮箱</b><input name="myemail" id="myemail" size="16" type="text"> 
							</div>
							
							<input type="hidden" id="myid" value="">
						
							<div style="padding-top: 20px;text-align: center;">
							<b style="padding-left: 25px;padding-right: 52px;letter-spacing: 3px;font-size: 25px;">财务信息</b><hr />
							</div>
							<div style="padding-bottom: 20px">
							<b style="padding-left: 25px;padding-right: 50px;letter-spacing: 3px;" >开户行</b><input name="mypayb" id="mypayb" size="16" type="text"> 
							<b style="padding-left: 18%;padding-right: 33px;letter-spacing: 3px;">银行地址</b><input name="mypaya" id="mypaya" size="16" type="text">
							</div>
							
							<div style="padding-bottom: 25px">
							<b style="padding-left: 25px;padding-right: 67px;letter-spacing: 3px;" >户名</b><input name="mypayh" id="mypayh" size="16" type="text"> 
							<b style="padding-left: 18%;padding-right: 67px;letter-spacing: 3px;">帐号</b><input name="mypayz" id="mypayz" size="16" type="text">
							</div>
							
							<div style="padding-bottom: 5px;height: 20p;line-height: 0px;">
							<p><b style="padding-left: 25px;padding-right: 28px;letter-spacing: 3px;" >统一社会</b>
							<input name="mypaym" id="mypaym" size="16" type="text" />
							<b style="padding-left: 18%;padding-right: 64px;letter-spacing: 3px;">地址</b>
							<input name="mypaya2" id="mypaya2" size="16" type="text" />
							</p>
							<p><b style="padding-left: 25px;padding-right: 50px;letter-spacing: 3px;" >信用码</b></p>
							</div>
							
							
							<div style="padding-bottom: 20px">
							<b style="padding-left: 25px;padding-right: 67px;letter-spacing: 3px;" >电话</b><input name="mypaye" id="mypaye" size="16" type="text"> 
							</div>
							
							<input type="hidden" id="mypayid" value="">
							
							<div class="form-actions">
								<button type="button" class="btn btn-primary"  onclick="return  myall()">提交</button>
								<button type="button" class="btn" onclick="rs('2')">取消</button>
							  </div>
							  
							</fieldset>
						  </form>
						  
					 
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
			
			
			
		<!-- excelButtom	 -->
			
<div  >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>合同基础信息录入</h2>
						<div  class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-down"></i></a>
<!-- 							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a> -->
						</div>
					</div>
					<div class="box-content" >
						
						
						<div  >
							<fieldset>
							
							<form action=""  name="form3" id="form3">
							<div style="padding-top: 20px;text-align: center;">
							<b style="padding-left: 25px;padding-right: 52px;letter-spacing: 3px;font-size: 25px;">合同类别</b><hr />
							</div>
						
							<div style="padding-bottom: 20px;padding-top: 5px">
							<div style="padding-left: 25px;padding-right: 2px;letter-spacing: 3px;display: inline;">
							<a  style="padding-bottom: 12px;text-decoration:none"   href="#" onclick="showClassText('CB_class_t','CB_class_s')" class="icon-pencil"><i></i></a>
							<b >项目大类</b>
							<input style="display: none;" id="CB_class_t" name="CB_class" size="16" type="text">
							<select style="display: inline;" id="CB_class_s" name="CB_class"  >
							<option value="1">请选择项目大类</option> 
							<option value="2">Option 2</option> 
 							<option value="3">Option 3</option> 
 							</select>							 
							</div>
							<a style="padding-bottom: 12px;"   href="#" onclick="showSon('son')" class="glyphicons chevron-right"><i></i></a>
							<div id="son"  style="display: none;"><b style="letter-spacing: 3px;padding-right: 16px;" >项目子类</b><input id="contractname" name="contractname" size="16" type="text"> </div>
							
							
								<div style="float: right;">
								<button type="button" class="btn btn-primary"  onclick="return  classall()">提交</button>
								<button type="button" class="btn" onclick="rs('3')">取消</button>
							  </div>
							</div>
							</form>
							
						<form action=""  name="form4" id="form4">
						<div style="padding-top: 20px;text-align: center;">
							<b style="padding-left: 25px;padding-right: 52px;letter-spacing: 3px;font-size: 25px;">付款信息</b><hr />
							</div>
							<div style="padding-bottom: 20px">
							<b style="padding-left: 25px;padding-right: 33px;letter-spacing: 3px;" >付款名称</b><input name="payname" id="payname" size="16" type="text">
							<a style="padding-bottom: 12px;"   href="#"  class="glyphicons chevron-right"><i></i></a> 
							<select id="CB_class_s2">
							<option>请选择项目大类</option>
							<option>Option 2</option>
							<option>Option 3</option>
							</select>
							
						<div style="float: right;">
								<button type="button" class="btn btn-primary"  onclick="return  payall()">提交</button>
								<button type="button" class="btn" onclick="rs('4')">取消</button>
							  </div>
						</div>
						</form>
							
						
							  
							</fieldset>
						  </div>
						  
					 
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
		
			 
		
	

			
		
		<!-- <table  id="item">  -->
		
		
		<!-- excelButtomEnd	 -->
		
		
		
		

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
		<script charset="GBK" type="text/javascript" src="myjs/Base.js"></script>
<!-- 		<script src="myjs/UpDataContract.js"></script> -->
		
		<script type="text/javascript">
		classflistGson=<%=classflistGson%>;
		classf();
		</script>
		
		
<!-- 		<script src="myjs/UpDataContract.js"></script> -->
		
		 <!-- jquery-fileupload依赖与jquery -->

</body>
</html> 