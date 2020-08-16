<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="java.util.List"%>
<%@page import="com.clas.Equ"%>

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

<meta >
	<meta name="description" content="pick date!">
	<meta name="keywords" content="javascript,html,css">
	
	<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
	
	
<script type="text/javascript" language="javascript">	
	function check() {
		if (document.getElementById("textfield51").value=="") {
			document.getElementById("proname").value="";
			}else {	
				document.getElementById("ownname").value =document.getElementById("select3").value+
				"/"+document.getElementById("select4").value+
				"/"+document.getElementById("textfield51").value+
				"/"+document.getElementById("textfield52").value;
			}
		
		
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
		"-"+document.getElementById("textfieldpos").value+
		"-"+document.getElementById("textfieldpos2").value;

//ip

if (document.getElementById("textfieldip10").value=="") {
	document.getElementById("ip").value="//";
	}else {
		document.getElementById("ip").value =
			document.getElementById("textfieldip10").value+
			"/"+document.getElementById("textfieldip11").value+
			"/"+document.getElementById("textfieldip12").value;}


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



	myform.action="SaveServlet";
	myform.method="post";
	myform.submit(); 
		
}
	
	function check2() {
		
		myform.action="FindServlet2";
		myform.method="post";
		myform.submit(); 
	}	
	
	function check3() {
		  if(myform.uploadFile.value==""){ 
			alert("请上传更新文件");
			myform.uploadFile.focus();
			retune;
		 }else {
			 alert("上传文件成功");
			myform.enctype="multipart/form-data";
				myform.action="FileupdataServlet"; 
				myform.method="post";
			myform.submit(); 
		}  
		
	
	}
	
</script> 

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
  


