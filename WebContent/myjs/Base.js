function codeA(a) {
	var codeA = encodeURIComponent(encodeURIComponent(a));
	return codeA;
}

function showSon(id) {
	// console.log(id);
	var state = document.getElementById(id).style.display;

	if (state == "none") {
		document.getElementById(id).style.display = "inline";
	} else {
		document.getElementById(id).style.display = "none";
	}
}
function showClassText(id1, id2) {
	var state = document.getElementById(id1).style.display;
	console.log(state);
	if (state == "none") {
		document.getElementById(id1).style.display = "inline";
		document.getElementById(id2).style.display = "none";
	} else {
		document.getElementById(id1).style.display = "none";
		document.getElementById(id2).style.display = "inline";
	}
}

function showList() {
	var lin = document.getElementById("lin").value;
	if (lin > 10) {
		alert("请输入1~10以内的数字");
	} else if (lin <= 0) {
		alert("请输入1~10以内的数字");
	}

	var text = "";
	for (var i = 0; i < lin; i++) {
		text += "<li>";
		text += "<div style=\"padding-bottom: 5px;padding-left: 30px;\">";
		text += "<span style=\"padding-left: 25px;padding-right: 10px;letter-spacing: 3px;\">  付款名称</span>";
		text += "<select name=\"payname\"  >";
		text += "<option value=\"1\">Option 1</option> ";
		text += "<option value=\"2\">Option 2</option> ";
		text += "<option value=\"3\">Option 3</option> ";
		text += "</select>	";
		text += "&nbsp;&nbsp;付款比例&nbsp;&nbsp; <div class=\"input-prepend\" style=\"display: inline;\"><input ";
		text += "  name=\"paypor\"  size=\"16\" type=\"number\"><span class=\"add-on\">%</span></div>";
		text += "</div>";
		text += "</li>";
	}
	document.getElementById("li1").innerHTML = text;

}

function rs(x) {
	//  console.log(x);
	document.getElementById("form" + x).reset();
}

function selecta(x, selectx) {
	var index = selectx[x].length;
	//		     console.log(index);
	var s = false;
	var dd = "0";
	for (i = 0; i < index; i++) {
		s = selectx[x][i].selected;
		//		     console.log(s);
		if (s) {
			dd = selectx[x][i].text;
			return dd;

		}
	}
}
function classItem() {
	//  form3= document.getElementById("form3");
	selectx = document.getElementsByTagName("select");
	form3pst = document.getElementById("CB_class_t").style.display;
	form3sst = document.getElementById("son").style.display;
	if (form3pst == "none") {
		classfamily = selecta("0", selectx);
	} else {
		classfamily = document.getElementById("CB_class_t").value;
	}
	if (form3sst == "none") {
		classson = "";
	} else {
		classson = document.getElementById("contractname").value;
	}
	form4payname = document.getElementById("payname").value;
	form4class = selecta("1", selectx);
	console.log(form4payname);

}

function classall() {
	classItem();
	if (classfamily == null || classfamily == "" || classfamily == "请选择项目大类") {
		alert("请输入项目大类！");
		return false;
	} else {
		if (confirm("是否提交？点击确认提交录入信息")) {
			var url = "Classall";
			var data = "classfamily=" + classfamily + "&classson=" + classson;
			getPost(data, url);
			//  		 		alert("录入成功！");
			// 		 	    location.href = "Testform.jsp";
		} else {
			return; // 取消执行时的代码
		}
	}
}
function payall() {
	classItem();
	if (form4payname == null || form4payname == "") {
		alert("请输入付款名称！");
		return false;
	} else if (form4class == "请选择项目大类") {
		alert("请选择项目大类！");
		return false;
	} else {
		if (confirm("是否提交？点击确认提交录入信息")) {
			var url = "Payall";
			var data = "classfamily=" + form4class + "&payname=" + form4payname;
			getPost(data, url);
			//  		 		alert("录入成功！");
			// 		 	    location.href = "Testform.jsp";
		} else {
			return; // 取消执行时的代码
		}
	}
}

