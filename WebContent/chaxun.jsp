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
	
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>


<script type="text/javascript" language="javascript">
function check() {
//mantyp
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
	
myform.action="FindServlet";
myform.method="post";
myform.submit(); 
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
  <tr>
    <td><%@include file="top.jsp" %> </td>
  </tr>
</table>

  <table width=1114" border="1"  align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="35" valign="top">&nbsp;</td>
      <td width="821" valign="top">
      <table width="100%"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="100%" align="center" valign="middle"><%@include file="register.jsp" %></td>
          </tr>
      </table>
      
        <table width="1114" class="bbbb" align="center"  border="1">
          <tr>
            <td width="38" rowspan="8" >       
            </td>
            <td class="bbbb">设备初次搬入机房日期：</td>
            <td width="160" class="bbbb"><input type="text" name="stdate"  onClick="WdatePicker()"></td>
            <td width="142" class="bbbb">档案最后变更日期： </td>
            <td width="160" class="bbbb"><input type="text" name="redate"  onClick="WdatePicker()"></td>
            <td width="171" class="bbbb">设备所属项目系统名称：</td>
            <td width="172" class="bbbb"><input name="pname" type="text" id="pname" size="21"></td>
            <td width="38" rowspan="8"></td>
          </tr>
          <tr>
            <td class="bbbb">设备用途: </td>
            <td class="bbbb"><input name="use" type="text" id="use" size="20"></td>
            <td class="bbbb">设备资产单位:</td>
            <td class="bbbb"><input name="ownname" type="text" id="ownname" size="20"></td>
            <td class="bbbb">系统集成商（开发商）:</td>
            <td class="bbbb"><input name="proname" type="text" id="proname" size="21"></td>
          </tr>
          <tr>
            <td class="bbbb">维护形式:</td>
            <td colspan="5" class="bbbb">
              <input type="checkbox" name="checkbox1" value="仅放置设备"  >1 仅放置设备。
             <input type="checkbox" name="checkbox1" value="硬件维护"  >2 硬件维护。
             <input type="checkbox" name="checkbox1" value="操作系统维护"  >3 操作系统维护。
             <input type="checkbox" name="checkbox1" value="数据库维护"   >4 数据库维护。
             <input type="checkbox" name="checkbox1" value="应用维护"   >5 应用维护。
             <input type ="hidden" id="mantyp" name="mantyp" value ="" ></td>
          </tr>
          <tr>
            <td width="189" class="bbbb"><span class="word_grey">设备名称（类型）:</span></td>
            <td class="bbbb"><select name="sname" id="sname">
            <option value=""></option>
              <option value="物理机">物理机</option>
              <option value="虚拟机">虚拟机</option>
            </select></td>
            <td class="bbbb"><span class="word_grey">品牌:</span></td>
            <td class="bbbb"><select name="styp1" id="styp1">
            <option value=""></option>
              <option value="DELL">DELL</option>
              <option value="HP">HP</option>
              <option value="IBM">IBM</option>
            </select></td>
            <td class="bbbb"><span >型号:</span></td>
            <td class="bbbb"><input name="styp2" type="text" id="styp2" size="21"></td>
          </tr>
          <tr>
            <td height="23" class="bbbb"><span >机房/机架位置:</span></td>
            <td class="bbbb"><input name="pos" type="text" id="pos" size="20"></td>
            <td class="bbbb"><span >IP地址:</span></td>
            <td class="bbbb"><input name="ip" type="text" id="ip" size="20"></td>
            <td class="bbbb"><span >CPU型号/物理数量:</span></td>
            <td class="bbbb"><input name="cpu" type="text" id="cpu" size="21"></td>
          </tr>
          <tr>
            <td class="bbbb"><span >内存配置:</span></td>
            <td class="bbbb"><input name="memory" type="text" id="memory" size="20"></td>
            <td class="bbbb"><span >硬盘配置:</span></td>
            <td class="bbbb"><input name="disk" type="text" id="disk" size="20"></td>
            <td class="bbbb"><span >操作系统:</span></td>
            <td class="bbbb"><select name="syn1" id="syn1">
              <option value=""></option>
              <option value="Windows">Windows</option>
              <option value="Linux">Linux</option>
            </select></td>
          </tr>
          <tr>
            <td class="bbbb">操作系统版本:</td>
            <td class="bbbb"><input name="syn2" type="text" id="syn2" size="20"></td>
            <td class="bbbb">设备序列号:</td>
            <td class="bbbb"><input name="sn" type="text" id="sn" size="20"></td>
            <td class="bbbb">资产编号:</td>
            <td class="bbbb"><input name="sid" type="text" id="sid" size="21"></td>
          </tr>
          <tr>
            <td height="45" colspan="6" align="center" >
              <input type="submit" name="button" id="button" value="   查   询   " onclick="check()">
                      </tr>
        </table>
        
        
        
        <table width="1114" height="355" border="0" class="bbbb" >
          <tr>
            <td height="287" valign="top"><table width="1114"  border="1" align="center">
              <tr>
                <td colspan="11" align="center"   class="cccc1">所有设备信息</td>
              </tr>
              <tr>
                <td width="98" height="21" align="center" >搬入机房日期</td>
                <td width="157" align="center" >系统名称</td>
                <td width="158" align="center" >设备用途</td>
                <td width="104" align="center" ><span class="word_grey">机房/机架位置</span></td>
                <td width="79" align="center" >资产单位</td>
                <td width="61" align="center" ><span class="word_grey">品牌</span></td>
                <td width="72" align="center" ><span class="word_grey">操作系统</span></td>
                <td width="93" align="center" >设备序列号</td>
                <td width="112" align="center" >资产编号</td>
                <td width="57" align="center" >修改</td>
                <td width="53" align="center" >查询</td>
              </tr>
               <%
				// 获取图书信息集合
					List<Equ> list = (List<Equ>)request.getAttribute("list");
               
					// 判断集合是否有效
					if(list == null || list.size() < 1){
						out.print("没有数据！");
					}else{
						// 遍历集合中的数据
						for(Equ equ : list){
			%> 
              
              
              <tr>
                <td align="center"><%=equ.getStdate()%></td>
                <td align="left">
                <input type="text" readonly value=<%=equ.getPname()%> size=21></td>
                
                <td align="left"><input type="text" readonly value=<%=equ.getUse()%> size=21></td>
                <td align="center"><%=equ.getPos()%></td>
                <td align="center"><%=equ.getOwnname().substring(equ.getOwnname().indexOf("/")+1,equ.getOwnname().indexOf("/",equ.getOwnname().indexOf("/")+1) )%></td>
          
                <td align="center"><%=equ.getStyp().substring(0,equ.getStyp().indexOf("/"))%></td>
                
                <td align="center"><%=equ.getSyn().substring(0,equ.getSyn().indexOf("/"))%></td>
                
                <td align="center"><%=equ.getSn()%></td>
                <td align="center"><%=equ.getSid()%></td>
                <td align="center"><a  href="XiugaiServlet?id=<%=equ.getId()%>">修改</a></td> 
                
                 <td align="center"><a href="ChakanServlet?id=<%=equ.getId()%>">查看</a></td> 
               
              </tr>
              
       
			<%
					}
				}
			%> 
			
              <tr>
                <td colspan="11" align="center" bgcolor="white"><%=request.getAttribute("bar")%></td>
               <!--  <td height="22" colspan=11 align="center" bgcolor="white">1</td> -->
              </tr>
            </table></td>
          </tr>
          
          
          <tr>
            <td height="52" width="100%" align="center" valign="top"></td>
          </tr>
        </table> 
              
      <td width="1114" valign="top">&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>
