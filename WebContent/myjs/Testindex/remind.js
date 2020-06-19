/**
 * 
 */

// init();
//    function UpPlanServlet(sdate,edate,statu){
//   	var myselect=document.getElementById("title");
//   	var index=myselect.selectedIndex ;
////   	console.log(index);
//			var userid=	myselect.options[index].text;
//				userid=codeA(userid);
////				alert(1);
//			//	location.href="UpPlanServlet?sdate="+sdate+"&edate="+edate+"&userid="+userid+"&statu="+codeA(statu);
//			}

    function changetitle(sdateinverse,edateinverse,classNameinverse) {
// 	console.log(sdateinverse);
// 	console.log(edateinverse);
// 	console.log(classNameinverse);
	var useridinverse=selected();
	function selected() {
	    var obj=document.getElementById("title");
	    var index=obj.selectedIndex;
	    var text = obj.options[index].text; // 选中文本
	    var value = obj.options[index].value; // 选中值
	    return text;
	}

// 	console.log(useridinverse);
	location.href="UpPlanServlet?sdate="+codeA(sdateinverse) +"&edate="+codeA(edateinverse) +"&userid="+useridinverse+"&statu="+codeA(classNameinverse);
    }
    
    function init() {
    	
    var con=	listusGson[0].con;
   // console.log(con);
    if (con==1){
    
    	var text=gritter();
	document.getElementById("gritter-notice-wrapper").innerHTML = text;
    }
	
    }
    
    
    function getCookie(name) {
    var reg = RegExp(name + '=([^;]+)');
    var arr = document.cookie.match(reg);
    if (arr) {
        return arr[1];
    } else {
        return '';
    }
};
    function setCookie(name, value, day) {
    var date = new Date();
    date.setDate(date.getDate() + day);
    document.cookie = name + '=' + value + ';expires=' + date;
};
    
    function gritter() {
var text = "";
if (datan==null){datan=[];
datan.length=0;
}

for (var i = 0; i < datan.length; i++) {
    var lastday=Number(datan[i].lastday)+Number(1);
    text += "<div  id=\"gritter-item-"+i+"\" class=\"gritter-item-wrapper \" style=\"display: block;\">";
	text += "<div class=\"gritter-top\">";
	text += "</div>";
	text += "<div class=\"gritter-item\">";
	text += "<div class=\"gritter-close\">";
	text += "</div>";
	text += "<div class=\"gritter-without-image\">";
	text += "<span class=\"gritter-title\">";
	text += datan[i].contractname;
	text += "<input style=\"display: inline;float: right;font-size: 1px;line-height: 13px;margin-top: 4px;\" type=\"button\" onclick=\"return payover('"+i+"')\" value=\"已付款\"></span>";
	text += "<p>";
	text += "付款日期：<span id=\"plandate2"+i+"\">"+datan[i].plandate2+"</span>&nbsp;&nbsp;&nbsp;离付款日期还剩<span id=\"ld"+i+"\">"+lastday+"</span>天<br>";
	text += "付款名称：<span id=\"planm1"+i+"\">"+datan[i].planm1+"</span><br>";
	text += "<select id=\"late"+i+"\" style=\"width: auto;font-size: 1px;background-color: f0f0f0;box-sizing: border-box;height: auto;margin-bottom: 1px;background-color: white;\">";
	text += "<option>1</option>";
	text += "<option>2</option>";
	text += "<option>3</option>";
	text += "<option>4</option>";
	text += "<option>5</option>";
	text += "</select>&nbsp;天&nbsp;";
	text += "<input style=\"font-size: 1px;line-height: 13px;\" type=\"button\" onclick=\"latealert('"+i+"')\" value=\"延后提醒\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
	text += "<input style=\"display: inline;float: right;font-size: 1px;line-height: 13px;margin-top: 4px;\" type=\"button\" onclick=\"aclose('"+i+"')\" value=\"关闭\">				";
	text += "</p>";
	text += "</div>";
	text += "<div style=\"clear:both\">";
	text += "</div>";
	text += "<input id=\"contractid"+i+"\" type=\"hidden\" value=\""+datan[i].contractid+"\">";
	text += "<input id=\"plandate1"+i+"\" type=\"hidden\" value=\""+datan[i].plandate1+"\">";
	text += "</div>";
	text += "<div class=\"gritter-bottom\">";
	text += "</div>";
	text += "</div>";
}
	
	return text;
    }
    
    function payover(i) {
	var contractid=document.getElementById("contractid"+i).value;
	var plandate2=document.getElementById("plandate2"+i).innerHTML;
	var url="Payover";
	var data="contractid="+contractid+"&plandate2="+plandate2;
	if (confirm("是否确认已付款？")) {
		setCookie("mark", 1, 1);
	    getPost(data, url,i);
        } else {
            return;// 取消执行时的代码
        }
	 
    }
    
    function latealert(i) {
	var ld=document.getElementById("ld"+i).innerHTML;
	var selectx=document.getElementById("late"+i);
	var contractid=document.getElementById("contractid"+i).value;
	var plandate1=document.getElementById("plandate1"+i).value;
	var dd=selecta(selectx);
	var url="LateAlert";
	var data="dd="+dd+"&contractid="+contractid+"&plandate1="+plandate1;
// 	console.log(dd);
// 	console.log(ld);
	if (Number(dd)>Number(ld)) {
	    alert("选择延迟提醒的时间小于剩余日期");
	}else {
			setCookie("mark", 1, 1);
	    getPost(data, url,i);
	}
	
    }
    
    function aclose(i) {
    		setCookie("mark", 1, 1);
	document.getElementById("gritter-item-"+i).style.display="none";
    }
    
    function selecta(selectx) {
	    var index = selectx.length;
//	     console.log(index);
	    var s = false;
	    var dd = "0";
	    for (i = 0; i < index; i++) {
	       s = selectx[i].selected;
//	     console.log(s);
	       if (s) {
	           dd = selectx[i].text;
	           return dd;
	          
	       }
	    }
	}
    
    function getPost(data, url,i) {
	var httpRequest = new XMLHttpRequest(); // 第一步：创建需要的对象
	httpRequest.open('POST', url, true); // 第二步：打开连接
	httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); // 设置请求头
	// 注：post方式必须设置请求头（在建立连接后设置请求头）
	httpRequest.send(data); // 发送请求 将情头体写在send中
	var json = null;
	httpRequest.onreadystatechange = function() { // 请求后的回调接口，可将请求成功后要执行的程序写在其中
		if (httpRequest.readyState == 4 && httpRequest.status == 200) { // 验证请求是否发送成功
			var json = httpRequest.responseText; // 获取到服务端返回的数据
			console.log(json);
			if (json == "LateAlertSuccess") {aclose(i);}
			if (json == "PayoverSuccess") {alert("付款成功!");aclose(i);}
			if (json == "False") {alert("失败,请联系管理员!");return;}
		}
	};
}