<%@page import="java.util.ArrayList"%>
<%@page import="com.clas.Turn"%>
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
	<link rel="shortcut icon" href="img/favicon.ico">
	<!-- end: Favicon -->
	<script src="myjs/vue.js" charset="GBK"></script>
<script src="myjs/axios.js" charset="GBK"></script>
<script src="node_modules/moment/moment.js" charset="GBK"></script>
<script src="element-ui/lib/index.js"></script>
	<link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">
	<style>
	.a1{
	display:inline !important;
	}
	.a2{
	display:none !important;
	}
	</style>
	
</head>
<body onload="initvar()" onunload="setvar()">

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
					<a href="ReturnIndex">首页</a>
					<i class="icon-angle-right"></i> 
				</li>
				<li>
					<i class="icon-edit"></i>
					<a href="#">设备录入</a>
				</li>
			</ul>


<%

int id= 1;
String    pname="";
String    sn = ""; 
String	pos1 = ""; 
String	pos2 = ""; 
String	pos3 = ""; 
String	pos="//";
String	ip1 = ""; 
String	ip2 = ""; 
String	ip3 = ""; 
String	ip="//";
String	styp1="";
String	styp2 = "";
String	styp="";
		String	sname="";
				String	sid = ""; 
String	did = ""; 
		String	stdate = ""; 
String	use = ""; 
		String	ownname1 = "";
				String	ownname2 = "";
						String		ownname3 = ""; 
String		ownname4 = ""; 
			String		ownname="///";
					String	proname1 = ""; 
			String	proname2 = ""; 
			String	proname3 = ""; 
					String	proname="//";
			String	manname1 = ""; 
			String	manname2 = ""; 
			String	manname3 = "";
			String		manname="//";
			String		agename1 = ""; 
			String		agename2 = ""; 
			String		agename3 = ""; 
			String		agename="//";
			String		mantyp="";
					String	port1 = ""; 
			String	port2 = ""; 
			String	port3 = ""; 
			String	port="//";
			String	cpu1 = ""; 
			String	cpu2 = "";
			String	cpu="/";
			String	memory = ""; 
			String	disk = ""; 
			String	syn1 = "";
			String	syn2 = ""; 
			String	syn="/";
			String		oracle = ""; 
			String		oth = "";

