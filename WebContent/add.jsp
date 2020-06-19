<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>电信设备管理平台</title>
<style type="text/css">

.aaaa { font-size:14px; color:#000000; text-align: center;font-weight: bold; }
.bbbb { font-size:14px; color:#000000; text-align: left;font-weight: bold;}
.cccc { font-size:20px; color:#000000; text-align: center;font-weight: bold;}
.cccc1{
	font-size: 20px;
	color: #000000;
	text-align: center;
	font-weight: bold;
	background-image: url(images/b4.JPG);
	}
</style>

	<link rel="stylesheet" href="alert/css/alert.css">
<script type="text/javascript" language="javascript">	
	function check() {
		
		document.getElementById("ownname").value =document.getElementById("select3").value+
		"/"+document.getElementById("select4").value+
		"/"+document.getElementById("textfield51").value+
		"/"+document.getElementById("textfield52").value;
		
if (document.getElementById("textfield53").value=="") {
	document.getElementById("proname").value="";
	}else {
		document.getElementById("proname").value=document.getElementById("textfield53").value+
		"/"+document.getElementById("textfield54").value+
		"/"+document.getElementById("textfield55").value;}
		
if (document.getElementById("textfield56").value=="") {
	document.getElementById("manname").value="";
	}else {
		document.getElementById("manname").value=document.getElementById("textfield56").value+
		"/"+document.getElementById("textfield57").value+
		"/"+document.getElementById("textfield58").value;}
if (document.getElementById("textfield59").value=="") {
	document.getElementById("agename").value="";}else {
		document.getElementById("agename").value=document.getElementById("textfield60").value+
		"/"+document.getElementById("textfield60").value+
		"/"+document.getElementById("textfield61").value;}	

 var hobbyNum = document.getElementsByName("checkbox1"); //  获取checkbox对象,是一个数组对象
 var b1=[];
 //var a=[hobbyNum[0].value,hobbyNum[1].value,hobbyNum[2].value,hobbyNum[3].value,hobbyNum[4].value];
var hobby = hobbyNum; //用于存储已选择的选项值
for (let i = 0; i < hobbyNum.length; ++i) { //遍历数组中的对象，查看有没有被选择的值
if (hobbyNum[i].checked) {//checked代表被选择
	hobby=hobbyNum[i]; //把被选择的数据复制给hobby变量
	b1.push(hobby.value);
   }
   } 
if (hobby == "") {  //hobby为空代表没有选择
	  document.getElementById("mantyp").value="";  } 
  else {
	  
	  document.getElementById("mantyp").value=b1.toString();
  }
  
//sname
 var hobbyNum2 = document.getElementsByName("checkbox2"); //  获取checkbox对象,是一个数组对象
 var b2=[];
 //var a=[hobbyNum[0].value,hobbyNum[1].value,hobbyNum[2].value,hobbyNum[3].value,hobbyNum[4].value];
var hobby2 = hobbyNum2; //用于存储已选择的选项值
for (let i = 0; i < hobbyNum2.length; ++i) { //遍历数组中的对象，查看有没有被选择的值
if (hobbyNum2[i].checked) {//checked代表被选择
	hobby2=hobbyNum2[i]; //把被选择的数据复制给hobby变量
	b2.push(hobby2.value);
   }
   } 
if (hobby2 == "") {  //hobby为空代表没有选择
	  document.getElementById("sname").value="";  } 
  else {
	  
	  document.getElementById("sname").value=b2.toString();
  }
  
//styp
document.getElementById("styp").value =
		document.getElementById("selectstyp").value+
		"/"+document.getElementById("textfield8").value;

//pos
document.getElementById("pos").value =
		document.getElementById("selectpos5").value+
		"/"+document.getElementById("textfieldpos").value+
		"/"+document.getElementById("textfieldpos2").value;

//ip
document.getElementById("ip").value =
		document.getElementById("textfieldip10").value+
		"/"+document.getElementById("textfieldip11").value+
		"/"+document.getElementById("textfieldip12").value;

//port
document.getElementById("port").value =
		document.getElementById("textfield13port").value+
		"/"+document.getElementById("textfield14port").value+
		"/"+document.getElementById("textfield15port").value;

//cpu
document.getElementById("cpu").value =
		document.getElementById("textfield16cpu").value+
		"/"+document.getElementById("textfield17cpu").value;
		
//syn
document.getElementById("syn").value =
		document.getElementById("select2syn").value+
		"/"+document.getElementById("textfield21syn").value;


if(myform.textfieldpos.value==""){
	alert("请输入机架位置!");
	myform.textfieldpos.focus();
	retune;
}else if (myform.sid.value=="") {
	alert("请输入卡片编号!");
	myform.sid.focus();
	retune;
}else {
	myform.action="AddServlet";
	myform.method="post";
	myform.submit(); 
}		
}
</script> 
 <meta name="description" content="pick date!">
    <meta name="keywords" content="javascript,html,css">
    
    
<script type="text/javascript" language="javascript">
function check2() {
	document.getElementById("ownname").value =document.getElementById("select3").value+
	"/"+document.getElementById("select4").value+
	"/"+document.getElementById("textfield51").value+
	"/"+document.getElementById("textfield52").value;
	
if (document.getElementById("textfield53").value=="") {
document.getElementById("proname").value="";
}else {
	document.getElementById("proname").value=document.getElementById("textfield53").value+
	"/"+document.getElementById("textfield54").value+
	"/"+document.getElementById("textfield55").value;}
	
if (document.getElementById("textfield56").value=="") {
document.getElementById("manname").value="";
}else {
	document.getElementById("manname").value=document.getElementById("textfield56").value+
	"/"+document.getElementById("textfield57").value+
	"/"+document.getElementById("textfield58").value;}
if (document.getElementById("textfield59").value=="") {
document.getElementById("agename").value="";}else {
	document.getElementById("agename").value=document.getElementById("textfield60").value+
	"/"+document.getElementById("textfield60").value+
	"/"+document.getElementById("textfield61").value;}	

var hobbyNum = document.getElementsByName("checkbox1"); //  获取checkbox对象,是一个数组对象
var b1=[];
//var a=[hobbyNum[0].value,hobbyNum[1].value,hobbyNum[2].value,hobbyNum[3].value,hobbyNum[4].value];
var hobby = hobbyNum; //用于存储已选择的选项值
for (let i = 0; i < hobbyNum.length; ++i) { //遍历数组中的对象，查看有没有被选择的值
if (hobbyNum[i].checked) {//checked代表被选择
hobby=hobbyNum[i]; //把被选择的数据复制给hobby变量
b1.push(hobby.value);
}
} 
if (hobby == "") {  //hobby为空代表没有选择
  document.getElementById("mantyp").value="";  } 
else {
  
  document.getElementById("mantyp").value=b1.toString();
}

//sname
var hobbyNum2 = document.getElementsByName("checkbox2"); //  获取checkbox对象,是一个数组对象
var b2=[];
//var a=[hobbyNum[0].value,hobbyNum[1].value,hobbyNum[2].value,hobbyNum[3].value,hobbyNum[4].value];
var hobby2 = hobbyNum2; //用于存储已选择的选项值
for (let i = 0; i < hobbyNum2.length; ++i) { //遍历数组中的对象，查看有没有被选择的值
if (hobbyNum2[i].checked) {//checked代表被选择
hobby2=hobbyNum2[i]; //把被选择的数据复制给hobby变量
b2.push(hobby2.value);
}
} 
if (hobby2 == "") {  //hobby为空代表没有选择
  document.getElementById("sname").value="";  } 
else {
  
  document.getElementById("sname").value=b2.toString();
}

//styp
document.getElementById("styp").value =
	document.getElementById("selectstyp").value+
	"/"+document.getElementById("textfield8").value;

//pos
document.getElementById("pos").value =
	document.getElementById("selectpos5").value+
	"/"+document.getElementById("textfieldpos").value+
	"/"+document.getElementById("textfieldpos2").value;

//ip
document.getElementById("ip").value =
	document.getElementById("textfieldip10").value+
	"/"+document.getElementById("textfieldip11").value+
	"/"+document.getElementById("textfieldip12").value;

//port
document.getElementById("port").value =
	document.getElementById("textfield13port").value+
	"/"+document.getElementById("textfield14port").value+
	"/"+document.getElementById("textfield15port").value;

//cpu
document.getElementById("cpu").value =
	document.getElementById("textfield16cpu").value+
	"/"+document.getElementById("textfield17cpu").value;
	
//syn
document.getElementById("syn").value =
	document.getElementById("select2syn").value+
	"/"+document.getElementById("textfield21syn").value;
	
	
	if(myform.textfieldpos.value==""){
		alert("请输入机架位置!");
		myform.textfieldpos.focus();
		retune;
	}else if (myform.sid.value=="") {
		alert("请输入卡片编号!");
		myform.sid.focus();
		retune;
	}else {
		myform.enctype="multipart/form-data"
			myform.action="UploadServlet"; 
			myform.method="post";
		myform.submit(); 
	}
	}
	
</script>
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
	
<%
String message="";

  if(session.getAttribute("name")==null){

     response.sendRedirect("index_login.jsp");
     message="您好！"+"</b> 请使用用户名与密码登录！";

  }else{}
%>
</head>
<body>
<form action="" method="post" name="myform">
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><%@include file="top.jsp" %> </td>
  </tr>
</table>
  <table width="900" border="1" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="35" height="804" valign="top">&nbsp;</td>
      <td width="1114" valign="top">
      <table width=1114  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td  colspan="4" valign="middle" ><table width="1114"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" valign="middle"><%@include file="register.jsp" %></td>
            </tr>
          </table></td>
        </tr>
      </table>
        <table width="1114" border="1">
          <tr>
            <td width="38" rowspan="10">           </td>
            <td class="bbbb">设备卡片编号：</td>
            <td class="bbbb"><input name="sid" type="text" id="sid" size="31"></td>
            <td class="bbbb">档案编号： </td>
            <td class="bbbb"><input name="did" type="text" id="did" size="31"></td>
            <td width="38" rowspan="10"></td>
          </tr>
          <tr>
            <td colspan="4" class="cccc1">ＩＴ机房设备档案表</td>
          </tr>
          <tr>
            <td class="bbbb">设备初次搬入机房日期： </td>
            <td width="245" class="bbbb"><input type="text" name="stdate"  onClick="WdatePicker()" ></td>
            <td width="144" class="bbbb">档案最后变更日期：</td>
            <td width="331" class="bbbb"><input type="text" name="redate" onClick="WdatePicker()" ></td>
          </tr>
          <tr>
            <td class="bbbb">设备所属项目系统名称： </td>
            <td colspan="3" class="bbbb"><input name="pname" type="text" id="pname" size="70"></td>
          </tr>
          <tr>
            <td class="bbbb">设备用途: </td>
            <td colspan="3" class="bbbb"><input name="use" type="text" id="use" size="70"></td>
          </tr>
          <tr>
            <td class="bbbb">设备资产单位/部门/联系人/电话:</td>
            <td colspan="3" class="bbbb" >设备资产单位
              <label>
                <select name="select3" id="select3">
                <option value="宁波电信">宁波电信</option>
                </select>
              </label>
/部门
<label>
  <select name="select4" id="select4">
  <option value=""></option>
    <option value="企信中心">企信中心</option>
    <option value="市场部">市场部</option>
  </select>
</label>
/联系人
<input name="textfield51" type="text" id="textfield51" size="8">
/电话:
<input name="textfield52" type="text" id="textfield52" size="16">
<input type ="hidden" id="ownname" name="ownname" value ="" ></td>
          </tr>
          <tr>
            <td width="275" class="bbbb"> 系统集成商（开发商）名称/联系人/电话: </td>
            <td colspan="3" class="bbbb">系统集成商
              <input name="textfield53" type="text" id="textfield53" size="31">
           /联系人
<input name="textfield54" type="text" id="textfield54" size="8">
/电话:
<input name="textfield55" type="text" id="textfield55" size="16">
<input type ="hidden" id="proname" name="proname" value ="" ></td>
          </tr>
          <tr>
            <td class="bbbb"> 系统维护责任人姓名/电话/所属部门 </td>
            <td colspan="3" class="bbbb">系统维护责任人姓名
             
<input name="textfield56" type="text" id="textfield56" size="8">
/电话:
<input name="textfield57" type="text" id="textfield57" size="16">
/所属部门
<input name="textfield58" type="text" id="textfield58" size="23">
<input type ="hidden" id="manname" name="manname" value ="" ></td>
          </tr>
          <tr>
            <td class="bbbb"> 代维单位名称/联系人/电话 </td>
            <td colspan="3" class="bbbb">代维单位名称
              <input name="textfield59" type="text" id="textfield59" size="30">
/联系人
<input name="textfield60" type="text" id="textfield60" size="8">
/电话:
<input name="textfield61" type="text" id="textfield61" size="16">
<input type ="hidden" id="agename" name="agename" value ="" ></td>
          </tr>
          <tr class="bbbb">
            <td colspan="4"> 维护形式（请选择）： 
             <input type="checkbox" name="checkbox1" value="仅放置设备"  >1 仅放置设备。
             <input type="checkbox" name="checkbox1" value="硬件维护"  >2 硬件维护。
             <input type="checkbox" name="checkbox1" value="操作系统维护"  >3 操作系统维护。
             <input type="checkbox" name="checkbox1" value="数据库维护"   >4 数据库维护。
             <input type="checkbox" name="checkbox1" value="应用维护"   >5 应用维护。
             <input type ="hidden" id="mantyp" name="mantyp" value ="" ></td>
          </tr>
        </table>
        <table width="1114" border="1">
          <tr>
            <td width="38" rowspan="13">&nbsp;</td>
            <td colspan="8" class="cccc1"> IT设备配置明细 </td>
            <td width="38" rowspan="13">&nbsp;</td>
          </tr>
          <tr>
            <td width="25" class="aaaa" > 1 </td>
            <td width="287" class="bbbb"> 设备名称（类型） </td>
            <td colspan="6" class="bbbb">
             <input type="checkbox" name="checkbox2" value="物理机">物理机&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="checkbox2" value="虚拟机">虚拟机
            <input type ="hidden" id="sname" name="sname" value ="" >
             </td>
          </tr>
          <tr>
            <td class="aaaa"> 2 </td>
            <td class="bbbb"> 品牌/型号 </td>
            <td colspan="6"><label class="bbbb">
              <select name="selectstyp" size="1" id="selectstyp">
              <option value=""></option>
                <option value="DELL">DELL</option>
                <option value="HP">HP</option>
                <option value="IBM" >IBM</option>
                </select>
              <input name="textfield8" type="text" id="textfield8" size="70">
            </label>
            <input type ="hidden" id="styp" name="styp" value ="" >
            </td>
          </tr>
          <tr>
            <td class="aaaa"> 3 </td>
            <td class="bbbb"> 机房/机架位置 </td>
            <td colspan="6" class="bbbb">机房
              <label>
                <select name="selectpos5" id="selectpos5">
                <option value=""></option>
                  <option value="9F-A">9F-A</option>
                  <option value="9F-B">9F-B</option>
                </select>
            /机架            
            <input name="textfieldpos" type="text" id="textfieldpos" size="5">
            /位置
            <input name="textfieldpos2" type="text" id="textfieldpos2" size="5">
            </label> 
            <input type ="hidden" id="pos" name="pos" value ="" >
            </td>
          </tr>
          <tr>
            <td class="aaaa"> 4 </td>
            <td class="bbbb"> IP地址/掩码/网关 </td>
            <td width="69" class="bbbb"> IP地址: </td>
            <td width="122" class="bbbb"><input name="textfieldip10" type="text" id="textfieldip10" size="16"></td>
            <td width="95" class="bbbb"> 掩码: </td>
            <td width="117" class="bbbb"><input name="textfieldip11" type="text" id="textfieldip11" size="16"></td>
            <td width="95" class="bbbb"> 网关: </td>
            <td width="160" class="bbbb"><input name="textfieldip12" type="text" id="textfieldip12" size="16">
            <input type ="hidden" id="ip" name="ip" value ="" >
            </td>
            
          </tr>
          <tr>
            <td class="aaaa"> 5 </td>
            <td class="bbbb">网线编号/交换机端口号 /配线架端口号 </td>
            <td align="left" class="bbbb"> 网线编号: </td>
            <td class="bbbb"><input name="textfield13port" type="text" id="textfield13port" size="16"></td>
            <td class="bbbb"> 交换机端口号: </td>
            <td><input name="textfield14port" type="text" id="textfield14port" size="16"></td>
            <td class="bbbb"> 配线架端口号: </td>
            <td><input name="textfield15port" type="text" id="textfield15port" size="16">
            <input type ="hidden" id="port" name="port" value ="" >
            </td>
          </tr>
          <tr>
            <td class="aaaa"> 6 </td>
            <td class="bbbb"> CPU型号/物理数量 </td>
            <td class="bbbb"> CPU型号: </td>
            <td colspan="3" class="bbbb"><input name="textfield16cpu" type="text" id="textfield16cpu" size="56"></td>
            <td class="bbbb"> 物理数量: </td>
            <td class="bbbb"><input name="textfield17cpu" type="text" id="textfield17cpu" size="16">
            <input type ="hidden" id="cpu" name="cpu" value ="" >
            </td>
          </tr>
          <tr>
            <td class="aaaa"> 7 </td>
            <td class="bbbb"> 内存配置 </td>
            <td colspan="6" class="bbbb"><input name="memory" type="text" id="memory" size="70"></td>
          </tr>
          <tr>
            <td class="aaaa"> 8 </td>
            <td class="bbbb"> 硬盘配置 </td>
            <td colspan="6" class="bbbb"><input name="disk" type="text" id="disk" size="70"></td>
          </tr>
          <tr>
            <td class="aaaa"> 9 </td>
            <td class="bbbb"> 操作系统版本 </td>
            <td class="bbbb"> 操作系统 </td>
            <td><label class="bbbb">
              <select name="select2syn" id="select2syn">
              <option value=""></option>
                <option value="Windows">Windows</option>
                <option value="Linux">Linux</option>
              </select>
            </label></td>
            <td class="bbbb">   版本: </td>
            <td colspan="3" class="bbbb"><input name="textfield21syn" type="text" id="textfield21syn" size="45">
            <input type ="hidden" id="syn" name="syn" value ="" ></td>
          </tr>
          <tr>
            <td class="aaaa"> 10 </td>
            <td class="bbbb">数据库版本</td>
            <td colspan="6" class="bbbb"><input name="oracle" type="text" id="oracle" size="70"></td>
          </tr>
          <tr>
            <td class="aaaa"> 11 </td>
            <td class="bbbb">设备序列号</td>
            <td colspan="6" class="bbbb"><input name="sn" type="text" id="sn" size="70"></td>
          
          </tr>
          <tr>
            <td height="26" class="aaaa"> 12 </td>
            <td class="bbbb"> 其它信息 </td>
            <td colspan="6" class="bbbb"><input name="oth" type="text" id="oth" size="70"></td>
          </tr>
        </table>
        <table width="1114" border="1">
          <tr>
            <td width="38" rowspan="5">&nbsp;</td>
            <td colspan="5" class="cccc1">设备相关基本信息</td>
            <td width="38" rowspan="5">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="5" class="bbbb">  需要代维的相关设备/系统的管理员信息（不需要代维的可不提供）  </td>
          </tr>
          <tr>
            <td width="236" class="bbbb"> 操作系统管理员用户名/口令列表：  </td>
            <td width="99" class="bbbb" > 管理员用户名: </td>
            <td width="238" class="bbbb"><input name="sroot" type="text" id="sroot" size="28"></td>
            <td width="49" class="bbbb"> 口令: </td>
            <td width="356" class="bbbb"><input name="spwd" type="text" id="spwd" size="43"></td>
          </tr>
          <tr>
            <td class="bbbb"> 数据库系统管理员用户名/口令列表: </td>
            <td class="bbbb"> 管理员用户名: </td>
            <td class="bbbb"><input name="oroot" type="text" id="oroot" size="28"></td>
            <td class="bbbb"> 口令: </td>
            <td class="bbbb"><input name="opwd" type="text" id="opwd" size="43"></td>
          </tr>
          <tr>
            <td class="bbbb"> 应用系统管理员用户名/口令列表: </td>
            <td class="bbbb"> 管理员用户名: </td>
            <td class="bbbb"><input name="aroot" type="text" id="aroot" size="28"></td>
            <td class="bbbb"> 口令: </td>
            <td class="bbbb"><input name="apwd" type="text" id="apwd" size="43"></td>
          </tr>
        </table>
        <table width="1114" border="0">
          <tr>
            <td width="38" height="47">&nbsp;</td>
            <td width="327" align="center"><input type="submit" name="button" id="button" value="提交" onclick="check()"></td>
            <td width="49">&nbsp;</td>
            <td width="390">
            <p>
			      
                   
                      <input type="file" name="uploadFile" />
                      <input name="button2" type="button" value="上  传" onclick="check2()" >
                      

                    
			     
	                </p></td>
            <td width="227">&nbsp;</td>
            <td width="38">&nbsp;</td>
          </tr>
        </table>
      
      <td width="1114" valign="top">&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>