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
	    var text = obj.options[index].text; // ѡ���ı�
	    var value = obj.options[index].value; // ѡ��ֵ
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
	text += "<input style=\"display: inline;float: right;font-size: 1px;line-height: 13px;margin-top: 4px;\" type=\"button\" onclick=\"return payover('"+i+"')\" value=\"�Ѹ���\"></span>";
	text += "<p>";
	text += "�������ڣ�<span id=\"plandate2"+i+"\">"+datan[i].plandate2+"</span>&nbsp;&nbsp;&nbsp;�븶�����ڻ�ʣ<span id=\"ld"+i+"\">"+lastday+"</span>��<br>";
	text += "�������ƣ�<span id=\"planm1"+i+"\">"+datan[i].planm1+"</span><br>";
	text += "<select id=\"late"+i+"\" style=\"width: auto;font-size: 1px;background-color: f0f0f0;box-sizing: border-box;height: auto;margin-bottom: 1px;background-color: white;\">";
	text += "<option>1</option>";
	text += "<option>2</option>";
	text += "<option>3</option>";
	text += "<option>4</option>";
	text += "<option>5</option>";
	text += "</select>&nbsp;��&nbsp;";
	text += "<input style=\"font-size: 1px;line-height: 13px;\" type=\"button\" onclick=\"latealert('"+i+"')\" value=\"�Ӻ�����\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
	text += "<input style=\"display: inline;float: right;font-size: 1px;line-height: 13px;margin-top: 4px;\" type=\"button\" onclick=\"aclose('"+i+"')\" value=\"�ر�\">				";
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
	if (confirm("�Ƿ�ȷ���Ѹ��")) {
		setCookie("mark", 1, 1);
	    getPost(data, url,i);
        } else {
            return;// ȡ��ִ��ʱ�Ĵ���
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
	    alert("ѡ���ӳ����ѵ�ʱ��С��ʣ������");
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
	var httpRequest = new XMLHttpRequest(); // ��һ����������Ҫ�Ķ���
	httpRequest.open('POST', url, true); // �ڶ�����������
	httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); // ��������ͷ
	// ע��post��ʽ������������ͷ���ڽ������Ӻ���������ͷ��
	httpRequest.send(data); // �������� ����ͷ��д��send��
	var json = null;
	httpRequest.onreadystatechange = function() { // �����Ļص��ӿڣ��ɽ�����ɹ���Ҫִ�еĳ���д������
		if (httpRequest.readyState == 4 && httpRequest.status == 200) { // ��֤�����Ƿ��ͳɹ�
			var json = httpRequest.responseText; // ��ȡ������˷��ص�����
			console.log(json);
			if (json == "LateAlertSuccess") {aclose(i);}
			if (json == "PayoverSuccess") {alert("����ɹ�!");aclose(i);}
			if (json == "False") {alert("ʧ��,����ϵ����Ա!");return;}
		}
	};
}