%>

			<div >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>机房设备档案信息</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form id="form1"  class="form-horizontal">
							<fieldset>
							<input type ="hidden" id="id" name="id" value ="" >
							 
							  <div class="control-group success">
								<label class="control-label2" >系统名称</label>
								<div class="controls">
								  <input type="text"  name="pname" id="pname" value="<%=pname %>">
								  <span class="help-inline">
								  <label class="control-label2" >序列号</label>
								<div class="controls">
								  <input type="text"   name="sn" id="sn" value="<%=sn %>"></div>
								   </span>
								  </div>
								</div>
							  
							  <div class="control-group">
								<label class="control-label2" >机架位置</label>
								<div class="controls ">
								  <select  name="selectpos5" id="pos1">
								  <option value=""></option>
									<option value="9F-A" >9F-A</option>
									<option value="9F-B" >9F-B</option>
									
									</select>
									<span class="add-on ">-</span>
									<input  size="16" type="text" name="textfieldpos" id="pos2" value="<%=pos2 %>">
									<span class="add-on">-</span>
									<input  size="16" type="text" name="textfieldpos2" id="pos3" value="<%=pos3 %>">
								</div>
							  </div>
							  <input type ="hidden" id="pos" name="pos" value ="" >
							  
							  
							  <div class="control-group">
								<label class="control-label2" >IP地址</label>
								<div class="controls">
								  <div class="input-append">
									<input  size="16" type="text"  name="textfieldip10" id="ip1" value="<%=ip1 %>"><span class="add-on">子网掩码</span>
									<input  size="16" type="text" name="textfieldip11" id="ip2" value="<%=ip2 %>"><span class="add-on">网关</span>
									<input  size="16" type="text" name="textfieldip12" id="ip3" value="<%=ip3 %>">
									<input type ="hidden" id="ip" name="ip" value ="" >
								  </div>
								  <!-- <span class="help-inline">Here's more help text</span> -->
								</div>
							  </div>
							  
							
							  <div class="control-group">
								<label class="control-label2" >品牌 </label>
								<div class="controls ">
								<input style="display: none;" id="CB_class_t" name="CB_class" size="16" type="text">
								 <a style="padding-bottom: 12px;text-decoration:none" href="#" onclick="showClassText('styp1input','styp1')" class="icon-pencil"><i></i></a>
								
								<span>
								 <select class="a1" name="selectstyp"  id="styp1">
								  <option></option>
									</select>
								<input id="styp1input" class="a2" type="text">
								</span>
								
								
									<span class="add-on ">型号</span>
									<input  size="16" type="text" name="styp2" id="styp2" value="<%=styp2 %>">
								</div>
							  </div>
							  
							   <div id="ch1" class="control-group">
								<label class="control-label2">设备类型</label>
								<div id="sname" class="controls">
								  <label class="checkbox inline">
									<input type="checkbox" name="checkbox2"  value="物理机"> 物理机
								  </label>
								  <label class="checkbox inline">
									<input type="checkbox" name="checkbox2"   value="虚拟机"> 虚拟机
									<input type ="hidden" id="sname" name="sname" value ="" >
								  </label>
								  <input type ="hidden"   name="id" value ="" >
								</div>
							  </div>
							 
							  <div class="form-actions">
								<!-- <button type="submit" class="btn btn-primary" onclick="check1()"></button> -->
								<input type="button" name="buttonee" class="btn btn-primary" id="buttonee" value="暂存"  onclick="check('1')">
								 <input type="button" name="button1e"  id="button1e" class="btn" value="清空" onclick="document.getElementById('form1').reset()"> 
								
							  </div>
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
			
			<div >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>设备维护信息</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form id="form2"  class="form-horizontal">
						
							<fieldset>
							
							<div class="control-group ">
								<label class="control-label2" >资产编号:</label>
								<div class="controls">
								  <input type="text" name="sid" id="sid" value="<%=sid %>" >
								  <span class="help-inline">
								   <label class="control-label2" >档案编号:</label>
								<div class="controls">
								  <input type="text" name="did" id="did" value="<%=did %>"> </div>
								   </span>
								</div>
							  </div>
							
							<div class="control-group">
							  <label class="control-label2" for="date01">设备初次搬入机房日期</label>
							  <div class="controls">
								<input type="text" class="input-xlarge datepicker" name="stdate" id="stdate" value="<%=stdate %>">  
							  </div>
							</div>
							
							
							<div class="control-group">
								<label class="control-label2" >设备用途</label>
								<div class="controls">
								  <div class="input-append">
									<input  size="16" type="text"  name="use" id="use" value="<%=use %>">
								  </div>
								  <!-- <span class="help-inline">Here's more help text</span> -->
								</div>
							  </div>
							
							<div class="control-group">
								<label class="control-label2" >设备资产单位:</label>
								<div class="controls">
								  <div class="input-append">
									<select name="select3" id="ownname1">
								  <option value=""></option>
									<option value="宁波电信" >宁波电信</option>
									
									</select>
									<span class="add-on">部门</span>
									<select name="select4" id="ownname2">
								  <option value=""></option>
									<option value="企信中心"  >企信中心</option>
									<option value="市场部"  >市场部</option>
									</select>
									<span class="add-on">联系人</span>
									<input id="ownname3"  size="16" name="textfield51" type="text"  value="<%=ownname3 %>" ><span class="add-on">电话</span>
									<input id="ownname4"  name="textfield52" type="text"  size="16" value="<%=ownname4 %>">
								 <input type ="hidden" id="ownname" name="ownname" value ="" >
								  </div>
								</div>
							  </div>
							  
							
							
							<div class="control-group">
								<label class="control-label2" >系统集成商:</label>
								<div class="controls">
								  <div class="input-append">
								  <input  name="textfield53" type="text" id="proname1" size="16" value="<%=proname1 %>">
									<span class="add-on">联系人</span>
									<input  name="textfield54" type="text" id="proname2" size="16" value="<%=proname2 %>">
									<span class="add-on">电话</span>
									<input  name="textfield55" type="text" id="proname3" size="16" value="<%=proname3 %>">
									<input type ="hidden" id="proname" name="proname" value ="" >
								  </div>
								</div>
							  </div>
							
							
							
							<div class="control-group">
								<label class="control-label2" >系统责任人:</label>
								<div class="controls">
								  <div class="input-append">
								  <input  name="textfield56" type="text" id="manname1" size="16" value="<%=manname1 %>">
									<span class="add-on">电话</span>
									<input  name="textfield57" type="text" id="manname2" size="16" value="<%=manname2 %>">
									<span class="add-on">所属部门</span>
									<input  name="textfield58" type="text" id="manname3" size="16"  value="<%=manname3 %>">
									<input type ="hidden" id="manname" name="manname" value ="" >
								  </div>
								</div>
							  </div>
							
							
							<div class="control-group">
								<label class="control-label2" >代维单位:</label>
								<div class="controls">
								  <div class="input-append">
								  <input  name="textfield59" type="text" id="agename1" size="16" value="<%=agename1 %>">
									<span class="add-on">联系人</span>
									<input  name="textfield60" type="text" id="agename2" size="16" value="<%=agename2 %>">
									<span class="add-on">电话</span>
									<input  name="textfield61" type="text" id="agename3" size="16" value="<%=agename3 %>">
									<input type ="hidden" id="agename" name="agename" value ="" >
									<input type ="hidden"   name="id" value ="">
								  </div>
								</div>
							  </div>
							  
							  
							   <div id="mantyp" class="control-group">
								<label class="control-label2">维护形式:</label>
								<div class="controls">
								 <label class="checkbox inline">
									<input type="checkbox" name="checkbox1" value="仅放置设备" > 仅放置设备
								  </label>
								  <label class="checkbox inline">
									<input type="checkbox" name="checkbox1" value="硬件维护" > 硬件维护
								  </label>
								  <label class="checkbox inline">
									<input type="checkbox" name="checkbox1" value="操作系统维护" > 操作系统维护
								  </label>
								  <label class="checkbox inline">
									<input type="checkbox" name="checkbox1" value="数据库维护"  > 数据库维护
								  </label>
								  <label class="checkbox inline">
									<input type="checkbox" name="checkbox1" value="应用维护" > 应用维护
								  </label>
									<input type ="hidden"  name="mantyp" value ="" >
								</div>
							  </div>
							  
							  <div class="control-group">
							
								
							  </div>
							  <div class="form-actions">
								<input type="button" name="button2" class="btn btn-primary" id="button2" value="暂存"  onclick="check('2')">
								
								 <input type="button" name="button2c"  id="button2c" class="btn" onclick="document.getElementById('form2').reset()" value="清空"> 
								
							 </div>
							</fieldset>
						</form>
					</div>
				</div><!--/span-->

			</div><!--/row-->
		
			
			<div >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>IT设备配置明细</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form id="form3" class="form-horizontal">
							<fieldset>
							
							<div class="control-group">
								<label class="control-label2" >网线编号:</label>
								<div class="controls">
								  <div class="input-append">
									<input  name="textfield13port" type="text" id="port1" size="16" value="<%=port1 %>"><span class="add-on">交换机端口号</span>
									<input  name="textfield14port" type="text" id="port2" size="16" value="<%=port2 %>"><span class="add-on">配线架端口号</span>
									<input  name="textfield15port" type="text" id="port3" size="16" value="<%=port3 %>">
								  <input type ="hidden" id="port" name="port" value ="" >
								  </div>
								  <!-- <span class="help-inline">Here's more help text</span> -->
								</div>
							  </div>
							
							
							<div class="control-group">
								<label class="control-label2" >CPU型号:</label>
								<div class="controls">
								  <div class="input-append">
									<input  name="textfield16cpu" type="text" id="cpu1" size="16" value="<%=cpu1 %>"><span class="add-on">物理数量</span>
									<input  name="textfield17cpu" type="text" id="cpu2" size="16"  value="<%=cpu2 %>">
								  <input type ="hidden" id="cpu" name="cpu" value ="" >
								  </div>
								  <!-- <span class="help-inline">Here's more help text</span> -->
								</div>
							  </div>
							
							  <div class="control-group ">
								<label class="control-label2" >内存配置:</label>
								<div class="controls">
								  <input name="memory" type="text" id="memory" size="16" value="<%=memory %>">
								  <span class="help-inline">
								   <label class="control-label2" >硬盘配置:</label>
								<div class="controls">
								  <input name="disk" type="text" id="disk" size="16" value="<%=disk %>"> </div>
								   </span>
								</div>
							  </div>
							  
							  
							  <div class="control-group">
								<label class="control-label2" >操作系统版本:</label>
								<div class="controls">
								  <div class="input-append">
									<select name="select2syn" id="syn1">
								  <option></option>
									<option value="Windows" >Windows</option>
									<option value="Linux"  >Linux</option>
									</select>
									<span class="add-on">-</span>
									<input  name="textfield21syn" type="text" id="syn2" size="16" value="<%=syn2 %>">
									<input type ="hidden" id="syn" name="syn" value ="" >
								  </div>
								</div>
							  </div>
							  
							  
							  <div class="control-group ">
								<label class="control-label2" >数据库版本:</label>
								<div class="controls">
								  <input name="oracle" type="text" id="oracle" size="16" value="<%=oracle %>">
								</div>
							  </div>
							  
							  
							  <div class="control-group ">
								<label class="control-label2" >其它信息:</label>
								<div class="controls">
								  <textarea name="oth"  class="form-inline textarea" id="oth" style="width: 70%" value="<%=oth %>"></textarea>
								 
								</div>
							  </div>
							 <input type ="hidden"   name="id" value ="" >
							<div class="form-actions">
							  
							  <input type="button" name="button3" class="btn btn-primary" id="button3" value="暂存"  onclick="check('3')">
								<input type="button" name="button3c"  id="button3c" class="btn" value="清空" onclick="document.getElementById('form3').reset()"> 
							  </div>
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
			

			
			<form action=""  align="center" id="formall" >
<input type="button" name="buttonall" class="btn btn-primary" id="buttonall" value="提交"  onclick="return checkall()">
</form>
		
	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
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
		typeListGson=<%=session.getAttribute("typeListGson")%>;
		listGson=<%=session.getAttribute("listformGson")%>;
// 		  console.log(listGson);
		  
		  function showClassText(a,b) {
			    if (document.getElementById(a).getAttribute("class")=="a1") {
				document.getElementById(a).setAttribute("class","a2");
				document.getElementById(b).setAttribute("class","a1");
				
			    }else {
				document.getElementById(a).setAttribute("class","a1");
				document.getElementById(b).setAttribute("class","a2");
			    }
			    
			}
		  
		  var sl=	document.getElementById("styp1");
			var textstyp1 = "";
			for (var i = 0; i < typeListGson.length; i++) {
			    textstyp1 += "<option value=\""+typeListGson[i]+"\" >"+typeListGson[i]+"</option>";
			}
			
			document.getElementById("styp1").innerHTML = textstyp1;
		  
		</script>
<script charset="GBK" type="text/javascript" src="myjs/Testform/form.js"></script>

	<!-- end: JavaScript-->

</body>
</html>