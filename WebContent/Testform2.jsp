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
			

<form action=""  align="center" id="formall" >
<input type="button" name="buttonall" class="btn btn-primary" id="buttonall" value="提交"  onclick="return checkall()">
</form>


<%
List<Equ> list=(List<Equ>)session.getAttribute("list");
if (list==null){ list=new ArrayList<>();}
System.out.println(list.size());
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
if(list.size()!=0){
	id= list.get(0).getId();
    pname= list.get(0).getPname();
    sn = list.get(0).getSn();
    pos=list.get(0).getPos();
  
    ip= list.get(0).getIp();
     
    styp= list.get(0).getStyp();
//	    console.log(styp);
   
    sname= list.get(0).getSname();
    sid = list.get(0).getSid();
    did = list.get(0).getDid();
    stdate = list.get(0).getStdate();
    use = list.get(0).getUse();
    ownname= list.get(0).getOwnname();
   
    proname= list.get(0).getProname();
    
    manname= list.get(0).getManname();
    
    agename= list.get(0).getAgename();
    
    mantyp= list.get(0).getMantyp();
    port= list.get(0).getPort();
	
    cpu = list.get(0).getCpu();
    
    memory = list.get(0).getMemory();
    disk = list.get(0).getDisk();
    syn= list.get(0).getSyn();

    oracle = list.get(0).getOracle();
    oth = list.get(0).getOth();
    
    pos1=pos.substring(0,pos.indexOf("/"));
    pos2=pos.substring(pos.indexOf("/")+1,pos.lastIndexOf("/"));
    pos3=pos.substring(pos.lastIndexOf("/")+1);
    ip1=ip.substring(0,ip.indexOf("/"));
    ip2=ip.substring(ip.indexOf("/")+1,ip.lastIndexOf("/"));
    ip3=ip.substring(ip.lastIndexOf("/")+1);
    styp1=styp.substring(0,styp.indexOf("/"));
    styp2=styp.substring(styp.lastIndexOf("/")+1);
    ownname1=ownname.substring(0,ownname.indexOf("/"));
    ownname2=ownname.substring(ownname.indexOf("/")+1,ownname.indexOf("/",ownname.indexOf("/")+1));
    ownname3=ownname.substring(ownname.indexOf("/",ownname.indexOf("/")+1)+1,ownname.lastIndexOf("/"));
    ownname4=ownname.substring(ownname.lastIndexOf("/")+1);
    proname1=proname.substring(0,proname.indexOf("/"));
    proname2=proname.substring(proname.indexOf("/")+1,proname.lastIndexOf("/"));
    proname3=proname.substring(proname.lastIndexOf("/")+1);
    manname1=manname.substring(0,manname.indexOf("/"));
    manname2=manname.substring(manname.indexOf("/")+1,manname.lastIndexOf("/"));
    manname3=manname.substring(manname.lastIndexOf("/")+1); 
    agename1=agename.substring(0,agename.indexOf("/"));
    agename2=agename.substring(agename.indexOf("/")+1,agename.lastIndexOf("/"));
    agename3=agename.substring(agename.lastIndexOf("/")+1); 
    port1=port.substring(0,port.indexOf("/"));
    port2=port.substring(port.indexOf("/")+1,port.lastIndexOf("/"));
    port3=port.substring(port.lastIndexOf("/")+1);
    cpu1=cpu.substring(0,cpu.indexOf("/"));
    cpu2=cpu.substring(cpu.indexOf("/")+1);
    syn1=syn.substring(0,syn.indexOf("/"));
    syn2=syn.substring(syn.indexOf("/")+1);
    
}

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
						<form  name="form1" id="form1" class="form-horizontal">
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
								
								
								<input id="styp1input" style="display: none;" type="text">
								  <select style="display: line;" name="selectstyp"  id="styp1">
								  <option></option>
									</select>
									<span class="add-on ">型号</span>
									<input  size="16" type="text" name="styp2" id="styp2" value="<%=styp2 %>">
								</div>
							  </div>
							  <script type="text/javascript">
							
							
								</script>
							  
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
								<input type="submit" name="buttonee" class="btn btn-primary" id="buttonee" value="暂存"  onclick="check('1')">
								 <button type="submit" name="button1e"  id="button1e" class="btn" onclick="document.getElementById('form1').reset()">清空</button> 
								
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
						<form  name="form2" id="form2" class="form-horizontal">
						
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
								  <option></option>
									<option value="宁波电信" >宁波电信</option>
									
									</select>
									<span class="add-on">部门</span>
									<select name="select4" id="ownname2">
								  <option></option>
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
								
								 <input type="button" name="button2c"  id="button2c" class="btn" onclick="document.getElementById('form2').reset()">清空</button> 
								
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
						<form action="" method="post" name="form3" id="form3" class="form-horizontal">
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
								  <input name="oth" type="text" id="oth" size="16" value="<%=oth %>">
								 
								</div>
							  </div>
							 <input type ="hidden"   name="id" value ="" >
							<div class="form-actions">
							  
							  <input type="submit" name="button3" class="btn btn-primary" id="button3" value="暂存"  onclick="check('3')">
								<button type="submit" name="button3c"  id="button3c" class="btn" onclick="return check3c()">清空</button> 
								
								
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
			    if (document.getElementById(a).style.display=="none") {
				document.getElementById(a).style.display="inline";
				document.getElementById(b).style.display="none";
			    }else {
				document.getElementById(a).style.display="none";
				document.getElementById(b).style.display="inline";
			    }
			    
			}
		  
		  var sl=	document.getElementById("styp1");
			var textstyp1 = "";
			for (var i = 0; i < typeListGson.length; i++) {
			    textstyp1 += "<option value=\""+typeListGson[i]+"\" >"+typeListGson[i]+"</option>";
			}
			
			document.getElementById("styp1").innerHTML = textstyp1;
		  
		</script>