<%
				
					List<Equ> list = (List<Equ>)request.getAttribute("list");
			      		        			        
					// 判断集合是否有效
					if(list == null || list.size() < 1){
						out.print("没有数据！");
					}else{
						// 遍历集合中的数据
						for(Equ equ : list){
							String ip=equ.getIp();
							String ip1=ip.substring(0,ip.indexOf("/"));
							String mask=ip.substring(ip.indexOf("/")+1,ip.lastIndexOf("/"));
							String gateway=ip.substring(ip.lastIndexOf("/")+1);
							String pot=equ.getPort();
							String pot1=pot.substring(0,pot.indexOf("/"));
							String pot2=pot.substring(pot.indexOf("/")+1,pot.lastIndexOf("/"));
							String pot3=pot.substring(pot.lastIndexOf("/")+1);
							String cpu=equ.getCpu();
							String cpu1=cpu.substring(0,cpu.indexOf("/"));
							String cpu2=cpu.substring(cpu.indexOf("/")+1);
							String syn=equ.getSyn();
							String synx=syn.substring(0,syn.indexOf("/"));
							String syny=syn.substring(syn.indexOf("/")+1);
							String url=equ.getUrl();
							String url1;
							if(url==null){url1="没有上传任何附件 ";}else{url1=url.substring(url.lastIndexOf("/")+1)+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A HREF='download.jsp?path="+url+"'>下载</A>";
							}
							String sid=equ.getSid();
							String mantyp=equ.getMantyp();String checked1,checked2,checked3,checked4,checked5;
							if(mantyp==null){
								checked1="";checked2="";checked3="";checked4="";checked5="";
							}else{
								if(mantyp.indexOf("仅放置设备")!=-1){checked1="checked";}else{ checked1="";} 
								
								if(mantyp.indexOf("硬件维护")!=-1){checked2="checked";}else{ checked2="";} 
								if(mantyp.indexOf("操作系统维护")!=-1){checked3="checked";}else{ checked3="";} 
								if(mantyp.indexOf("数据库维护")!=-1){checked4="checked";}else{ checked4="";} 
								if(mantyp.indexOf("应用维护")!=-1){checked5="checked";}else{ checked5="";}
							}
							String sname=equ.getSname();String checkedsname1,checkedsname2;
							if(sname==null){
								checkedsname1="";checkedsname2="";
							}else{
								if(sname.indexOf("物理机")!=-1){checkedsname1="checked";}else{ checkedsname1="";} 
								if(sname.indexOf("虚拟机")!=-1){checkedsname2="checked";}else{ checkedsname2="";}
							}
							String stpy=equ.getStyp();String selectstyp1,selectstyp2,selectstyp3;
							if(stpy==null){
								selectstyp1="";selectstyp2="";selectstyp3="";
							}else{
								if(stpy.indexOf("DELL")!=-1){selectstyp1="selected";}else{ selectstyp1="";}
								if(stpy.indexOf("HP")!=-1){selectstyp2="selected";}else{ selectstyp2="";}
								if(stpy.indexOf("IBM")!=-1){selectstyp3="selected";}else{ selectstyp3="";}
							}
							String pos=equ.getPos();String selectpos51,selectpos52,pos2,pos3;
							if(pos==null){
								selectpos51="";selectpos52="";
							}else{
								if(pos.indexOf("9F-A")!=-1){selectpos51="selected";}else{ selectpos51="";}
								if(pos.indexOf("9F-B")!=-1){selectpos52="selected";}else{ selectpos52="";}
							}
							
							 pos2=pos.substring(pos.indexOf("/")+1,pos.lastIndexOf("/"));
							 pos3=pos.substring(pos.lastIndexOf("/")+1);
							 String ownname=equ.getOwnname();String select3ownname1,select4ownname1,select4ownname2,ownname2,ownname3;
							if(ownname==null){
								select3ownname1="";select4ownname1="";select4ownname2="";
							}else{
								if(ownname.indexOf("宁波电信")!=-1){select3ownname1="selected";}else{ select3ownname1="";}
								 if(ownname.indexOf("企信中心")!=-1){select4ownname1="selected";}else{ select4ownname1="";}
								 if(ownname.indexOf("市场部")!=-1){select4ownname2="selected";}else{ select4ownname2="";}
							}
							 ownname2=ownname.substring(ownname.indexOf("/",ownname.indexOf("/")+1)+1,ownname.lastIndexOf("/"));
							 ownname3=ownname.substring(ownname.lastIndexOf("/")+1);
							 String proname=equ.getProname();String proname1,proname2,proname3;
							if (proname!=null){proname1=proname.substring(0,proname.indexOf("/")); } else{proname1="";}
							if (proname!=null){proname2=proname.substring(proname.indexOf("/")+1,proname.lastIndexOf("/"));} else{proname2="";}
							if (proname!=null){proname3=proname.substring(proname.lastIndexOf("/")+1);} else{proname3="";}
							String manname=equ.getManname();String manname1,manname2,manname3;
							if (manname!=null){manname1=manname.substring(0,manname.indexOf("/")); } else{manname1="";}
							if (manname!=null){manname2=manname.substring(manname.indexOf("/")+1,manname.lastIndexOf("/"));} else{manname2="";}
							if (manname!=null){manname3=manname.substring(manname.lastIndexOf("/")+1);} else{manname3="";}
							String agename=equ.getAgename();String agename1,agename2,agename3;
							if (agename!=null){agename1=agename.substring(0,agename.indexOf("/")); } else{agename1="";}
							if (agename!=null){agename2=agename.substring(agename.indexOf("/")+1,agename.lastIndexOf("/"));} else{agename2="";}
							if (agename!=null){agename3=agename.substring(agename.lastIndexOf("/")+1);} else{agename3="";}
							String select2syn1,select2syn2;
							if(syn.indexOf("Windows")!=-1){select2syn1="selected";}else{ select2syn1="";}
							if(syn.indexOf("Linux")!=-1){select2syn2="selected";}else{ select2syn2="";}
							String  sroot=equ.getSroot();
							if (sroot!=null){ sroot=equ.getSroot();} else{sroot="";}
							String  stdate=equ.getStdate();String  redate=equ.getRedate();
							
			%>
  <tr>
    <td><%@include file="top.jsp" %> </td>
  </tr>
</table>
  <table width="900" border="1" align="center" cellpadding="0" cellspacing="0">
  
    <tr>
      <td width="35" valign="top">&nbsp;</td>
      <td width="821" valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="100%" align="center" valign="middle"><%@include file="register.jsp" %></td>
          </tr>
      </table>
        <table width="1114" border="1">
       
        
        
          <tr>
            <td width="38" rowspan="10">       
            </td>
            <td class="bbbb" >设备卡片编号： </td>
            
            <td  class="bbbb"><input name="sid" id="sid" type="text" size="31" value=<%=equ.getSid()%>>


</td>
            <td class="bbbb">档案编号： </td>
            <td  class="bbbb"><input name="did" id="did" type="text" size="31" value=<%=equ.getDid()%>> </td>
            <td width="38" rowspan="10"></td>
          </tr>
          <tr>
            <td colspan="4" class="cccc1">综合楼9层ＩＴ机房设备档案表</td>
          </tr>
          <tr>
            <td class="bbbb">设备初次搬入机房日期： </td>
            <td width="245"  class="bbbb"><input type="text" name="stdate"  onClick="WdatePicker()" value=<%=stdate%> ></td>
            <td width="144" class="bbbb">档案最后变更日期： </td>
            <td width="331"  class="bbbb"><input type="text" name="redate"  onClick="WdatePicker()" value=<%=redate%> ></td></tr>
          <tr>
            <td class="bbbb">设备所属项目系统名称： </td>
            <td colspan="3"  class="bbbb"><input name="pname" type="text" id="pname" size="70" value=<%=equ.getPname()%> > </td>
          </tr>
          <tr>
            <td class="bbbb">设备用途: </td>
            <td colspan="3"  class="bbbb"><input name="use" type="text" id="use" size="70" value=<%=equ.getUse()%>> </td>
          </tr>
          <tr>
            <td class="bbbb">设备资产单位/部门/联系人/电话: </td>
            <td colspan="3"  class="bbbb">设备资产单位
              <label>
                <select name="select3" id="select3">
                <option value=""></option>
                <option value="宁波电信" <%=select3ownname1 %>>宁波电信</option>
                </select>
              </label>
/部门
<label>
  <select name="select4" id="select4">
  <option value=""></option>
    <option value="企信中心"  <%=select4ownname1 %>>企信中心</option>
    <option value="市场部"  <%=select4ownname2 %>>市场部</option>
  </select>
</label>
/联系人
<input name="textfield51" type="text" id="textfield51" size="8" value=<%=ownname2%>>
/电话:
<input name="textfield52" type="text" id="textfield52" size="16" value=<%=ownname3%>>
<input type ="hidden" id="ownname" name="ownname" value ="" >
          </td>
          </tr>
          <tr>
            <td width="298" class="bbbb"> 系统集成商（开发商）名称/联系人/电话: </td>
            <td colspan="3"  class="bbbb">系统集成商
              <input name="textfield53" type="text" id="textfield53" size="31" value=<%=proname1%>>
           /联系人
<input name="textfield54" type="text" id="textfield54" size="8" value=<%=proname2%>>
/电话:
<input name="textfield55" type="text" id="textfield55" size="16" value=<%=proname3%>>
<input type ="hidden" id="proname" name="proname" value ="" ></td>
          </tr>
          <tr>
            <td class="bbbb"> 系统维护责任人姓名/电话/所属部门 </td>
            <td colspan="3"  class="bbbb">系统维护责任人姓名
             
<input name="textfield56" type="text" id="textfield56" size="8" value=<%=manname1%>>
/电话:
<input name="textfield57" type="text" id="textfield57" size="16" value=<%=manname2%>>
/所属部门
<input name="textfield58" type="text" id="textfield58" size="23"  value=<%=manname3%>>
<input type ="hidden" id="manname" name="manname" value ="" > </td>
          </tr>
          <tr>
            <td class="bbbb"> 代维单位名称/联系人/电话 </td>
            <td colspan="3"  class="bbbb">代维单位名称
              <input name="textfield59" type="text" id="textfield59" size="30" value=<%=agename1%>>
/联系人
<input name="textfield60" type="text" id="textfield60" size="8" value=<%=agename2%>>
/电话:
<input name="textfield61" type="text" id="textfield61" size="16" value=<%=agename3%>>
<input type ="hidden" id="agename" name="agename" value ="" ></td>
          </tr>
          <tr class="bbbb">
            <td  colspan="4"> 维护形式&nbsp;&nbsp;  ： &nbsp;&nbsp;
               <input type="checkbox" name="checkbox1" value="仅放置设备" <%=checked1 %> >1 仅放置设备。
             <input type="checkbox" name="checkbox1" value="硬件维护" <%=checked2 %> >2 硬件维护。
             <input type="checkbox" name="checkbox1" value="操作系统维护" <%=checked3 %> >3 操作系统维护。
             <input type="checkbox" name="checkbox1" value="数据库维护"  <%=checked4 %> >4 数据库维护。
             <input type="checkbox" name="checkbox1" value="应用维护"  <%=checked5 %> >5 应用维护。
             <input type ="hidden" id="mantyp" name="mantyp" value ="" >
             
            </td>
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
            <td colspan="6"  class="bbbb">
			<input type="checkbox" name="checkbox2" value="物理机"  <%=checkedsname1 %>>物理机&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="checkbox2" value="虚拟机"  <%=checkedsname2 %>>虚拟机
            <input type ="hidden" id="sname" name="sname" value ="" >
 </td>
          </tr>
          <tr>
            <td class="aaaa"> 2 </td>
            <td class="bbbb"> 品牌/型号 </td>
            <td colspan="6" >
             <label class="bbbb">
              <select name="selectstyp" size="1" id="selectstyp">
              <option value=""></option>
                <option value="DELL" <%=selectstyp1 %>>DELL</option>
                <option value="HP" <%=selectstyp2 %>>HP</option>
                <option value="IBM" <%=selectstyp3 %>>IBM</option>
                </select>
              <input name="textfield8" type="text" id="textfield8" size="70">
            </label>
            <input type ="hidden" id="styp" name="styp" value ="" >
             
            </td>
          </tr>
          <tr>
            <td class="aaaa"> 3 </td>
            <td class="bbbb"> 机房/机架位置 </td>
            <td colspan="6" class="bbbb" > 
            <label>
                <select name="selectpos5" id="selectpos5">
                <option value=""></option>
                  <option value="9F-A" <%=selectpos51 %> >9F-A</option>
                  <option value="9F-B" <%=selectpos52 %> >9F-B</option>
                </select>
            /机架            
            <input name="textfieldpos" type="text" id="textfieldpos" size="5" value=<%=pos2%> >
            /位置
            <input name="textfieldpos2" type="text" id="textfieldpos2" size="5" value=<%=pos3%>  >
            </label> 
            <input type ="hidden" id="pos" name="pos" value ="" >
          </td>
          </tr>
          <tr>
            <td class="aaaa"> 4 </td>
            <td class="bbbb"> IP地址/掩码/网关 </td>
            <td width="69" class="bbbb"> IP地址: </td>
            <td width="122" class="bbbb"><input name="textfieldip10" type="text" id="textfieldip10" size="16" value=<%=ip1%> ></td>
            <td width="95" class="bbbb"> 掩码: </td>
            <td width="117" class="bbbb"><input name="textfieldip11" type="text" id="textfieldip11" size="16" value=<%=mask%>></td>
            <td width="95" class="bbbb"> 网关: </td>
            <td width="160" class="bbbb"><input name="textfieldip12" type="text" id="textfieldip12" size="16" value=<%=gateway%>>
            <input type ="hidden" id="ip" name="ip" value ="" >
              </td>
          </tr>
          <tr>
            <td class="aaaa"> 5 </td>
            <td class="bbbb">网线编号/交换机端口号 /配线架端口号 </td>
            <td align="left" class="bbbb"> 网线编号: </td>
            <td class="bbbb" > <input name="textfield13port" type="text" id="textfield13port" size="16" value=<%=pot1%>> </td>
            <td class="bbbb"> 交换机端口号: </td>
            <td ><input name="textfield14port" type="text" id="textfield14port" size="16" value=<%=pot2%>></td>
            <td class="bbbb"> 配线架端口号: </td>
            <td ><input name="textfield15port" type="text" id="textfield15port" size="16" value=<%=pot3%>>
            <input type ="hidden" id="port" name="port" value ="" >
            </td>
          </tr>
          <tr>
            <td class="aaaa"> 6 </td>
            <td class="bbbb"> CPU型号/物理数量 </td>
            <td class="bbbb"> CPU型号: </td>
            <td colspan="3" class="bbbb" ><input name="textfield16cpu" type="text" id="textfield16cpu" size="56" value=<%=cpu1%>></td>
            <td class="bbbb"> 物理数量: </td>
            <td class="bbbb" ><input name="textfield17cpu" type="text" id="textfield17cpu" size="16"  value=<%=cpu2%>>
            <input type ="hidden" id="cpu" name="cpu" value ="" ></td>
          </tr>
          <tr>
            <td class="aaaa"> 7 </td>
            <td class="bbbb"> 内存配置 </td>
            <td colspan="6" class="bbbb" ><input name="memory" type="text" id="memory" size="70" value=<%=equ.getMemory()%>></td>
          </tr>
          <tr>
            <td class="aaaa"> 8 </td>
            <td class="bbbb"> 硬盘配置 </td>
            <td colspan="6" class="bbbb" ><input name="disk" type="text" id="disk" size="70" value=<%=equ.getDisk()%>></td>
          </tr>
          <tr>
            <td class="aaaa"> 9 </td>
            <td class="bbbb"> 操作系统版本 </td>
            <td class="bbbb"> 操作系统 </td>
            <td><label class="bbbb">
              <select name="select2syn" id="select2syn">
              <option value=""></option>
                <option value="Windows" <%=select2syn1 %>>Windows</option>
                <option value="Linux" <%=select2syn2 %>>Linux</option>
              </select>
            </label></td>
            <td class="bbbb">   版本: </td>
            <td colspan="3" class="bbbb"><input name="textfield21syn" type="text" id="textfield21syn" size="45" value=<%=syny%>>
            <input type ="hidden" id="syn" name="syn" value ="" ></td>
          </tr>
          <tr>
            <td class="aaaa"> 10 </td>
            <td class="bbbb"> 数据库版本 </td>
            <td colspan="6" class="bbbb" ><input name="oracle" type="text" id="oracle" size="70" value=<%=equ.getOracle()%>></td>
          </tr>
          <tr>
            <td class="aaaa"> 11 </td>
            <td class="bbbb"> 设备序列号 </td>
            <td colspan="6" class="bbbb" ><input name="sn" type="text" id="sn" size="70" value=<%=equ.getSn()%>></td>
          </tr>
          <tr>
            <td class="aaaa"> 12 </td>
            <td class="bbbb"> 其它信息 </td>
            <td colspan="6" class="bbbb" ><input name="oth" type="text" id="oth" size="70" value=<%=equ.getOth()%>></td>
          </tr>
         
        </table>
        <table width="1114" border="1">
        
          <tr>
            <td width="38" rowspan="7">&nbsp;</td>
            <td colspan="5" class="cccc1">设备相关基本信息</td>
            <td width="38" rowspan="7">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="5" class="bbbb">  需要代维的相关设备/系统的管理员信息（不需要代维的可不提供）  </td>
          </tr>
          <tr>
            <td width="236" class="bbbb"> 操作系统管理员用户名/口令列表：  </td>
            <td width="99" class="bbbb" > 管理员用户名: </td>
            <td width="238" class="bbbb" ><input name="sroot" type="text" id="sroot" size="28" value=<%=sroot%>></td>
            <td width="49" class="bbbb"> 口令: </td>
            <td width="356" class="bbbb" ><input name="spwd" type="text" id="spwd" size="43" value=<%=equ.getSpwd()%>></td>
          </tr>
          <tr>
            <td class="bbbb"> 数据库系统管理员用户名/口令列表: </td>
            <td class="bbbb"> 管理员用户名: </td>
            <td class="bbbb" ><input name="oroot" type="text" id="oroot" size="28" value=<%=equ.getOroot()%>></td>
            <td class="bbbb"> 口令: </td>
            <td class="bbbb"  ><input name="opwd" type="text" id="opwd" size="43" value=<%=equ.getOpwd()%>></td>
          </tr>
          <tr>
            <td class="bbbb">应用系统管理员用户名/口令列表: </td>
            <td class="bbbb"> 管理员用户名: </td>
            <td class="bbbb" ><input name="aroot" type="text" id="aroot" size="28" value=<%=equ.getAroot()%>></td>
            <td class="bbbb"> 口令: </td>
            <td class="bbbb" ><input name="apwd" type="text" id="apwd" size="43" value=<%=equ.getApwd()%>></td>
          </tr>
          <tr>
            <td colspan="5" class="bbbb" >
             <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="file" name="uploadFile" >
                      <input name="button2" type="button" value="上  传" onclick="check3()" >
                    </p>
           </td>
          </tr>
          <tr>
            <td colspan="2" align="center" class="aaaa" >
            <input type="hidden" name="id" value="<%=equ.getId()%>">
            <input type="hidden" name="url" value="<%=equ.getUrl()%>">
            <input type="hidden" name="sdate" value="<%=equ.getSdate()%>">
            <input type="hidden" name="edate" value="<%=equ.getEdate()%>">
            <input type="hidden" name="title" value="<%=equ.getTitle()%>">
            
<input type="submit" name="button" id="button" value="  保 存  " onclick="check()">
</td>
            <td align="center" class="aaaa">

<input type="submit" name="button2" id="button2"  value="  返  回  " onclick="check2()">
			  
</td>
            <td colspan="2" class="bbbb">

</td>
          </tr>
         
        </table>
      </td>
      
    </tr>
      <% 
						}}
		        %>
		        
  </table>
 
</form>

</body>
</html>