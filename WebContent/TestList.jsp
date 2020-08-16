<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
						<form class="form-horizontal">
							<fieldset>
							
							  <!-- <div class="control-group">
								<label class="control-label" for="focusedInput">Focused input</label>
								<div class="controls">
								  <input class="input-xlarge focused" id="focusedInput" type="text" value="This is focused…">
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label">Uneditable input</label>
								<div class="controls">
								  <span class="input-xlarge uneditable-input">Some value here</span>
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="disabledInput">Disabled input</label>
								<div class="controls">
								  <input class="input-xlarge disabled" id="disabledInput" type="text" placeholder="Disabled input here…" disabled="">
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="optionsCheckbox2">Disabled checkbox</label>
								<div class="controls">
								  <label class="checkbox">
									<input type="checkbox" id="optionsCheckbox2" value="option1" disabled="">
									This is a disabled checkbox
								  </label>
								</div>
							  </div>
							  <div class="control-group warning">
								<label class="control-label" for="inputWarning">Input with warning</label>
								<div class="controls">
								  <input type="text" id="inputWarning">
								  <span class="help-inline">Something may have gone wrong</span>
								</div>
							  </div>
							  <div class="control-group error">
								<label class="control-label" for="inputError">Input with error</label>
								<div class="controls">
								  <input type="text" id="inputError">
								  <span class="help-inline">Please correct the error</span>
								</div>
							  </div> -->
							  <div class="control-group success">
								<label class="control-label" >系统名称</label>
								<div class="controls">
								  <input type="text" id="inputSuccess">
								  <span class="help-inline">
								  <label class="control-label" >序列号</label>
								<div class="controls">
								  <input type="text" id="inputSuccess"></div>
								   </span>
								  </div>
								</div>
							  
							  
							  
							  
							  <div class="control-group">
								<label class="control-label" >机架位置</label>
								<div class="controls ">
								  <select id="selectError3">
								  <option></option>
									<option>Option 1</option>
									<option>Option 2</option>
									</select>
									<span class="add-on ">-</span>
									<input id="appendedInput" size="16" type="text">
									<span class="add-on">-</span>
									<input id="appendedInput" size="16" type="text">
								</div>
							  </div>
							  
							  <div class="control-group">
								<label class="control-label" >IP地址</label>
								<div class="controls">
								  <div class="input-append">
									<input id="appendedInput" size="16" type="text"><span class="add-on">子网掩码</span>
									<input id="appendedInput" size="16" type="text"><span class="add-on">网关</span>
									<input id="appendedInput" size="16" type="text">
								  </div>
								  <!-- <span class="help-inline">Here's more help text</span> -->
								</div>
							  </div>
							  
							  
							
							  <div class="control-group">
								<label class="control-label" >品牌 </label>
								<div class="controls ">
								  <select id="selectError3">
								  <option></option>
									<option>Option 1</option>
									<option>Option 2</option>
									</select>
									<span class="add-on ">型号</span>
									<input id="appendedInput" size="16" type="text">
									
								</div>
							  </div>
							  
							   <div class="control-group">
								<label class="control-label">设备类型</label>
								<div class="controls">
								  <label class="checkbox inline">
									<input type="checkbox" id="inlineCheckbox1" value="物理机"> 物理机
								  </label>
								  <label class="checkbox inline">
									<input type="checkbox" id="inlineCheckbox2" value="虚拟机"> 虚拟机
								  </label>
								  
								</div>
							  </div>
							  
							  
							 <!--  <div class="control-group">
								<label class="control-label" for="selectError">Modern Select</label>
								<div class="controls">
								  <select id="selectError" data-rel="chosen">
									<option>Option 1</option>
									<option>Option 2</option>
									<option>Option 3</option>
									<option>Option 4</option>
									<option>Option 5</option>
								  </select>
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="selectError1">Multiple Select / Tags</label>
								<div class="controls">
								  <select id="selectError1" multiple data-rel="chosen">
									<option>Option 1</option>
									<option selected>Option 2</option>
									<option>Option 3</option>
									<option>Option 4</option>
									<option>Option 5</option>
								  </select>
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="selectError2">Group Select</label>
								<div class="controls">
									<select data-placeholder="Your Favorite Football Team" id="selectError2" data-rel="chosen">
										<option value=""></option>
										<optgroup label="NFC EAST">
										  <option>Dallas Cowboys</option>
										  <option>New York Giants</option>
										  <option>Philadelphia Eagles</option>
										  <option>Washington Redskins</option>
										</optgroup>
										<optgroup label="NFC NORTH">
										  <option>Chicago Bears</option>
										  <option>Detroit Lions</option>
										  <option>Green Bay Packers</option>
										  <option>Minnesota Vikings</option>
										</optgroup>
										<optgroup label="NFC SOUTH">
										  <option>Atlanta Falcons</option>
										  <option>Carolina Panthers</option>
										  <option>New Orleans Saints</option>
										  <option>Tampa Bay Buccaneers</option>
										</optgroup>
										<optgroup label="NFC WEST">
										  <option>Arizona Cardinals</option>
										  <option>St. Louis Rams</option>
										  <option>San Francisco 49ers</option>
										  <option>Seattle Seahawks</option>
										</optgroup>
										<optgroup label="AFC EAST">
										  <option>Buffalo s</option>
										  <option>Miami Dolphins</option>
										  <option>New England Patriots</option>
										  <option>New York Jets</option>
										</optgroup>
										<optgroup label="AFC NORTH">
										  <option>Baltimore Ravens</option>
										  <option>Cincinnati Bengals</option>
										  <option>Cleveland Browns</option>
										  <option>Pittsburgh Steelers</option>
										</optgroup>
										<optgroup label="AFC SOUTH">
										  <option>Houston Texans</option>
										  <option>Indianapolis Colts</option>
										  <option>Jacksonville Jaguars</option>
										  <option>Tennessee Titans</option>
										</optgroup>
										<optgroup label="AFC WEST">
										  <option>Denver Broncos</option>
										  <option>Kansas City Chiefs</option>
										  <option>Oakland Raiders</option>
										  <option>San Diego Chargers</option>
										</optgroup>
								  </select>
								</div>
							  </div> -->
							  
							  
							  
							  <div class="form-actions">
								<button type="submit" class="btn btn-primary">保存设备信息</button>
								<button class="btn">清空</button>
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
						<form class="form-horizontal">
							<fieldset>
							
							<div class="control-group ">
								<label class="control-label" >资产编号:</label>
								<div class="controls">
								  <input type="text" id="inputSuccess">
								  <span class="help-inline">
								   <label class="control-label" >档案编号:</label>
								<div class="controls">
								  <input type="text" id="inputSuccess"> </div>
								   </span>
								</div>
							  </div>
							
							<div class="control-group">
							  <label class="control-label" for="date01">设备初次搬入机房日期</label>
							  <div class="controls">
								<input type="text" class="input-xlarge datepicker" id="date01" value="02/16/12">
							  </div>
							</div>
							
							
							<div class="control-group">
								<label class="control-label" >设备用途</label>
								<div class="controls">
								  <div class="input-append">
									<input id="appendedInput" size="16" type="text">
								  </div>
								  <!-- <span class="help-inline">Here's more help text</span> -->
								</div>
							  </div>
							
							<div class="control-group">
								<label class="control-label" >设备资产单位:</label>
								<div class="controls">
								  <div class="input-append">
									<select id="selectError3 ">
								  <option></option>
									<option>Option 1</option>
									<option>Option 2</option>
									</select>
									<span class="add-on">部门</span>
									<input id="appendedInput" size="16" type="text">
									<span class="add-on">联系人</span>
									<input id="appendedInput" size="16" type="text"><span class="add-on">电话</span>
									<input id="appendedInput" size="16" type="text">
								  </div>
								</div>
							  </div>
							  
							
							
							<div class="control-group">
								<label class="control-label" >系统集成商:</label>
								<div class="controls">
								  <div class="input-append">
								  <input id="appendedInput" size="16" type="text">
									<span class="add-on">联系人</span>
									<input id="appendedInput" size="16" type="text">
									<span class="add-on">电话</span>
									<input id="appendedInput" size="16" type="text">
								  </div>
								</div>
							  </div>
							
							
							
							<div class="control-group">
								<label class="control-label" >系统责任人:</label>
								<div class="controls">
								  <div class="input-append">
								  <input id="appendedInput" size="16" type="text">
									<span class="add-on">电话</span>
									<input id="appendedInput" size="16" type="text">
									<span class="add-on">所属部门</span>
									<input id="appendedInput" size="16" type="text">
								  </div>
								</div>
							  </div>
							
							
							<div class="control-group">
								<label class="control-label" >代维单位:</label>
								<div class="controls">
								  <div class="input-append">
								  <input id="appendedInput" size="16" type="text">
									<span class="add-on">联系人</span>
									<input id="appendedInput" size="16" type="text">
									<span class="add-on">电话</span>
									<input id="appendedInput" size="16" type="text">
								  </div>
								</div>
							  </div>
							  
							  
							   <div class="control-group">
								<label class="control-label">维护形式:</label>
								<div class="controls">
								  <label class="checkbox inline">
									<input type="checkbox" id="inlineCheckbox1" value="option1"> 仅放置设备
								  </label>
								  <label class="checkbox inline">
									<input type="checkbox" id="inlineCheckbox2" value="option2"> 硬件维护
								  </label>
								  <label class="checkbox inline">
									<input type="checkbox" id="inlineCheckbox3" value="option3"> 操作系统维护
								  </label>
								  <label class="checkbox inline">
									<input type="checkbox" id="inlineCheckbox1" value="option1"> 数据库维护
								  </label>
								  <label class="checkbox inline">
									<input type="checkbox" id="inlineCheckbox1" value="option1"> 应用维护
								  </label>
								</div>
							  </div>
							
							
							 <!--  <div class="control-group">
								<label class="control-label" for="prependedInput">Prepended text</label>
								<div class="controls">
								  <div class="input-prepend">
									<span class="add-on">@</span><input id="prependedInput" size="16" type="text">
								  </div>
								  <p class="help-block">Here's some help text</p>
								</div>
							  </div> -->
							  
						<!-- 	  <div class="control-group">
								<label class="control-label" for="appendedInput">Appended text</label>
								<div class="controls">
								  <div class="input-append">
									<input id="appendedInput" size="16" type="text"><span class="add-on">.</span>
									<input id="appendedInput" size="16" type="text"><span class="add-on">.</span>
								  </div>
								  <span class="help-inline">Here's more help text</span>
								</div>
							  </div> -->
							  
							  
							 <!--  <div class="control-group">
								<label class="control-label" for="appendedPrependedInput">Append and prepend</label>
								<div class="controls">
								  <div class="input-prepend input-append">
									<span class="add-on">$</span><input id="appendedPrependedInput" size="16" type="text"><span class="add-on">.00</span>
								  </div>
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="appendedInputButton">Append with button</label>
								<div class="controls">
								  <div class="input-append">
									<input id="appendedInputButton" size="16" type="text"><button class="btn" type="button">Go!</button>
								  </div>
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="appendedInputButtons">Two-button append</label>
								<div class="controls">
								  <div class="input-append">
									<input id="appendedInputButtons" size="16" type="text"><button class="btn" type="button">Search</button><button class="btn" type="button">Options</button>
								  </div>
								</div>
							  </div> -->
							 
							 
							 <!--  <div class="control-group">
								<label class="control-label">Checkboxes</label>
								<div class="controls">
								  <label class="checkbox inline">
									<input type="checkbox" id="inlineCheckbox1" value="option1"> Option 1
								  </label>
								  <label class="checkbox inline">
									<input type="checkbox" id="inlineCheckbox2" value="option2"> Option 2
								  </label>
								  <label class="checkbox inline">
									<input type="checkbox" id="inlineCheckbox3" value="option3"> Option 3
								  </label>
								</div>
							  </div>
							  
							  
							  <div class="control-group">
								<label class="control-label">File Upload</label>
								<div class="controls">
								  <input type="file">
								</div>
							  </div> -->
							  
							  
							  <div class="control-group">
								<!-- <label class="control-label">Radio buttons</label>
								 <div class="controls">
								  <label class="radio">
									<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
									Option one is this and that—be sure to include why it's great
								  </label>
								  
								  
								  <div style="clear:both"></div>
								  <label class="radio">
									<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
									Option two can be something else and selecting it will deselect option one
								  </label> 
								 </div>  -->
								
								
							  </div>
							  <div class="form-actions">
								<button type="submit" class="btn btn-primary">保存设备维护信息</button>
								<button class="btn">清空</button>
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
						<form class="form-horizontal">
							<fieldset>
							
							<div class="control-group">
								<label class="control-label" >网线编号:</label>
								<div class="controls">
								  <div class="input-append">
									<input id="appendedInput" size="16" type="text"><span class="add-on">交换机端口号</span>
									<input id="appendedInput" size="16" type="text"><span class="add-on">配线架端口号</span>
									<input id="appendedInput" size="16" type="text">
								  </div>
								  <!-- <span class="help-inline">Here's more help text</span> -->
								</div>
							  </div>
							
							
							<div class="control-group">
								<label class="control-label" >CPU型号:</label>
								<div class="controls">
								  <div class="input-append">
									<input id="appendedInput" size="16" type="text"><span class="add-on">物理数量</span>
									<input id="appendedInput" size="16" type="text">
								  </div>
								  <!-- <span class="help-inline">Here's more help text</span> -->
								</div>
							  </div>
							
							  <div class="control-group ">
								<label class="control-label" >内存配置:</label>
								<div class="controls">
								  <input type="text" id="inputSuccess">
								  <span class="help-inline">
								   <label class="control-label" >硬盘配置:</label>
								<div class="controls">
								  <input type="text" id="inputSuccess"> </div>
								   </span>
								</div>
							  </div>
							  
							  
							  <div class="control-group">
								<label class="control-label" >操作系统版本:</label>
								<div class="controls">
								  <div class="input-append">
									<select id="selectError3 ">
								  <option></option>
									<option>Windows</option>
									<option>Linux</option>
									</select>
									<span class="add-on">-</span>
									<input id="appendedInput" size="16" type="text">
									
								  </div>
								</div>
							  </div>
							  
							  
							  <div class="control-group ">
								<label class="control-label" >数据库版本:</label>
								<div class="controls">
								  <input type="text" id="inputSuccess">
								  
								</div>
							  </div>
							  
							  
							  <div class="control-group ">
								<label class="control-label" >其它信息:</label>
								<div class="controls">
								  <input type="text" id="inputSuccess">
								  
								</div>
							  </div>
							
							
							
							  
							  
							  
							  <div class="form-actions">
								<button type="submit" class="btn btn-primary">保存配置明细</button>
								<button class="btn">清空</button>
							  </div>
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
			
			
			<form>
			<div class="control-group ">
								<label class="control-label" >附件上传:</label>
								<div class="controls">
								  <div class="uploader"><input type="file">
								  <span class="filename" style="user-select: none;">没有文件请选择</span>
								  <span class="action" style="user-select: none;">选择文件</span></div>
								  <span class="help-inline">
								   <label class="control-label" ><button type="submit" class="btn btn-primary">上传</button></label>
								</span>
								  
								</div>
							  </div>
			</form>
			
			
			

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
	<!-- end: JavaScript-->

</body>
</html>