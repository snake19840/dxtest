


function dianji(e) {
		    var li = e.parentElement.parentElement.parentElement.parentElement.parentElement;
		    var div = e.parentElement.parentElement.parentElement.parentElement;
		    var s1 = li.getElementsByTagName("div");
		    var newdiv = s1[4];
		    var a=s1[1].innerText;
		    var aname=a.substring(0,a.indexOf(" ")-3);
		    var username=listusGson[0].userid;
		    var levela=listusGson[0].levela;
		    a=a.substr(Number(a.indexOf("�Ǽ�ʱ��:"))+Number(7),19);
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
				    alert("�༭�����Ѿ�����1��,�޷������޸�");
				}
		    }else {
			alert("��û��Ȩ���޸����˵ļ�¼");
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
    alert("�޸ĳɹ�");
    if (z == "TestWarning3") {
	location.href = "TestWarning3.jsp";
    } else if (z == "TestWarningItem") {
	location.href = "TestWarningItem.jsp";
    } else if (z == "TestWarningItem2") {
	location.href = "TestWarningItem2.jsp";
    }
}

function delli(e, z) {
    if (confirm("�Ƿ�ɾ�������ȷ��ɾ��")) {
	// ȷ��ִ��ʱ�Ĵ���
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
	alert("ɾ���ɹ�");
	if (z == "TestWarning3") {
	    location.href = "TestWarning3.jsp";
	} else if (z == "TestWarningItem") {
	    location.href = "TestWarningItem.jsp";
	} else if (z == "TestWarningItem2") {
	    if (statu == "�ָ�") {
		location.href = "TestWarningItem.jsp";
	    } else {
		location.href = "TestWarningItem2.jsp";
	    }
	}
    } else {
	return;// ȡ��ִ��ʱ�Ĵ���
    }
}

 w_text = line2br(w_text);


function line2br(text) {
	text=text+'';
	var a=text.split("\n").join("<br>");
    return a;
}



function getPost(data) {
    var httpRequest = new XMLHttpRequest();// ��һ����������Ҫ�Ķ���
    httpRequest.open('POST', url, true); // �ڶ�����������
    httpRequest.setRequestHeader("Content-type",
	    "application/x-www-form-urlencoded");// ��������ͷ
						    // ע��post��ʽ������������ͷ���ڽ������Ӻ���������ͷ��
    httpRequest.send(data);// �������� ����ͷ��д��send��
    var json = null;
    httpRequest.onreadystatechange = function() {// �����Ļص��ӿڣ��ɽ�����ɹ���Ҫִ�еĳ���д������
	if (httpRequest.readyState == 4 && httpRequest.status == 200) {// ��֤�����Ƿ��ͳɹ�
	    var json = httpRequest.responseText;// ��ȡ������˷��ص�����
	}
    };
    return json;
}

// AJAX����
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
		alert("�����������֧��AJAX��");
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
		// fnFail( "HTTP������󣡴����룺"+ajax.status );
	    }
	} else {
	    // fnLoading();
	}
    }
    ajax.send(data);

}





								