function classf() {
	var text = "";
	text += "<option value=\"0\">请选择项目大类</option> ";
	for (var i in classflistGson) {
		text += "<option value=\"" + (Number(i)+ 1)  + "\">" + classflistGson[i].classfamily + "</option> ";
	}
	document.getElementById("CB_class_s").innerHTML = text;
	document.getElementById("CB_class_s2").innerHTML = text;
}

function Item() {
	oppu = document.getElementById("oppu").value;
	oppp = document.getElementById("oppp").value;
	oppa = document.getElementById("oppa").value;
	oppn = document.getElementById("oppn").value;
	oppe = document.getElementById("oppe").value;
	oppx = document.getElementById("oppx").value;
	oppmail = document.getElementById("oppmail").value;
	oppid = document.getElementById("oppid").value;
	oppe2 = document.getElementById("oppe2").value;
	oppad = document.getElementById("oppad").value;
	opppayb = document.getElementById("opppayb").value;
	opppaya = document.getElementById("opppaya").value;
	opppayz = document.getElementById("opppayz").value;
	opppayh = document.getElementById("opppayh").value;
	opppaye = document.getElementById("opppaye").value;
	opppaya2 = document.getElementById("opppaya2").value;
	opppaym = document.getElementById("opppaym").value;
	opppayid = document.getElementById("opppayid").value;
	myu = document.getElementById("myu").value;
	mya = document.getElementById("mya").value;
	myp = document.getElementById("myp").value;
	myn = document.getElementById("myn").value;
	mye = document.getElementById("mye").value;
	myad = document.getElementById("myad").value;
	mye2 = document.getElementById("mye2").value;
	myx = document.getElementById("myx").value;
	myemail = document.getElementById("myemail").value;
	myid = document.getElementById("myid").value;
	mypayb = document.getElementById("mypayb").value;
	mypaya = document.getElementById("mypaya").value;
	mypayz = document.getElementById("mypayz").value;
	mypayh = document.getElementById("mypayh").value;
	mypaye = document.getElementById("mypaye").value;
	mypaya2 = document.getElementById("mypaya2").value;
	mypaym = document.getElementById("mypaym").value;
	mypayid = document.getElementById("mypayid").value;
}

