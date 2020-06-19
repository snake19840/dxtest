


function dianji(e) {
		    var li = e.parentElement.parentElement.parentElement.parentElement.parentElement;
		    var div = e.parentElement.parentElement.parentElement.parentElement;
		    var s1 = li.getElementsByTagName("div");
		    var newdiv = s1[4];
		    var a=s1[1].innerText;
		    var aname=a.substring(0,a.indexOf(" ")-3);
		    var username=listusGson[0].userid;
		    var levela=listusGson[0].levela;
		    a=a.substr(Number(a.indexOf("登记时间:"))+Number(7),19);
		   	var aDate=new Date(a);
		   	var myDate = new Date();
		   	aDate= new Date(aDate.valueOf() + Number(2*86400000));
		   if (levela==1) {
		       div.style.display = "none";
			   newdiv.style.display = "block";
		}else if (levela==2) {
		    if (aname==username) {
				if (aDate>=myDate) {
				    div.style.display = "none";
					newdiv.style.display = "block";
				}else {
				    alert("编辑日期已经超过1天,无法进行修改");
				}
		    }else {
			alert("您没有权限修改他人的记录");
		    }
		}
		}



function cancelli(e) {
    var li = e.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement;
    // console.log(li);
    var s1 = li.getElementsByTagName("div");
    // console.log(s1);
    var div = s1[0];
    var newdiv = s1[4];
    div.style.display = "block";
    newdiv.style.display = "none";
}

function saveli(e, z) {
    var li = e.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement;
    var s1 = li.getElementsByTagName("span");
    var s2 = li.getElementsByTagName("textarea");
    var s3 = li.getElementsByTagName("form");
    var time = s1[3].innerText;
    nowdate = time.substr(0 + 7, 19);
    var message = s2[0].value;
    message = line2br(message);
    var message0 = s1[4].innerText;
    message0 = line2br(message0);
    url = "Saveli";
    data = "nowdate=" + nowdate + "&sn=" + sn + "&message=" + message + "&z="
	    + z + "&message0=" + message0;
    getPost(data);
    alert("修改成功");
    if (z == "TestWarning3") {
	location.href = "TestWarning3.jsp";
    } else if (z == "TestWarningItem") {
	location.href = "TestWarningItem.jsp";
    } else if (z == "TestWarningItem2") {
	location.href = "TestWarningItem2.jsp";
    }
}

function delli(e, z) {
    if (confirm("是否删除？点击确认删除")) {
	// 确认执行时的代码
	var li = e.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement;
	var s1 = li.getElementsByTagName("span");
	var time = s1[3].innerText;
	var s2 = li.getElementsByTagName("textarea");
	nowdate = time.substr(0 + 7, 19);
	var message = s1[4].innerText;
	message = line2br(message);
	var statu = time.substr(time.indexOf("=") + 1, 2);
	url = "Delli";
	data = "nowdate=" + nowdate + "&sn=" + sn + "&message=" + message
		+ "&z=" + z;
	getPost(data);
	alert("删除成功");
	if (z == "TestWarning3") {
	    location.href = "TestWarning3.jsp";
	} else if (z == "TestWarningItem") {
	    location.href = "TestWarningItem.jsp";
	} else if (z == "TestWarningItem2") {
	    if (statu == "恢复") {
		location.href = "TestWarningItem.jsp";
	    } else {
		location.href = "TestWarningItem2.jsp";
	    }
	}
    } else {
	return;// 取消执行时的代码
    }
}

 w_text = line2br(w_text);


function line2br(text) {
	text=text+'';
	var a=text.split("\n").join("<br>");
    return a;
}



function getPost(data) {
    var httpRequest = new XMLHttpRequest();// 第一步：创建需要的对象
    httpRequest.open('POST', url, true); // 第二步：打开连接
    httpRequest.setRequestHeader("Content-type",
	    "application/x-www-form-urlencoded");// 设置请求头
						    // 注：post方式必须设置请求头（在建立连接后设置请求头）
    httpRequest.send(data);// 发送请求 将情头体写在send中
    var json = null;
    httpRequest.onreadystatechange = function() {// 请求后的回调接口，可将请求成功后要执行的程序写在其中
	if (httpRequest.readyState == 4 && httpRequest.status == 200) {// 验证请求是否发送成功
	    var json = httpRequest.responseText;// 获取到服务端返回的数据
	}
    };
    return json;
}

// AJAX对象
function ajaxObject() {
    var xmlHttp;
    try {
	// Firefox, Opera 8.0+, Safari
	xmlHttp = new XMLHttpRequest();
    } catch (e) {
	// Internet Explorer
	try {
	    xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
	} catch (e) {
	    try {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	    } catch (e) {
		alert("您的浏览器不支持AJAX！");
		return false;
	    }
	}
    }
    return xmlHttp;
}

function ajaxPost(url, data, fnSucceed, fnFail, fnLoading) {
    var ajax = ajaxObject();
    ajax.open("post", url, true);
    ajax.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    ajax.onreadystatechange = function() {
	if (ajax.readyState == 4) {
	    if (ajax.status == 200) {
		// fnSucceed( ajax.responseText );
	    } else {
		// fnFail( "HTTP请求错误！错误码："+ajax.status );
	    }
	} else {
	    // fnLoading();
	}
    }
    ajax.send(data);

}





								
