

function getCookie(name) {
	var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
	 if(arr != null)
     {
   let ll=arr[2].indexOf("/")==-1?  arr[2].length:arr[2].indexOf("/");
     return  unescape(arr[2].substr(0,ll));
   }
  return null;
}


function setCookie(name,value,expires) {
 var exp = new Date();
 exp.setTime(exp.getTime() + expires*1000); 
document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString(); 
return true;
}

var aut = getCookie("aut");
var userid = getCookie("userid");
//userid=codeA(userid);
var username = getCookie("username");
/* console.log(aut);
console.log(userid);
console.log(username); */
function padding1(num, length) {
	for (var len = (num + "").length; len < length; len = num.length) {
		num = "0" + num;
	}
	return num;
}

var myLocaleDate = myDate.toLocaleDateString();
var myLocaleDateTime = myDate.toLocaleString();

function initDate_s(calEvent) {

	
	var fullYear;
	var fullTime;

	if (calEvent["start"]["_i"].length > 11) {
		fullTime = calEvent["start"]["_i"];
		fullYear = fullTime.substr(0, 10);

		return fullTime;
	} else {
		var year = calEvent["start"]["_i"]["0"];
		var month = calEvent["start"]["_i"]["1"];
		var day = calEvent["start"]["_i"]["2"];
		month = month + 1;

		if (year.length == 2) {
			year = myDate.getFullYear();
		}
		if (month < 10) {
			month = padding1(month, 2);
		}
		if (day < 10) {
			day = padding1(day, 2);

		}
		fullYear = year + "-" + month + "-" + day;
		fullTime = fullYear + " 00:00:00";
		return fullTime;
	}

}

function initDate_e(calEvent) {
	
	var fullYear;
	var fullTime;

	if (calEvent["_end"] != null) {

		if (calEvent["_end"]["_i"].length > 10) {
			fullTime = calEvent["_end"]["_i"];
			return fullTime;
		} else {
			var year = calEvent["_end"]["_i"]["0"];
			var month = calEvent["_end"]["_i"]["1"];
			var day = calEvent["_end"]["_i"]["2"];
			month = month + 1;
			if (month < 10) {
				month = padding1(month, 2);
			}
			if (day < 10) {
				day = padding1(day, 2);

			}
			fullYear = year + "-" + month + "-" + day;
			fullTime = fullYear + " 00:00:00";
			return fullTime;

		}

	} else {
		fullTime = null;
		return fullTime;
	}
}

