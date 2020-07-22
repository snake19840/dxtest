<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@page import="java.util.List"%>
            <%@page import="java.util.Date"%>
<%@page import="com.clas.Equ"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>secpos</title>
<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="">
	<meta name="keyword" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	 <link href="mycss/iconfont.css" rel="stylesheet" type="text/css"/>
    <link href="mycss/fileUpload.css" rel="stylesheet" type="text/css">
	
	
	
	<link id="bootstrap-style" href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
<link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">
</head>
<body>
<script type="text/javascript">
arrGson=<%=session.getAttribute("arrGson")%>;
arrGson2=<%=session.getAttribute("arrGson2")%>;
</script>
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
				<li><a href="TestChakanContract.jsp" >安全态势</a>
				</li>
			</ul>
			
		<div  >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>安全态势</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
<!-- 							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a> -->
						</div>
					</div>
					
						<div class="box-content">
						 <div id="main" style="width: 100%;height:400px;"></div>
<!-- 						 <div id="main2" style="width: 100%;height:400px;"></div> -->
 <hr align=center width=100% color=#987cb9 SIZE=1 style="background: linear-gradient(to right, #409eff 0%,#ebeef5 50%,#e6a23c 100%);">
						 <div id="main2" style="width: 100%;height:400px;"></div>
						
						</div>
					</div>
				</div>
							
			



			</div><!--/.fluid-container-->
			<!-- end: Content -->
		</div><!--/#content.span10-->
	</div><!--/fluid-row-->
<!-- 	end -->


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
<!-- 	end -->

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
			<script src="echarts/echarts.min.js"></script>
		<script src="echarts/bmap.min.js"></script>
		<script src="echarts/china.js"></script>
		<script src="echarts/dataTool.min.js"></script>
		<script src="echarts/echarts-gl.min.js"></script>
		<script src="ecStat.min.js"></script>
		<script src="echarts/world.js"></script>
		
		
		
 <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
        var myChart2 = echarts.init(document.getElementById('main2'));
        var date = new Date();
        var yearArr= new Array(3);
      let  year0=date.getFullYear()-2,year1=date.getFullYear()-1,year2=date.getFullYear();
      yearArr[0]=""+year0+"年"
      yearArr[1]=""+year1+"年"
      yearArr[2]=""+year2+"年"
  
     
        // 指定图表的配置项和数据
        var option = {
	      		
        	    title: {
        		x:'40px',
        	        text: '近三年每月告警总量'
        	    },
        	    tooltip: {
        	        trigger: 'axis'
        	    },
        	    legend: {
        	        data: yearArr
        	    },
        	    grid: {
        	        left: '3%',
        	        right: '4%',
        	        bottom: '3%',
        	        containLabel: true
        	    },
        	    toolbox: {
        	        feature: {
//         	            saveAsImage: {},
//         	            mark : {},
//         	            markUndo : {},
//         	            markClear : {},
//         	            dataZoom : {},
//         	            dataZoomReset : {},
//         	            dataView : {},
//         	            lineChart : {},
//         	            barChart : {},
//         	            restore : {},
//         	            saveAsImage : {},
        	        },
        	    
        	    },
        	    xAxis: {
        	        type: 'category',
        	        boundaryGap: false,
        	        data: ['一月', '二月', '三月', '四月', '五月', '六月', '七月','八月','九月','十月','十一月','十二月']
        	    },
        	    yAxis: {
        	        type: 'value'
        	    },
        	    series: [
        	        {
        	            name: yearArr[0],
        	            type: 'line',
        	            stack: '告警总量',
        	            data: arrGson[2]
        	        },
        	        {
        	            name: yearArr[1],
        	            type: 'line',
        	            stack: '告警总量',
        	            data: arrGson[1]
        	        },
        	        {
        	            name: yearArr[2],
        	            type: 'line',
        	            stack: '告警总量',
        	            data: arrGson[0]
        	        },
        	    ]
        	};

      // 指定图表的配置项和数据
      var option2 = {
	      		
      	    title: {
      		x:'40px',
      	        text: '近三年每月故障总量'
      	    },
      	    tooltip: {
      	        trigger: 'axis'
      	    },
      	    legend: {
      	        data: yearArr
      	    },
      	    grid: {
      	        left: '3%',
      	        right: '4%',
      	        bottom: '3%',
      	        containLabel: true
      	    },
      	    toolbox: {
      	        feature: {
//       	            saveAsImage: {},
//       	            mark : {},
//       	            markUndo : {},
//       	            markClear : {},
//       	            dataZoom : {},
//       	            dataZoomReset : {},
//       	            dataView : {},
//       	            lineChart : {},
//       	            barChart : {},
//       	            restore : {},
//       	            saveAsImage : {},
      	        },
      	    
      	    },
      	    xAxis: {
      	        type: 'category',
      	        boundaryGap: false,
      	        data: ['一月', '二月', '三月', '四月', '五月', '六月', '七月','八月','九月','十月','十一月','十二月']
      	    },
      	    yAxis: {
      	        type: 'value'
      	    },
      	    series: [
      	        {
      	            name: yearArr[0],
      	            type: 'line',
      	            stack: '故障总量',
      	            data: arrGson2[2]
      	        },
      	        {
      	            name: yearArr[1],
      	            type: 'line',
      	            stack: '故障总量',
      	            data: arrGson2[1]
      	        },
      	        {
      	            name: yearArr[2],
      	            type: 'line',
      	            stack: '故障总量',
      	            data: arrGson2[0]
      	        },
      	    ]
      	};

      
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        myChart2.setOption(option2);
  
        
        
        function formatDate1(date) { 
            var y = date.getFullYear();  
            var m = date.getMonth() + 1;  
            m = m < 10 ? '0' + m : m;  
            var d = date.getDate();  
            d = d < 10 ? ('0' + d) : d;  
            return y + '-' + m + '-' + d;  
         } 
        
        function formatDate2(date) { 
            var y = date.getFullYear();  
            var m = date.getMonth() + 1;  
            m = m < 10 ? '0' + m : m;  
            var d = date.getDate();  
            d = d < 10 ? ('0' + d) : d;  
            return y + '年' + m  + '月';  
         } 
    </script>
</body>
</html>