<!-- <script charset="GBK" type="text/javascript" src="myjs/Testform/form.js"></script> -->

<script type="text/javascript">
init();
function init() {
  
    
    
    if ("<%=styp1%>".length==0){
    	document.getElementById("styp1input").style.display="none";
    	document.getElementById("styp1").style.display="inline";
    }else{
    	document.getElementById("styp1input").style.display="inline";
    	document.getElementById("styp1").style.display="none";
    	document.getElementById("styp1input").value ="<%=styp1%>";
    }

    set_select_checked("pos1", "<%=pos1%>");
    set_select_checked("ownname1", "<%=ownname1%>");
    set_select_checked("ownname2", "<%=ownname2%>");
    set_select_checked("syn1", "<%=syn1%>");
    initCheck("sname","input",2,"<%=sname%>");
    initCheck("mantyp","input",5,"<%=mantyp%>");
}

//console.log(id);


function set_select_checked(selectId, checkValue){  
                         var select = document.getElementById(selectId);  
                         for (var i = 0; i < select.options.length; i++){  
                         if (select.options[i].value == checkValue){  
                         select.options[i].selected = true;  
                         break;  }  }  }

function selecta( selectx) {

    var index = selectx.length;
//     console.log(index);
    var s = false;
    var dd = "0";
    for (i = 0; i < index; i++) {
	s = selectx[i].selected;
// 	console.log(s);
	if (s) {
	    dd = selectx[i].text;
	    return dd;
	   
	}
    }
}

function checkboxa(checkboxName){
	var box = document.getElementsByName(checkboxName);
	var bb=[];
	var cc="";
	for(i=0;i<box.length;i++){
		if(box[i].checked){
			bb.push(box[i].value);
		}
	}
	if(bb.length==0){}else{cc=bb.toString()}
	return cc;
}

function check(x){
    Item();
	if (confirm("是否提交？点击确认提交录入信息")) {
	    var url = "AddTestServlet1";
	    var data = "pname=" + pname+"&sn="+sn+"&pos="+pos+"&ip="+ip+"&styp="+styp+"&sname="+sname+"&sid="+sid+"&did="+did+"&stdate="+stdate+"&use="+use+"&ownname="+ownname+"&proname="+proname+"&manname="+manname+"&agename="+agename+"&mantyp="+mantyp+"&port="+port+"&CPU="+CPU+"&memory="+memory+"&disk="+disk+"&syn="+syn+"&oracle="+oracle+"&oth="+oth+"&x="+x;
	    getPost(data, url);
	
	
//	    local.href="Testform.jsp";
	} else {
	    return;// 取消执行时的代码 
	}
}