!
function($) {
	"use strict";
	var todayNow = new Date($.now());
	var CalendarApp = function() {
		this.$body = $("body") 
		this.$modal = $('#event-modal'),
		this.$event = ('#external-events div.external-event'),
		this.$calendar = $('#calendar'),
		this.$saveCategoryBtn = $('.save-category'),
		this.$categoryForm = $('#add-category form'),
		this.$extEvents = $('#external-events'),
		this.$calendarObj = null
	};

	/* on drop */
	CalendarApp.prototype.onDrop = function(eventObj, date) {
		console.log(eventObj);
		console.log(date);
		var $this = this;
		// retrieve the dropped element's stored Event Object
		var originalEventObject = eventObj.data('eventObject');
		var $categoryClass = eventObj.attr('data-class');
		// we need to copy it, so that multiple events don't have a reference to the same object
		var copiedEventObject = $.extend({},
		originalEventObject);
		// assign it the date that was reported
		copiedEventObject.start = date;
		console.log(copiedEventObject.start);

		if ($categoryClass) copiedEventObject['className'] = [$categoryClass];
		// render the event on the calendar
		$this.$calendar.fullCalendar('renderEvent', copiedEventObject, true);
		// is the "remove after drop" checkbox checked?
		if ($('#drop-remove').is(':checked')) {
			// if so, remove the element from the "Draggable Events" list
			eventObj.remove();
			// location.href=AddPlanServlet2;
		}
	},

	/* on click on event */
	CalendarApp.prototype.onEventClick = function(calEvent, jsEvent, view) {
//		console.log(calEvent);

		var sdate = initDate_s(calEvent);
		// var edate=initDate_e(calEvent);
		var edate = initDate_e(calEvent);
		//    console.log(sdate);
		//   console.log(edate);
		var urlr = window.location.href;
		// console.log(urlr);
		var className = calEvent["className"]["0"];
		var fcid = calEvent["_id"];
		//   console.log(fcid);
		//   console.log(className);
		function badgeRe(className) {
			var badgeRe;
			if (className == "badge-success") {
				badgeRe = "恢复";
			} else if (className == "badge-warning") {
				badgeRe = "告警"
			} else if (className == "badge-important") {
				badgeRe = "故障"
			} else {
				badgeRe = "巡检人员"
			}
			return badgeRe;
		}
		var statu = badgeRe(className);

		//   username= codeA(username);
		function set_select_checked(selectId, checkValue) {

			var select = document.getElementById(selectId);

			for (var i = 0; i < select.options.length; i++) {

				if (select.options[i].value == checkValue) {

					select.options[i].selected = true;

					break;
				}
			}
		}

		function addplan() {
			//   console.log(111111);
			/*  form1.pname.value=pname;
			form1.ip.value=ip;
			form1.sname.value=sname;
			form1.sn.value=sn;
			form1.id.value=id;
			form1.styp.value=styp;
			
			form1.action="EditTestServlet1";
			form1.method="post";
			form1.submit(); */
		}

		var date = new Date();
		var aut = getCookie("aut");
		var mytoday = date.toLocaleString();
		var mytime = date.toLocaleTimeString();
		var $this = this;

		var form;
		function codeA(a) {
			var codeA = encodeURIComponent(encodeURIComponent(a));
			return codeA;
		}

		/* 管理人员  */
		if (aut == "1\/") {
			if (className == "badge-inverse") {
				if (calEvent["end"]["_i"].length > 10) {
					var sdateinverse = initDate_s(calEvent);
					var edateinverse = initDate_e(calEvent);
					useridinverse = codeA(useridinverse);
					var classNameinverse = "巡检人员";
					form = $("<form1></form1>");
					form.append("<label style='margin-left: 12px;'>选择巡检人员:</label>");
					form.append("<div class='input-group'><select style='margin-left: 12px;' class='form-control' id='title' name='title' > \
            "+selectUsers()+"</select><span class='input-group-btn'>\
           \
            <input type='button' value='修改人员'   class='btn  waves-effect waves-light btn-primary'  style='margin-top: -10px;margin-left: 30px;'\
            onclick=\"changetitle('" + sdateinverse + "','" + edateinverse + "','" + classNameinverse + "')\" > </button></span></div>");

				} else {
					var sdateinverse = initDate_s(calEvent);
					var edateinverse = initDate_e(calEvent);
					var obj = document.getElementById("title");

					var classNameinverse = "巡检人员";
					var useridinverse = calEvent["title"];
					useridinverse = codeA(useridinverse);
					classNameinverse = codeA(classNameinverse);
					form = $("<form1></form1>");
					form.append("<label style='margin-left: 12px;'>选择巡检人员:</label>");
					form.append("<div class='input-group'><select style='margin-left: 12px;' class='form-control' id='title' name='title'>\
            "+selectUsers()+"</select><span class='input-group-btn'>\
           \
            <input type='button' value='确认添加'   class='btn  waves-effect waves-light btn-primary'  style='margin-top: -10px;margin-left: 30px;'\
            onclick=\"location.href=\'AddPlanServlet1?sdate=" + codeA(sdateinverse) + "&edate=" + codeA(edateinverse) + "&userid=" + useridinverse + "&statu=" + classNameinverse + "\'\" > </button></span></div>");

				}
				/* set_select_checked("title",username); */

			} else if (className == "badge-warning" || className == "badge-important") {

				var sdatew = initDate_s(calEvent);
				var edatew = initDate_e(calEvent);
				var statuw = calEvent["className"]["0"];
				var useridwarning = listusGson[0].userid;
				useridwarning = codeA(useridwarning);
				statuw = badgeRe(statuw);
				sdate = codeA(sdatew);
				edate = codeA(edatew);
				statu = codeA(statuw);
				form = $("<form></form>");
				form.append("<label style='margin-left: 12px;'></label>");
				form.append("<div class='input-group' style='margin-top: 32px;margin-left: 52px;'><span class='input-group-btn'>\
            <button class='btn  waves-effect waves-light btn-primary'  style='background-color: #b94a48; margin-top: -10px;margin-left: 80px;'\
            onclick=\"location.href=\'WarningSelect2?sdate=" + sdate + "&userid=" + useridwarning + "&edate=" + edate + "&statu=" + statu + "\'\" >事件内容\
            </button></span></div>");
			} else {}

		}

		/*  普通人员  */
		else {
			if (className == "badge-success") {
				if (calEvent["end"]["_i"].length > 10) {
					var sdatew = initDate_s(calEvent);
					var edatew = initDate_e(calEvent);
					var statuw = calEvent["className"]["0"];
					statuw = badgeRe(statuw);
					sdate = codeA(sdatew);
					edate = codeA(edatew);
					statu = codeA(statuw);
					var useridwarning = listusGson[0].userid;
					useridwarning = codeA(useridwarning);
					//  console.log(statu);
					form = $("<form style='padding-left: 60px;padding-top: 20px;'></form>");
					form.append("<label style='/* margin-left: 60px; */width: 14%;float: left;font-weight: bolder;padding-top: 1px;font-size: 16px;text-align: center;'>巡检人员:</label>");
					form.append("<div class='input-group'>\
            <span style='/* margin-left: 60px; */padding-left: 20px;font-weight: bolder;/* padding-bottom: 1px; */' class='form-control' name='title'>" + userid.substr(0, userid.length - 1) + "\
            <button class='btn  waves-effect waves-light btn-primary'  style='background-color: #b94a48; margin-top: -10px;margin-left: 80px;'\
            onclick=\"location.href=\'WarningSelect2?sdate=" + sdate + "&edate=" + edate + "&userid=" + useridwarning + "&statu=" + statu + "\'\" >事件内容\
            </button></span></div>")

				} else {

					var sdatesuccess = initDate_s(calEvent);
					var edatesuccess = initDate_e(calEvent);
					var useridsuccess = calEvent["title"];
					useridsuccess = codeA(useridsuccess);

					form = $("<form style='padding-left: 60px;padding-top: 20px;'></form>");
					form.append("<label style='/* margin-left: 60px; */width: 14%;float: left;font-weight: bolder;padding-top: 1px;font-size: 16px;text-align: center;'>巡检人员:</label>");
					form.append("<div class='input-group'>\
            <span style='/* margin-left: 60px; */padding-left: 20px;font-weight: bolder;/* padding-bottom: 1px; */' class='form-control' name='title'>" + userid.substr(0, userid.length - 1) + "\
            <button class='btn  waves-effect waves-light btn-primary'  style='margin-top: -10px;margin-left: 120px;'\
            onclick=\"location.href=\'WarningServlet4?sdate=" + codeA(sdatesuccess) + "&edate=" + codeA(edatesuccess) + "&userid=" + useridsuccess + "\'\" >事件登记</button>\
           </span></div>")
				}

			} else if (className == "badge-inverse") {
				if(listusGson[0].levela==1){
					var sdateinverse = initDate_s(calEvent);
					var edateinverse = initDate_e(calEvent);
					useridinverse = codeA(useridinverse);
					var classNameinverse = "巡检人员";
					form = $("<form1></form1>");
					form.append("<label style='margin-left: 12px;'>选择巡检人员:</label>");
					form.append("<div class='input-group'><select style='margin-left: 12px;' class='form-control' id='title' name='title' > \
            "+selectUsers()+"</select><span class='input-group-btn'>\
           \
            <input type='button' value='修改人员'   class='btn  waves-effect waves-light btn-primary'  style='margin-top: -10px;margin-left: 30px;'\
            onclick=\"changetitle('" + sdateinverse + "','" + edateinverse + "','" + classNameinverse + "')\" > </button></span></div>");
				}
				
			} else {
				if (calEvent["end"]["_i"].length > 10) {
					var sdatew = initDate_s(calEvent);
					var edatew = initDate_e(calEvent);
					var statuw = calEvent["className"]["0"];
					statuw = badgeRe(statuw);
					sdate = codeA(sdatew);
					edate = codeA(edatew);
					statu = codeA(statuw);
					var useridwarning = listusGson[0].userid;
					useridwarning = codeA(useridwarning);
					//  console.log(statu);
					form = $("<form style='padding-left: 60px;padding-top: 20px;'></form>");
					form.append("<label style='/* margin-left: 60px; */width: 14%;float: left;font-weight: bolder;padding-top: 1px;font-size: 16px;text-align: center;'>巡检人员:</label>");
					form.append("<div class='input-group'>\
            <span style='/* margin-left: 60px; */padding-left: 20px;font-weight: bolder;/* padding-bottom: 1px; */' class='form-control' name='title'>" + userid.substr(0, userid.length - 1) + "\
            <button class='btn  waves-effect waves-light btn-primary'  style='background-color: #b94a48; margin-top: -10px;margin-left: 80px;'\
            onclick=\"location.href=\'WarningSelect2?sdate=" + sdate + "&edate=" + edate + "&userid=" + useridwarning + "&statu=" + statu + "\'\" >事件内容\
            </button></span></div>")
				} else {
					var sdatewarning = initDate_s(calEvent);
					var edatewarning = initDate_e(calEvent);
					var useridwarning = calEvent["title"];
					useridwarning = codeA(useridwarning);
					var statu = calEvent["className"]["0"];
					statu = badgeRe(statu);
					form = $("<form></form>");
					form.append("<label style='margin-left: 60px;'>巡检人员:</label>");
					form.append("<div class='input-group'>\
            <span style='margin-left: 60px;' class='form-control' name='title'>" + userid.substr(0, userid.length - 1) + "\
            <button class='btn  waves-effect waves-light btn-primary'  style='margin-top: -10px;margin-left: 120px;'\
            onclick=\"location.href=\'AllListServlet3?sdate=" + sdatewarning + "&edate=" + edatewarning + "&userid=" + useridwarning + "&statu=" + statu + "\'\" >事件登记</button>\
            </span></div>")
				}
			}

			/*   <span class='input-group-btn'>\
            <button type='submit' style='margin-top: -10px;margin-left: 30px;' class='btn btn-success waves-effect waves-light'>\
            <i class='fa fa-check'></i> ???</button></span><span class='input-group-btn'>\
            <button  class='btn  waves-effect waves-light btn-primary'  style='margin-top: -10px;margin-left: 30px;'\
            onclick=\"location.href=\'AllListServlet3\'\" >??? </button></span></div>"); */
		}

		// form.append("<div class='input-group'><input class='form-control' type='select' style='border-color: #3a87ad !important;display: inline-block;height: 20px;width:90%;margin-left: 4%;padding: 4px 6px;margin-bottom: 0px;font-size: 14px;line-height: 20px;color: #555555;vertical-align: middle;-webkit-border-radius: 0px;-moz-border-radius: 0px;border-radius: 0px;' value='" + calEvent.title + "' /><span class='input-group-btn'><button type='submit' class='btn btn-success waves-effect waves-light' style='display: inherit;margin-left: 30%;margin-top:2%;' ><i class='fa fa-check' ></i> ???</button></span><span class='input-group-btn'><button  class='btn  waves-effect waves-light btn-primary'  style='display: inherit;margin-left: 20%;margin-top:2%;' onclick=\"location.href=\'AllListServlet3\'\" >??? </button></span></div>");
		$this.$modal.modal({
			backdrop: 'static'
		});
		$this.$modal.find('.delete-event').show().end().find('.save-event').hide().end().find('.modal-body').empty().prepend(form).end().find('.delete-event').unbind('click').on("click",
		function() {
			if (sdate==null){
				var	sd="9999-12-12 00:00:00";
			}else{
				var sd=sdate.substr(0,10)+" 00:00:00";
			}
			
			var sdateDate = new Date(sd);
			if(statu=="巡检人员"){
				if(listusGson[0].levela==1){
					delitem();
				}else{
					$this.$modal.modal('hide');
				alert("您没有权限删除此标签");
				}
			}else{
				if(listusGson[0].levela==1){
					delitem();
				}else{
					if(listusGson[0].userid==calEvent["title"]){
						if(sdateDate>myDate){
							$this.$modal.modal('hide');
						alert("您只能删除当天或当天之前的标签");
						}else{
						delitem();
						}
					}else{
						$this.$modal.modal('hide');
						alert("不是您的建立的标签,您没有权限删除此标签");
					}
				}
			}

		});

		$this.$modal.find('form').on('submit',
		function() {
			if (aut == "1\/") {
				calEvent.title = form.find("select[name='title'] option:checked").val();
			} else {
				calEvent.title = form.find("input[name='title']").val();
			}

			$this.$calendarObj.fullCalendar('updateEvent', calEvent);
			$this.$modal.modal('hide');
			return false;
		});

		function delitem(){
			if (confirm("确定要删除数据吗？")) {
				$this.$calendarObj.fullCalendar('removeEvents',
				function(ev) {

					var userid = calEvent["title"];
					userid = codeA(userid);
					var statu = calEvent["className"]["0"];
					statu = badgeRe(statu);
					statu = codeA(statu);
					edate = calEvent["_end"]["_i"] ;
					location.href = "DeletePlanServlet1?sdate=" + sdate + "&edate=" + edate + "&username=" + userid + "&statu=" + statu;

					return (ev._id == calEvent._id);

				});

			} else {
				return false;
			}
			}
		
		
		function doSubmit() {

			var sdate = initDate_s(calEvent);
			var edate = initDate_e(calEvent);
			var className = calEvent["className"]["0"];
			var username = calEvent["title"];
			var statu = badge(className);

			form1.sdate.value = sdate;
			form1.edate.value = edate;
			form1.username.value = username;
			form1.statu.value = statu;

		}

	},

	

	/* on select */
	
	CalendarApp.prototype.onSelect = function(start, end, allDay) {
//	    console.log(start);
//	   console.log(end);
//	   console.log(allDay);
		
	    var t0= formatTime(myDate);
		var timea=t0;
		var aut = getCookie("aut");
		var username = getCookie("username");
		  		
		var userid = listusGson[0].userid;
//		console.log(userid);

		var date = new Date();
		var today = date.toLocaleString();
		var mytime = date.toLocaleTimeString();
		//var aut=getCookie("aut");
		var $this = this;

		$this.$modal.modal({
			backdrop: 'static'
		});

		//         管理员   
		if (aut == "1\/") {
			var form = $("<form></form>");
			form.append("<div style='width: 100%;padding-left: 42px;padding-top: 9x;' class='row'></div>");
			form.find(".row").append("<div style='width: 30%;float: left;/* padding-left: 0px; */' class='col-md-6'><div class='form-group'><label class='control-label'>巡检人员</label>\
            <select class='form-control' name='title'>\
            "+selectUsers()+"</select></div></div>").append("<input type='hidden' name='nowdate' value='" + today + "'/>").append("<div style='width: 50%;float: right;' class='col-md-6'><div class='form-group'><label class='control-label'>事件类型</label><select class='form-control' name='category'></select></div></div>").find("select[name='category']").append("<option value='badge-inverse'>预设巡检人员</option></div></div>");

		}else if(listusGson[0].levela==1){
		    
		    var form = $("<form id='formChange'></form>");
			form.append("<div style='width: 100%;padding-left: 42px;padding-top: 9x;' class='row'></div>");
			form.find(".row").append("<div style='width: 30%;float: left;/* padding-left: 0px; */' class='col-md-6'><div class='form-group'><label class='control-label'>巡检人员</label>\
        <select class='form-control' name='title'>\
       "+selectUsers()+"</select></div></div>").append("<input type='hidden' name='nowdate' value='" + today + "'/>").append("<div style='width: 50%;float: right;' class='col-md-6'><div class='form-group'><label class='control-label'>事件类型</label><select class='form-control' name='category'></select></div></div>").find("select[name='category']").append("<option value='badge-inverse'>预设巡检人员</option></div></div>");
			form.append("<div id='change1' style='display:block; width: 100%;padding-left: 42px;padding-top: 9x;' class='a1'></div>");
			form.find(".a1").append("<input type='button'  onclick='changex(1,\""+userid+"\",\""+today+"\")' value='切换故障登记'>");
		}
		//        普通人员
		else {
			var form = $("<form></form>");
			form.append("<div style='width: 100%;padding-top:20px;' class='row'></div>");
			form.find(".row")
			.append("<div style='float: left;width: 30%;' class='col-md-6'><div class='form-group'><label style='margin-left:60px;' class='control-label'>巡检人员</label>\
            <span style='margin-left:60px;' class='form-control' name='title' >" + userid + "</span></div></div>")
            .append("<input type='hidden' name='nowdate' value='" + today + "'/>")
            .append("<div style='disply:inline;float: left;width: 30%;display: inline;' class='col-md-6'><div class='form-group'><label class='control-label'>巡检时间</label><input style='width:70px;' type='time' value='"+timea+"' name='timea'></div></div>")
            .append("<div style='disply:inline;float: left;width: 10%;display: inline;' class='col-md-6'><div class='form-group'><label class='control-label'>事件类型</label>\
            <select style='width:90px;' class='form-control' name='category'></select></div></div>").find("select[name='category']").append("<option value='badge-success'>巡检正常</option>").append("<option value='badge-important'>设备故障</option>").append("<option value='badge-warning'>设备告警</option></div></div>");

		}

		$this.$modal.find('.delete-event').hide().end().find('.save-event').show().end().find('.modal-body').empty().prepend(form).end().find('.save-event').unbind('click').on("click",
		function() {
			form.submit();
		});
		$this.$modal.find('form').on('submit',
		function() {
			if (aut == "1\/") {
				var title = form.find("select[name='title'] option:checked").val();
				console.log(title);
				setCookie("userS",title,300);
			}else if (listusGson[0].levela==1) {
			    if (document.getElementsByName("title")[0].tagName=="SELECT") {
				var title = form.find("select[name='title'] option:checked").val();
				console.log(title);
				setCookie("userS",title,300);
			    }else {
				var title = form.find("span[name='title'] ").text();
			    }
			} 
			else {
			    
				var title = form.find("span[name='title'] ").text();
				//  console.log(title);
			}

			var beginning = form.find("input[name='beginning']").val();
			var timea = form.find("input[name='timea']").val();
			var ending = form.find("input[name='ending']").val();
			var categoryClass = form.find("select[name='category'] option:checked").val();
// 			console.log(timea);
			if (title !== null && title.length != 0) {

				var sdate = start["_d"];
				sdate = formatDate(sdate) + " 00:00:00";
				var edate = end["_d"];
				edate = formatDate(edate) + " 00:00:00";
				var userid = title;
				var statu = categoryClass;
				statu = badgeRe(statu);
				
// 				console.log(timea);
//				console.log(statu);
//				console.log(sdate);
//				console.log(edate);
//				console.log(title);
				if (statu == "巡检人员") {
					$this.$calendarObj.fullCalendar('renderEvent', {
						title: title,
						start: start,
						end: end,
						allDay: false,
						className: categoryClass
					},
					true);
					$this.$modal.modal('hide');
					location.href = "AddPlanServlet1?sdate=" + codeA(sdate) + "&edate=" + codeA(edate) + "&userid=" + codeA(userid) + "&statu=" + codeA(statu);
				} else if (statu == "恢复") {
					$this.$calendarObj.fullCalendar('renderEvent', {
						title: title,
						start: start,
						end: end,
						allDay: false,
						className: categoryClass
					},
					true);
					$this.$modal.modal('hide');
					let d1=start._d.getTime()-28800000;
					let d0=myDate.getTime();
					var flag=d1>d0;
					if(!flag){
					location.href = "WarningServlet4?sdate=" + codeA(sdate) + "&edate=" + codeA(edate) + "&userid=" + codeA(userid)+"&time="+timea;
					}else{
					alert("请选择当天或当天之前的日期");
					location.reload();
					}
				} else {
					$this.$calendarObj.fullCalendar('renderEvent', {
						title: title,
						start: start,
						end: end,
						allDay: false,
						className: categoryClass
					},
					true);
					
					$this.$modal.modal('hide');
					let d1=start._d.getTime()-28800000;
					let d0=myDate.getTime();
					var flag=d1>d0;
					if(!flag){
					location.href = "AllListServlet3?sdate=" + codeA(sdate) + "&edate=" + codeA(edate) + "&userid=" + codeA(userid) + "&statu=" + statu+"&time="+timea;
					}else{
					alert("请选择当天或当天之前的日期");
					location.reload();
					}
				}

			} else {
				alert('You have to give a title to your event');
			}
			return false;

		});
		$this.$calendarObj.fullCalendar('unselect');
	},
	CalendarApp.prototype.enableDrag = function() {
		//init events
		$(this.$event).each(function() {
			// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
			// it doesn't need to have a start or end
			var eventObject = {
				title: $.trim($(this).text()) // use the element's text as the event title
			};
			// store the Event Object in the DOM element so we can get to it later
			$(this).data('eventObject', eventObject);
			// make the event draggable using jQuery UI
			$(this).draggable({
				zIndex: 999,
				revert: true,
				// will cause the event to go back to its
				revertDuration: 0 //  original position after the drag
			});
		});
	}

	function badgeRe(className) {
		var badgeRe;
		if (className == "badge-success") {
			badgeRe = "恢复";
		} else if (className == "badge-warning") {
			badgeRe = "告警"
		} else if (className == "badge-important") {
			badgeRe = "故障"
		} else {
			badgeRe = "巡检人员"
		}
		return badgeRe;
	}

	function codeA(a) {
		var codeA = encodeURIComponent(encodeURIComponent(a));
		return codeA;
	}

	function formatDate(date) {
		var y = date.getFullYear();
		var m = date.getMonth() + 1;
		m = m < 10 ? '0' + m: m;
		var d = date.getDate();
		d = d < 10 ? ('0' + d) : d;
		return y + '-' + m + '-' + d;
	};
	function formatDateTime(date) {
		var y = date.getFullYear();
		var m = date.getMonth() + 1;
		m = m < 10 ? ('0' + m) : m;
		var d = date.getDate();
		d = d < 10 ? ('0' + d) : d;
		var h = date.getHours();
		var minute = date.getMinutes();
		minute = minute < 10 ? ('0' + minute) : minute;
		return y + '-' + m + '-' + d + ' ' + h + ':' + minute;
	};

	function badge(statu) {
		var badgeStatu;

		if (statu == "恢复") {
			badgeStatu = "badge-success";
		} else if (statu == "告警") {
			badgeStatu = "badge-warning"
		} else if (statu == "故障") {
			badgeStatu = "badge-important"
		} else {
			badgeStatu = "badge-inverse"
		}
		return badgeStatu;
	}

	/* Initializing */
	CalendarApp.prototype.init = function() {

		this.enableDrag();
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		var form = '';
		var today = new Date($.now());
		var text = "";
		for (let i in listAllDxtestworkObj2) {
			var username = listAllDxtestworkObj2[i]["username"];
			var sdate = listAllDxtestworkObj2[i]["sdate"];
			var edate = listAllDxtestworkObj2[i]["edate"];
			var statu = listAllDxtestworkObj2[i]["statu"];
			if (statu == "巡检人员") {
				var className = "badge-inverse";
			} else {
				var className = badge(statu);
			}

			text += "{";
			text += "    \"title\": \"" + username + "\",";
			if (sdate != null) {
				text += "    \"start\": \"" + sdate + "\",";
			} else {
			}

			if (edate != null) {
				text += "    \"end\": \"" + edate + "\",";
			}

			text += "    \"className\": \"" + className + "\"";
			text += "},";
		}

		text = "[" + text.substr(0, text.length - 1) + "]";
		var obj = JSON.parse(text);
//		console.log(obj);

		var defaultEvents = obj;
		// var defaultEvents =  text;
		//console.log(defaultEvents);
		var $this = this;
		$this.$calendarObj = $this.$calendar.fullCalendar({
			slotDuration: '00:15:00',
			/* If we want to split day time each 15minutes */
			minTime: '08:00:00',
			maxTime: '19:00:00',
			defaultView: 'month',
			handleWindowResize: true,
			height: $(window).height() - 200,
			header: {
				left: 'prevYear,prev,next,nextYear today',
				center: 'title',
				right: ''
			},

			events: defaultEvents,
			editable: true,
			droppable: true,
			// this allows things to be dropped onto the calendar !!!
			eventLimit: true,
			// allow "more" link when too many events
			selectable: true,
			drop: function(date) {
				$this.onDrop($(this), date);
			},
			select: function(start, end, allDay) {
				$this.onSelect(start, end, allDay);
			},
			eventClick: function(calEvent, jsEvent, view) {
				$this.onEventClick(calEvent, jsEvent, view);
			}

		});

		//on new event
		this.$saveCategoryBtn.on('click',
		function() {
			var categoryName = $this.$categoryForm.find("input[name='category-name']").val();
			var categoryColor = $this.$categoryForm.find("select[name='category-color']").val();
			if (categoryName !== null && categoryName.length != 0) {
				$this.$extEvents.append('<div class="external-event badge badge-' + categoryColor + '" data-class="badge-' + categoryColor + '" style="position: relative;"><i class="fa fa-move"></i>' + categoryName + '</div><div style="height: 5px;">&nbsp;</div>') ;
				$this.enableDrag();
			}

		});
	},

	//init CalendarApp
	$.CalendarApp = new CalendarApp,
	$.CalendarApp.Constructor = CalendarApp
} (window.jQuery),

