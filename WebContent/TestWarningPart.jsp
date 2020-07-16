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
	
<link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="img/favicon.ico">
	<!-- end: Favicon -->
<script type="text/javascript">
TT="<%=session.getAttribute("TT")%>";
/*设置cookie*/ 
function setCookie(name,value,expires) {
 var exp = new Date();
 exp.setTime(exp.getTime() + expires*60*60*1000); 
document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString(); 
}

setCookie("TT",TT,4);

 //获取cookie 
function getCookie(name) {
 var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
 if(arr != null) return unescape(arr[2]);
 return false; }
 
 TT=getCookie("TT");

</script>	
	
	
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
			<%
			String userid=(String)session.getAttribute("userid_AllListServlet3");
			%>
			<!-- start: Content -->
			<div id="content" class="span10">
			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="ReturnIndex">主页</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">日常运维</a></li>
			</ul>



	<% String user1=(String)session.getAttribute("userid_AllListServlet3"); %>
		
			
 <div >		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span>查询设备</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					
					
					
					
					
				 	
					
					
					<div class="box-content">
						 <table class="table table-striped table-bordered bootstrap-datatable datatable"> 
						  <thead>
							   <tr>
							   <th>故障编号</th>
								  <th>设备编号</th>
								  <th>录入时间</th>
								  <th>巡检时间</th>
								  <th>巡检人员</th>
								  <th>故障信息</th>
								 <th>详细</th>
							  </tr> 
							 </thead>   
						  <tbody>
							 <tr>
							
							  <%
				// 获取图书信息集合
					List<Equ> list = (List<Equ>)session.getAttribute("list_WarningSelect2");
					
					// 判断集合是否有效
					if(list == null || list.size() < 1){
// 						out.print("没有数据！");
					}else{
						// 遍历集合中的数据
						for(Equ equ : list){
						String sn=	equ.getSn();
						String nowdate=	equ.getNowdate();
						String username=	equ.getUsername();
						String message=	equ.getMessage();
						String sdate=equ.getSdate();
						if(sdate==null){sdate="0000-00-00";}
						else{sdate=sdate.substring(0,10);}
						String time=equ.getTime();
						if(time==null){time="00:00";}
						time=sdate+" "+time;
						String stno=	equ.getStno();
						message = message.replace("<br />", "; ");
						String statu=equ.getStatu();
						String 	userpwd=equ.getUserpwd();
						
						if (userpwd==null){userpwd="";}
						System.out.println(userpwd);
						if(message.length()>150){
							message=message.substring(0,149)+"......";
						}
							
			%>
							 <td><%=stno%></td>
								<td><%=sn%></td>
								<td class="center"><%=nowdate%></td>
								<td class="center"><%=time%></td>
								<td class="center"><%=username%></td>
								<td class="center"><%=message %></td>
								
								<td class="center">
									<%-- <a class="btn btn-success" href="ChakanTestServlet?sn=<%=equ.getSn()%>">
										<i class="halflings-icon white zoom-in"></i>  
									</a> --%>
									
									<%if(userpwd.equals("restore")){
										%>
										 <a class="btn btn-success" href="WarningPart?sn=<%=sn%>&userid=<%=user1 %>&stno=<%=stno %>&nowdate=<%=nowdate %>&TT=<%=session.getAttribute("TT")%>">
										<i class="halflings-icon white zoom-in"></i>  
									</a>
										<% 
									}else if(stno.equals("0")){%>
										
										 <a class="btn btn-success" href="WarningPart?sn=<%=sn%>&userid=<%=user1 %>&stno=<%=stno %>&nowdate=<%=nowdate %>&sdate=<%=equ.getSdate() %>&edate=<%=equ.getEdate()%>&TT=<%=session.getAttribute("TT")%>">
											<i class="halflings-icon white zoom-in"></i>  
										</a>
										
									<%}else{
										%>
										 <a class="btn btn-danger" href="WarningPart?sn=<%=sn%>&userid=<%=user1 %>&stno=<%=stno %>&nowdate=<%=nowdate %>&TT=<%=session.getAttribute("TT")%>">
										<i class="halflings-icon white warning-sign"></i> 
										<%
									} %>
									
									
									
								</td>
							</tr>
							
							
							<%
					}
				}
			%> 
							
							
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
			



	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
	
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
	<script type="text/javascript" language="javascript">			
	
	
	function loadDoc() {
		 $.ajax({
             type:"post",            //传输方式为post，所以我们在servlet里面代码是写在doPost()函数中
             url:"DataServlet1",      //这就是使用的servlet的url
             success:function(data){
            	var obj= JSON.parse(data);
            	//console.log(obj);
            	//console.log(obj["1"]);
            	var str = "";
            	for(var i in obj){
            		var v1 = obj[i];
            		var pname = v1["pname"];
            	//	console.log(pname);
            		  var sn = v1["sn"];
            		 
            	var pos=v1["pos"];
            		var ip = v1["ip"];  
            		  var ip1=ip.substring(0, ip.indexOf("/")); 
            		  var styp = v1["styp"];  
            		  var	styp1=styp.substring(0, styp.indexOf("/"));	
            		  var sname = v1["sname"];
            		  var id = v1["id"];
            		//console.log(ip1); 
            		 str += "<tr><td id=Pname>"+pname+"</td><td class=\"center\">"+sn+"</td><td class=\"center\">"+pos+"</td><td class=\"center\">"+ip1+"</td><td class=\"center\">"+styp1+"</td><td class=\"center\">"+sname+"</td><td class=\"center\"><a class=\"btn btn-info\" href=\"EditTestServlet?id="+id+"\"><i class=\"halflings-icon white warning-sign\"></i></a></td></tr>"; 
            		// str += "<tr><td >"+pname+"</td> <td class=\"center\">"+sn+"</td></tr>"; 
            
            	}; 
            	
            	document.getElementById("tbody").innerHTML = str;
            	}
		});
		 }
		  
</script>	
	
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