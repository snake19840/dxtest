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
		alert("������1~10���ڵ�����");
	} else if (lin <= 0) {
		alert("������1~10���ڵ�����");
	}

	var text = "";
	for (var i = 0; i < lin; i++) {
		text += "<li>";
		text += "<div style=\"padding-bottom: 5px;padding-left: 30px;\">";
		text += "<span style=\"padding-left: 25px;padding-right: 10px;letter-spacing: 3px;\">  ��������</span>";
		text += "<select name=\"payname\"  >";
		text += "<option value=\"1\">Option 1</option> ";
		text += "<option value=\"2\">Option 2</option> ";
		text += "<option value=\"3\">Option 3</option> ";
		text += "</select>	";
		text += "&nbsp;&nbsp;�������&nbsp;&nbsp; <div class=\"input-prepend\" style=\"display: inline;\"><input ";
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
	if (classfamily == null || classfamily == "" || classfamily == "��ѡ����Ŀ����") {
		alert("��������Ŀ���࣡");
		return false;
	} else {
		if (confirm("�Ƿ��ύ�����ȷ���ύ¼����Ϣ")) {
			var url = "Classall";
			var data = "classfamily=" + classfamily + "&classson=" + classson;
			getPost(data, url);
			//  		 		alert("¼��ɹ���");
			// 		 	    location.href = "Testform.jsp";
		} else {
			return; // ȡ��ִ��ʱ�Ĵ���
		}
	}
}
function payall() {
	classItem();
	if (form4payname == null || form4payname == "") {
		alert("�����븶�����ƣ�");
		return false;
	} else if (form4class == "��ѡ����Ŀ����") {
		alert("��ѡ����Ŀ���࣡");
		return false;
	} else {
		if (confirm("�Ƿ��ύ�����ȷ���ύ¼����Ϣ")) {
			var url = "Payall";
			var data = "classfamily=" + form4class + "&payname=" + form4payname;
			getPost(data, url);
			//  		 		alert("¼��ɹ���");
			// 		 	    location.href = "Testform.jsp";
		} else {
			return; // ȡ��ִ��ʱ�Ĵ���
		}
	}
}

