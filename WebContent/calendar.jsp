<%@page import="com.clas.Equ"%>
<%@page import="java.util.List"%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
	<script src="myjs/vue.js" charset="GBK"></script>
<script src="myjs/axios.js" charset="GBK"></script>
<script src="node_modules/moment/moment.js" charset="GBK"></script>
<script src="element-ui/lib/index.js"></script>
<link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">
	
	
	 <link href='fullcalendar-4.4.0/packages/core/main.css' rel='stylesheet' />
    <link href='fullcalendar/daygrid/main.css' rel='stylesheet' />
    <link href='fullcalendar/bootstrap/main.css' rel='stylesheet' />

    <script src='fullcalendar/core/main.js'></script>
    <script src='fullcalendar/daygrid/main.js'></script>
    <script src='fullcalendar/bootstrap/main.js'></script>
    <script src='fullcalendar/interaction/main.js'></script>
<script src='fullcalendar/core/locales/zh-cn.js' charset="GBK"></script>




<script src='myjs/dist/calendar/vue/node_modules/fast-deep-equal/index.js' charset="GBK"></script>
<script src='myjs/dist/calendar/vue/node_modules/@fullcalendar/core/main.js' charset="GBK"></script>
<script src='myjs/dist/calendar/vue/main.umd.js' charset="GBK"></script>
<script src='myjs/dist/calendar/daygrid/main.js' charset="GBK"></script>	
<script src='myjs/dist/calendar/core/main.js' charset="GBK"></script>
<script src='myjs/dist/calendar/timegrid/main.js' charset="GBK"></script>
<script src='myjs/dist/calendar/interaction/main.js' charset="GBK"></script>

<link href='myjs/dist/calendar/core/main.css' rel='stylesheet' />
<link href='myjs/dist/calendar/daygrid/main.css' rel='stylesheet' />
<link href='myjs/dist/calendar/timegrid/main.css' rel='stylesheet' />

<style type="text/css">
.demo-app-calendar {
  margin: 0 auto;
  max-width: 900px;
}
</style>
<title>calendar</title>
</head>
<body>


<%@include file="TestHeader.jsp" %>
		<div class="container-fluid-full" >
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
			
		<div>
				<div  class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>安全态势</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
						<div id="calendar1" class="box-content">
			
					
<!-- 						 <div id="main2" style="width: 100%;height:400px;"></div> -->
<FullCalendar
      class='demo-app-calendar'
      ref="fullCalendar"
      defaultView="dayGridMonth"
      :header="{
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
      }"
      :plugins="calendarPlugins"
      :weekends="calendarWeekends"
      :events="calendarEvents"
      @dateClick="handleDateClick"
      />




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
	import FullCalendar from '@myjs/dist/calendar/vue'
	import dayGridPlugin from '@myjs/dist/calendar/daygrid'
	import timeGridPlugin from '@myjs/dist/calendar/timegrid'
	import interactionPlugin from '@myjs/dist/calendar/interaction'
	
	var cal=new Vue({
	    el:'#calendar1',
	    components: {
		    FullCalendar // make the <FullCalendar> tag available
		  },
	    data:{
		 calendarPlugins: [ // plugins must be defined in the JS
		        dayGridPlugin,
		        timeGridPlugin,
		        interactionPlugin // needed for dateClick
		      ],
		      calendarWeekends: true,
		      calendarEvents: [ // initial event data
		        { title: 'Event Now', start: new Date() }
		      ]，
		      dialogFormVisible:false,
		      gridData: [{
		          date: '2016-05-02',
		          name: '王小虎',
		          address: '上海市普陀区金沙江路 1518 弄'
		        }, {
		          date: '2016-05-04',
		          name: '王小虎',
		          address: '上海市普陀区金沙江路 1518 弄'
		        }, {
		          date: '2016-05-01',
		          name: '王小虎',
		          address: '上海市普陀区金沙江路 1518 弄'
		        }, {
		          date: '2016-05-03',
		          name: '王小虎',
		          address: '上海市普陀区金沙江路 1518 弄'
		        }],
		        form: {
		            name: '',
		            region: '',
		            date1: '',
		            date2: '',
		            delivery: false,
		            type: [],
		            resource: '',
		            desc: ''
		          },
		          
	    },
	    methods: {
		    toggleWeekends() {
		      this.calendarWeekends = !this.calendarWeekends // update a property
		    },
		    gotoPast() {
		      let calendarApi = this.$refs.fullCalendar.getApi() // from the ref="..."
		      calendarApi.gotoDate('2000-01-01') // call a method on the Calendar object
		    },
		    handleDateClick(arg) {
		      if (confirm('Would you like to add an event to ' + arg.dateStr + ' ?')) {
		        this.calendarEvents.push({ // add new event data
		          title: 'New Event',
		          start: arg.date,
		          allDay: arg.allDay
		        })
		      }
		    },
	    },
		    
	})
	</script>

</body>
</html>