function myall() {
	Item();
	if (myu == null || myu == "") {
		alert("请输入委托方单位！");
		return false;
	} else if (mya == null || mya == "") {
		alert("请输入委托方地址！");
		return false;
	} else if (myp == null || myp == "") {
		alert("请输入法定代表人！");
		return false;
	} else if (myn == null || myn == "") {
		alert("请输入项目联系人！");
		return false;
	} else if (mye == null || mye == "") {
		alert("请输入联系方式！");
		return false;
	} else if (myad == null || myad == "") {
		alert("请输入通讯地址！");
		return false;
	} else if (mye2 == null || mye2 == "") {
		alert("请输入电话！");
		return false;
	} else if (myx == null || myx == "") {
		alert("请输入传真！");
		return false;
	} else if (myemail == null || myemail == "") {
		alert("请输入电子邮箱！");
		return false;
	} else if (mypayb == null || mypayb == "") {
		alert("请输入开户行！");
		return false;
	} else if (mypaya == null || mypaya == "") {
		alert("请输入银行地址！");
		return false;
	} else if (mypayz == null || mypayz == "") {
		alert("请输入帐号！");
		return false;
	} else if (mypayh == null || mypayh == "") {
		alert("请输入户名！");
		return false;
	} else if (mypaye == null || mypaye == "") {
		alert("请输入电话！");
		return false;
	} else if (mypaya2 == null || mypaya2 == "") {
		alert("请输入地址！");
		return false;
	} else if (mypaym == null || mypaym == "") {
		alert("请输入统一社会信用码！");
		return false;
	} else {
		if (confirm("是否提交？点击确认提交录入信息")) {
			var url = "Myall";
			var data = "myu=" + myu + "&mya=" + mya + "&myp=" + myp + "&myn=" + myn + "&mye=" + mye + "&myad=" + myad + "&mye2=" + mye2 + "&myx=" + myx + "&myemail=" + myemail + "&mypayb=" + mypayb + "&mypaya=" + mypaya + "&mypayz=" + mypayz + "&mypayh=" + mypayh + "&mypaye=" + mypaye + "&mypaya2=" + mypaya2 + "&mypaym=" + mypaym;
			getPost(data, url);
			//  		 		alert("录入成功！");
			// 		 	    location.href = "Testform.jsp";
		} else {
			return; // 取消执行时的代码
		}
	}

}
function oppall() {
	Item();
	if (oppu == null || oppu == "") {
		alert("请输入供应商单位！");
		return false;
	} else if (oppp == null || oppp == "") {
		alert("请输入法定代表人！");
		return false;
	} else if (oppa == null || oppa == "") {
		alert("请输入供应商地址！");
		return false;
	} else if (oppn == null || oppn == "") {
		alert("请输入项目联系人！");
		return false;
	} else if (oppe == null || oppe == "") {
		alert("请输入联系方式！");
		return false;
	} else if (oppx == null || oppx == "") {
		alert("请输入项目联系人传真！");
		return false;
	} else if (oppmail == null || oppmail == "") {
		alert("请输入项目联系人电子邮箱！");
		return false;
	} else if (oppe2 == null || oppe2 == "") {
		alert("请输入项目联系人电话！");
		return false;
	} else if (oppad == null || oppad == "") {
		alert("请输入通讯地址！");
		return false;
	} else if (opppayb == null || opppayb == "") {
		alert("请输入开户行！");
		return false;
	} else if (opppaya == null || opppaya == "") {
		alert("请输入银行地址！");
		return false;
	} else if (opppayz == null || opppayz == "") {
		alert("请输入帐号！");
		return false;
	} else if (opppayh == null || opppayh == "") {
		alert("请输入户名！");
		return false;
	} else if (opppaye == null || opppaye == "") {
		alert("请输入电话！");
		return false;
	} else if (opppaya2 == null || opppaya2 == "") {
		alert("请输入地址！");
		return false;
	} else if (opppaym == null || opppaym == "") {
		alert("请输入统一社会信用码！");
		return false;
	} else {
		if (confirm("是否提交？点击确认提交录入信息")) {
			var url = "Oppall";
			var data = "oppu=" + oppu + "&oppp=" + oppp + "&oppa=" + oppa + "&oppn=" + oppn + "&oppe=" + oppe + "&oppx=" + oppx + "&oppmail=" + oppmail + "&oppe2=" + oppe2 + "&oppad=" + oppad + "&opppayb=" + opppayb + "&opppaya=" + opppaya + "&opppayz=" + opppayz + "&opppayh=" + opppayh + "&opppaye=" + opppaye + "&opppaya2=" + opppaya2 + "&opppaym=" + opppaym;
			getPost(data, url);
			// 		 		alert("录入成功！");
			// 		 	    location.href = "Testform.jsp";
		} else {
			return; // 取消执行时的代码
		}
	}
}

function getPost(data, url) {
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
			if (json == "Oppallfalse") {
				alert('已经录入过相同的信息!');
				return;
			}
			if (json == "Oppalltrue") {
				alert('信息录入成功!');
				document.getElementById("form1").reset();
			}
			if (json == "Myallfalse") {
				alert('已经录入过相同的信息!');
				return;
			}
			if (json == "Myalltrue") {
				alert('信息录入成功!');
				document.getElementById("form2").reset();
			}
			if (json == "updateClassson") {
				alert('项目类录入成功!');
				document.getElementById("form3").reset();
			}
			if (json == "classsonIsNull") {
				alert('请填写项目子类信息!');
				return;
			}
			if (json == "insertFS") {
				alert('项目类录入成功!');
				document.getElementById("form3").reset();
			}
			if (json == "insertF") {
				alert('项目类录入成功!');
				document.getElementById("form3").reset();
				location.href = "Base.jsp";
			}
			if (json == "classsonIsSame") {
				alert('已经有相同的子项目名称!');
				return;
			}
			if (json == "PayallSuccess") {
				alert('付款信息录入成功!');
				document.getElementById("form4").reset();
			}
			if (json == "PayallSame") {
				alert('已经有相同的付款名称!');
				return;
			}

		}
	};
}