//initializing CalendarApp
function($) {
	"use strict";
	$.CalendarApp.init()
}

(window.jQuery);

function selectUsers(){		
	var text = "";
	var userS=getCookie("userS");
	userS=turnUser(userS);
	text += "<option value='"+userS+"'>"+userS+"</option>";
	for(var i=0;i<userIdsGson.length;i++){
		text += "<option value='"+userIdsGson[i].userid+"'>"+userIdsGson[i].userid+"</option>";
	}	
	return text;
	
	function turnUser(e){
	for(var i=0;i<userIdsGson.length;i++){
	//console.log(userIdsGson[i].userid==e);
	if(i<userIdsGson.length-1){
	if(userIdsGson[i].userid==e){
		return userIdsGson[i+1].userid;
	}
	}else{
	return userIdsGson[0].userid;
	}
	}
	}
}



function changex(e,userid,today) {

	if (e==1) {
	    var text = "";
	    text += "<div style='width: 100%;padding-top:20px;' class='row'>";
	    text += "<div style='float: left;width: 30%;' class='col-md-6'>";
	    text += "<div class='form-group'>";
	    text += "<label style='margin-left:60px;' class='control-label'>巡检人员</label>";
	    text += "<span style='margin-left:60px;' class='form-control' name='title' >" + userid + "</span>";
	    text += "</div>";
	    text += "</div>";
	    text += "<input type='hidden' name='nowdate' value='" + today + "'/>";
 		text += "	<div style=\"width: 30%;float: left;\" class=\"col-md-6\">";
 		 text += "<div class='form-group'><label class='control-label'>巡检时间</label>";
 		 text += "<input style='width:70px;' type='time' name='timea'>";
	    text += "</div>";
	    text += "</div>";
	    text += "<div style='disply:inline;float: left;width:10%;display: inline;' class='col-md-6'>";
	    text += "<div class='form-group'><label class='control-label'>事件类型</label>";
	    text += "<select style='width:90px;' class='form-control' name='category'>";
	    text += "<option value='badge-success'>巡检正常</option>";
	    text += "<option value='badge-important'>设备故障</option>";
	    text += "<option value='badge-warning'>设备告警</option>";
	    text += "</select>";
	    text += "</div>";
	    text += "</div>";
	    text += "</div>";
	    text +="<div id='change1' style='display:block; width: 100%;padding-left: 42px;padding-top: 9x;' class='a1'>";
		text +="<input type='button'  onclick='changex(2,\""+userid+"\",\""+today+"\")' value='切换预设人员'>";
		text +="</div>";
		
		var t0=	formatTime(myDate);
		var timea=t0;
		console.log(timea);
	   document.getElementById("formChange").innerHTML = text;
	   document.getElementsByName("timea")[0].value=timea;
	}else {
	    var text = "";
	    text += "<div id=\"xunjian1\" style=\"display:block; width: 100%;padding-left: 42px;padding-top: 9x;\"";
	    text += "class=\"row\">";
	    text += "	<div style=\"width: 30%;float: left;/* padding-left: 0px; */\" class=\"col-md-6\">";
	    text += "		<div class=\"form-group\">";
	    text += "			<label class=\"control-label\">";
	    text += "				巡检人员";
	    text += "			</label>";
	    text += "			<select class=\"form-control\" name=\"title\">";
	    text += selectUsers();
	    text += "			</select>";
	    text += "		</div>";
	    text += "	</div>";
	    text += "	<input type=\"hidden\" name=\"nowdate\" value=\""+today+"\">";
	    text += "	<div style=\"width: 50%;float: right;\" class=\"col-md-6\">";
	    text += "		<div class=\"form-group\">";
	    text += "			<label class=\"control-label\">";
	    text += "				事件类型";
	    text += "			</label>";
	    text += "			<select class=\"form-control\" name=\"category\">";
	    text += "				<option value=\"badge-inverse\">";
	    text += "					预设巡检人员";
	    text += "				</option>";
	    text += "			</select>";
	    text += "		</div>";
	    text += "	</div>";
	    text += "</div>";
	    text += "<div id=\"change1\" style=\"display:block; width: 100%;padding-left: 42px;padding-top: 9x;\"";
	    text += "class=\"a1\">";
	    text += "	<input type=\"button\" onclick=\"changex(1,\'"+userid+"','"+today+"')\" value=\"切换故障登记\">";
	    text += "</div>";
	    document.getElementById("formChange").innerHTML = text;
	}
}



 var formatDate = function (date) { 

var y = date.getFullYear();  
 
var m = date.getMonth() + 1;  
 
m = m < 10 ? '0' + m : m;  
 
var d = date.getDate();  
 
d = d < 10 ? ('0' + d) : d; 
 
return y + '-' + m + '-' + d;  
 
};  

var formatTime = function (date) { 

    var h = date.getHours();
     
    var m = date.getMinutes();  
     
    m = m < 10 ? '0' + m : m;  
    h = h < 10 ? ('0' + h) : h; 
     
    return h + ':' + m;  
     
};  