function Item() {
 //   console.log(111);
	 sid= document.getElementById("sid") ;
did= document.getElementById("did") ;
stdate= document.getElementById("stdate") ;
pname= document.getElementById("pname") ;
use= document.getElementById("use") ;
ownname1= document.getElementById("ownname1") ;
ownname2= document.getElementById("ownname2") ;
ownname3= document.getElementById("ownname3") ;
ownname4= document.getElementById("ownname4") ;
proname1= document.getElementById("proname1") ;
proname2= document.getElementById("proname2") ;
proname3= document.getElementById("proname3") ;
agename1= document.getElementById("agename1") ;
agename2= document.getElementById("agename2") ;
agename3= document.getElementById("agename3") ;
if(document.getElementById("styp1").style.display=="inline"){
   
styp1= document.getElementById("styp1") ;
styp1 = selecta( styp1);
}
else {
    styp1= document.getElementById("styp1input").value ;
   
}


styp2= document.getElementById("styp2") ;
pos1= document.getElementById("pos1") ;
pos2= document.getElementById("pos2") ;
pos3= document.getElementById("pos3") ;
ip1= document.getElementById("ip1") ;
ip2= document.getElementById("ip2") ;
ip3= document.getElementById("ip3") ;
port1= document.getElementById("port1") ;
port2= document.getElementById("port2") ;
port3= document.getElementById("port3") ;
cpu1= document.getElementById("cpu1") ;
cpu2= document.getElementById("cpu2") ;
memory= document.getElementById("memory") ;
disk= document.getElementById("disk") ;
syn1= document.getElementById("syn1") ;
syn2= document.getElementById("syn2") ;
oracle= document.getElementById("oracle") ;
sn= document.getElementById("sn") ;
oth= document.getElementById("oth") ;
manname1= document.getElementById("manname1") ;
manname2= document.getElementById("manname2") ;
manname3= document.getElementById("manname3") ;

cbx = document.getElementsByName("checkbox2");
//console.log(document.getElementsByTagName("input"));

pname = pname.value, sn = sn.value,
	    pos1 = selecta( pos1), pos2 = pos2.value,
	    pos3 = pos3.value, pos = pos1 + "/" + pos2 + "/" + pos3,
	    ip1 = ip1.value, ip2 = ip2.value,
	    ip3 = ip3.value, ip = ip1 + "/" + ip2 + "/" + ip3,
	     styp2 = styp2.value,
	     console.log(styp2);
	    styp = styp1 + "/" + styp2, sname = checkboxa("checkbox2"),
	    sid = sid.value, did = did.value,
	    stdate = stdate.value, use =use.value,
	    ownname1 = selecta(ownname1), ownname2 = selecta(ownname2),
	    ownname3 = ownname3.value, ownname4 = ownname4.value,
	    ownname = ownname1 + "/" + ownname2 + "/" + ownname3 + "/"+ ownname4, proname1 = proname1.value,
	    proname2 = proname2.value, proname3 = proname3.value,
	    proname = proname1 + "/" + proname2 + "/" + proname3,
	    manname1 = manname1.value, manname2 = manname2.value,
	    manname3 =  manname3.value, manname = manname1 + "/" + manname2+ "/" + manname3, agename1 = agename1.value,
	    agename2 = agename2.value, agename3 = agename3.value,
	    agename = agename1 + "/" + agename2 + "/" + agename3,
	    mantyp = checkboxa("checkbox1"), port1 = port1.value,
	    port2 = port2.value, port3 = port3.value, port = port1+ "/" + port2 + "/" + port3, 
	    console.log(port);
	    cpu1 = cpu1.value,
	    cpu2 = cpu2.value, CPU = cpu1 + "/" + cpu2,
	    memory = memory.value, disk = disk.value, 
	    syn1 = selecta(syn1), 
	    syn2 = syn2.value, syn = syn1 + "/"+ syn2, 
	    oracle = oracle.value, oth = oth.value;

	    console.log(styp);
	    
}

	
//	console.log(111);
// 	console.log(listGson);
	
	


//console.log(document.getElementById("stdate"));

function initCheck(id,tagName,len,val) {
    var dd=document.getElementById(id);
   // console.log(dd);
    var dd=dd.getElementsByTagName(tagName);
   // console.log(dd);
    for (i=0;i<len;i++){
      var dd0=  dd[i].value;
     if(val==null){dd[i].checked=false;}
     else {
	 if(val.indexOf(dd0)!=-1){dd[i].checked=true;}else{ dd[i].checked=false;} 
    }
      
    }
}


function checkall() {
    Item();
       
    if (pname == null || pname == "") {
	alert("请输入系统名称！");
	return false;
    } else if (sn == null || sn == "") {
	alert("请输入设备序列号！");
	return false;
    } else {
	if (confirm("是否提交？点击确认提交录入信息")) {
	    var url = "AddTestReturnServlet";
	    var data = "pname=" + pname+"&sn="+sn+"&pos="+pos+"&ip="+ip+"&styp="+styp+"&sname="+sname+"&sid="+sid+"&did="+did+"&stdate="+stdate+"&use="+use+"&ownname="+ownname+"&proname="+proname+"&manname="+manname+"&agename="+agename+"&mantyp="+mantyp+"&port="+port+"&CPU="+CPU+"&memory="+memory+"&disk="+disk+"&syn="+syn+"&oracle="+oracle+"&oth="+oth;
	    getPost(data, url);
 		/*alert("录入成功！");
 	    location.href = "Testform.jsp";*/
	} else {
	    return;// 取消执行时的代码
	}
}}


function getPost(data, url) {
    var httpRequest = new XMLHttpRequest(); // 第一步：创建需要的对象
    httpRequest.open('POST', url, true); // 第二步：打开连接
    httpRequest.setRequestHeader("Content-type",  "application/x-www-form-urlencoded"); // 设置请求头
    // 注：post方式必须设置请求头（在建立连接后设置请求头）
    httpRequest.send(data); // 发送请求 将情头体写在send中
    var json = null;
    httpRequest.onreadystatechange = function() { // 请求后的回调接口，可将请求成功后要执行的程序写在其中
          if (httpRequest.readyState == 4 && httpRequest.status == 200) { //  验证请求是否发送成功
                 var json = httpRequest.responseText; // 获取到服务端返回的数据
                 console.log(json);
       	   if(json==1){alert('已经录入过相同的设备SN号!');return;}
       	  
       	   else if(json==2){alert('录入设备成功!');window.location.href='Testform.jsp';}
       	   else if(json=="check"){alert('暂存成功!');window.location.href='Testform.jsp';}
          }
    };
}


</script>
	<!-- end: JavaScript-->



</body>
</html>