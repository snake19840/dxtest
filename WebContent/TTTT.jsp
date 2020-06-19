<%@page import="com.clas.Turn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.util.List"%>
<%@page import="com.clas.Equ"%>
<%@page import="com.clas.Turn"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='fullcalendar/core/main.css' rel='stylesheet' />
    <link href='fullcalendar/daygrid/main.css' rel='stylesheet' />
    <link href='fullcalendar/list/main.css' rel='stylesheet' />
	<link href='fullcalendar/timegrid/main.css' rel='stylesheet' />
	
	<link href='fullcalendar/bootstrap/main.css' rel='stylesheet' />
	
	
	
	<script src='fullcalendar/bootstrap/main.js'></script>
	<script src="jquery-ui-themes-1.12.1/jquery.min.js"></script>
    <script src='fullcalendar/core/main.js'></script>
    <script src='fullcalendar/daygrid/main.js'></script>
    <script src='fullcalendar/list/main.js'></script>
	<script src='fullcalendar/timegrid/main.js'></script>
	<script src='fullcalendar/core/locales/zh-cn.js'></script>
	<script src='fullcalendar/interaction/main.js'></script>
	<script src='fullcalendar/rrule/main.js'></script>
    <script>

      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');

       /*  var calendar = new FullCalendar.Calendar(calendarEl, {
          plugins: [ 'dayGrid' ]
        }); */
        var calendar = new FullCalendar.Calendar(calendarEl, {
        	  plugins: [ 'dayGrid', 'timeGrid', 'list','interaction','rrule' ], // an array of strings!
        //	  plugins: [ 'bootstrap' ],
        selectable: true,
        locale: 'zh-cn'	,
      //  themeSystem: 'bootstrap',
        customButtons: {
            myCustomButton: {
              text: 'custom!',
              click: function() {
                alert('clicked the custom button!');
              }
            }
          },
          
          header: {
            left: 'prevYear,prev,next,nextYear today  ',
            center: 'title',
            right: 'dayGridMonth,list',
            
          },
          dayClick: function(date, allDay, jsEvent, view) {
        	  alert("NN");
        	  },
        	 
        	  
        	  events: [
        		    {
        		      // standard property
        		      title: '任力',

        		      rrule: 'DTSTART:20191009T103000Z\nRRULE:FREQ=WEEKLY;INTERVAL=5;UNTIL=20191230;BYDAY=MO,FR',
        		      // ...or, an object...
        		      rrule: {
        		        freq: 'weekly',
        		        interval: 5,
        		        byweekday: [ 'mo', 'fr' ],
        		        dtstart: '2019-10-09T10:30:00',
        		        until: '2019-12-30'
        		      },

        		      // for specifying the end time of each instance
        		      duration: '02:00'
        		    }
        		  ],
        	 
        		  
        		  
        		  timeZone: 'UTC',
        		  events: [
        		    {
        		      id: 'a',
        		      title: 'my event',
        		      start: '2019-10-01'
        		    }
        		  ],
          
      /*    editable: true,
			eventLimit: true,
			navLinks: true,
			
			businessHours: true,*/
			
			/*
			events: function(start, end, timezone, callback){
				$.ajax({
					type : "get",
					url : '${ctx}/static/jsondata/daysData.json',
					success : function(data) {
						callback(data);
					}
				});
			},
			
			/*
			dayClick: function(date, allDay, jsEvent, view) {
	        	alert($.fullCalendar.formatDate(date, "YYYY-MM-DD"));
			},
			eventClick: function(event) {
				alert(event.title);
			}
          */
         
          
          //defaultView: 'listWeek',
          events: [
            {
              title: 'Meeting',
              start: '2019-10-09T14:30:00',
              extendedProps: {
                status: 'done'
              }
            },
            {
              title: 'Birthday Party',
              start: '2019-10-09T07:00:00',
              backgroundColor: 'green',
              borderColor: 'green'
            }
          ],
          
        
          
          
          
          
          eventRender: function(info) {
            if (info.event.extendedProps.status === 'done') {

              // Change background color of row
              info.el.style.backgroundColor = 'red';

              // Change color of dot marker
              var dotEl = info.el.getElementsByClassName('fc-event-dot')[0];
              if (dotEl) {
                dotEl.style.backgroundColor = 'white';
              }
            }
          }
          
        });
        
        calendar.setOption('aspectRatio', 1.5);
        calendar.render();
        
      });
      
      function changeImage() {
		element=document
	}
      </script>


</head>
<body>
<div id='calendar'></div>
</body>
</html>