function classf() {
	var text = "";
	text += "<option value=\"0\">��ѡ����Ŀ����</option> ";
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
		alert("������ί�з���λ��");
		return false;
	} else if (mya == null || mya == "") {
		alert("������ί�з���ַ��");
		return false;
	} else if (myp == null || myp == "") {
		alert("�����뷨�������ˣ�");
		return false;
	} else if (myn == null || myn == "") {
		alert("��������Ŀ��ϵ�ˣ�");
		return false;
	} else if (mye == null || mye == "") {
		alert("��������ϵ��ʽ��");
		return false;
	} else if (myad == null || myad == "") {
		alert("������ͨѶ��ַ��");
		return false;
	} else if (mye2 == null || mye2 == "") {
		alert("������绰��");
		return false;
	} else if (myx == null || myx == "") {
		alert("�����봫�棡");
		return false;
	} else if (myemail == null || myemail == "") {
		alert("������������䣡");
		return false;
	} else if (mypayb == null || mypayb == "") {
		alert("�����뿪���У�");
		return false;
	} else if (mypaya == null || mypaya == "") {
		alert("���������е�ַ��");
		return false;
	} else if (mypayz == null || mypayz == "") {
		alert("�������ʺţ�");
		return false;
	} else if (mypayh == null || mypayh == "") {
		alert("�����뻧����");
		return false;
	} else if (mypaye == null || mypaye == "") {
		alert("������绰��");
		return false;
	} else if (mypaya2 == null || mypaya2 == "") {
		alert("�������ַ��");
		return false;
	} else if (mypaym == null || mypaym == "") {
		alert("������ͳһ��������룡");
		return false;
	} else {
		if (confirm("�Ƿ��ύ�����ȷ���ύ¼����Ϣ")) {
			var url = "Myall";
			var data = "myu=" + myu + "&mya=" + mya + "&myp=" + myp + "&myn=" + myn + "&mye=" + mye + "&myad=" + myad + "&mye2=" + mye2 + "&myx=" + myx + "&myemail=" + myemail + "&mypayb=" + mypayb + "&mypaya=" + mypaya + "&mypayz=" + mypayz + "&mypayh=" + mypayh + "&mypaye=" + mypaye + "&mypaya2=" + mypaya2 + "&mypaym=" + mypaym;
			getPost(data, url);
			//  		 		alert("¼��ɹ���");
			// 		 	    location.href = "Testform.jsp";
		} else {
			return; // ȡ��ִ��ʱ�Ĵ���
		}
	}

}
function oppall() {
	Item();
	if (oppu == null || oppu == "") {
		alert("�����빩Ӧ�̵�λ��");
		return false;
	} else if (oppp == null || oppp == "") {
		alert("�����뷨�������ˣ�");
		return false;
	} else if (oppa == null || oppa == "") {
		alert("�����빩Ӧ�̵�ַ��");
		return false;
	} else if (oppn == null || oppn == "") {
		alert("��������Ŀ��ϵ�ˣ�");
		return false;
	} else if (oppe == null || oppe == "") {
		alert("��������ϵ��ʽ��");
		return false;
	} else if (oppx == null || oppx == "") {
		alert("��������Ŀ��ϵ�˴��棡");
		return false;
	} else if (oppmail == null || oppmail == "") {
		alert("��������Ŀ��ϵ�˵������䣡");
		return false;
	} else if (oppe2 == null || oppe2 == "") {
		alert("��������Ŀ��ϵ�˵绰��");
		return false;
	} else if (oppad == null || oppad == "") {
		alert("������ͨѶ��ַ��");
		return false;
	} else if (opppayb == null || opppayb == "") {
		alert("�����뿪���У�");
		return false;
	} else if (opppaya == null || opppaya == "") {
		alert("���������е�ַ��");
		return false;
	} else if (opppayz == null || opppayz == "") {
		alert("�������ʺţ�");
		return false;
	} else if (opppayh == null || opppayh == "") {
		alert("�����뻧����");
		return false;
	} else if (opppaye == null || opppaye == "") {
		alert("������绰��");
		return false;
	} else if (opppaya2 == null || opppaya2 == "") {
		alert("�������ַ��");
		return false;
	} else if (opppaym == null || opppaym == "") {
		alert("������ͳһ��������룡");
		return false;
	} else {
		if (confirm("�Ƿ��ύ�����ȷ���ύ¼����Ϣ")) {
			var url = "Oppall";
			var data = "oppu=" + oppu + "&oppp=" + oppp + "&oppa=" + oppa + "&oppn=" + oppn + "&oppe=" + oppe + "&oppx=" + oppx + "&oppmail=" + oppmail + "&oppe2=" + oppe2 + "&oppad=" + oppad + "&opppayb=" + opppayb + "&opppaya=" + opppaya + "&opppayz=" + opppayz + "&opppayh=" + opppayh + "&opppaye=" + opppaye + "&opppaya2=" + opppaya2 + "&opppaym=" + opppaym;
			getPost(data, url);
			// 		 		alert("¼��ɹ���");
			// 		 	    location.href = "Testform.jsp";
		} else {
			return; // ȡ��ִ��ʱ�Ĵ���
		}
	}
}

function getPost(data, url) {
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
			if (json == "Oppallfalse") {
				alert('�Ѿ�¼�����ͬ����Ϣ!');
				return;
			}
			if (json == "Oppalltrue") {
				alert('��Ϣ¼��ɹ�!');
				document.getElementById("form1").reset();
			}
			if (json == "Myallfalse") {
				alert('�Ѿ�¼�����ͬ����Ϣ!');
				return;
			}
			if (json == "Myalltrue") {
				alert('��Ϣ¼��ɹ�!');
				document.getElementById("form2").reset();
			}
			if (json == "updateClassson") {
				alert('��Ŀ��¼��ɹ�!');
				document.getElementById("form3").reset();
			}
			if (json == "classsonIsNull") {
				alert('����д��Ŀ������Ϣ!');
				return;
			}
			if (json == "insertFS") {
				alert('��Ŀ��¼��ɹ�!');
				document.getElementById("form3").reset();
			}
			if (json == "insertF") {
				alert('��Ŀ��¼��ɹ�!');
				document.getElementById("form3").reset();
				location.href = "Base.jsp";
			}
			if (json == "classsonIsSame") {
				alert('�Ѿ�����ͬ������Ŀ����!');
				return;
			}
			if (json == "PayallSuccess") {
				alert('������Ϣ¼��ɹ�!');
				document.getElementById("form4").reset();
			}
			if (json == "PayallSame") {
				alert('�Ѿ�����ͬ�ĸ�������!');
				return;
			}

		}
	};
}