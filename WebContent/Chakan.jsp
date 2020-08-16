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
	<script type="text/javascript" src="/Dxtest/My97DatePicker/WdatePicker.js"> </script> 


<%
String message="";

  if(session.getAttribute("name")==null){

     response.sendRedirect("index_login.jsp");
     message="您好！"+"</b> 请使用用户名与密码登录！";

  }else{}
%>
</head>
<body>


 
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
							if(url==null){
								 url1="没有上传任何附件 ";
							}else{
								 url1=url.substring(url.lastIndexOf("/")+1)+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A HREF='download.jsp?path="+url+"'>下载</A>";
							}
							int id=equ.getId();
															
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
            
            <td  class="bbbb"><%=equ.getSid() %></td>
            <td class="bbbb">档案编号： </td>
            <td  class="bbbb"><%=equ.getDid()%> </td>
            <td width="38" rowspan="10"></td>
          </tr>
          <tr>
            <td colspan="4" class="cccc1">综合楼9层ＩＴ机房设备档案表</td>
          </tr>
          <tr>
            <td class="bbbb">设备初次搬入机房日期： </td>
            <td width="192"  class="bbbb"><%=equ.getStdate()%></td>
            <td width="136" class="bbbb">档案最后变更日期： </td>
            <td width="370"  class="bbbb"><%=equ.getRedate()%></td>
          </tr>
          <tr>
            <td class="bbbb">设备所属项目系统名称： </td>
            <td colspan="3"  class="bbbb"><%=equ.getPname()%> </td>
          </tr>
          <tr>
            <td class="bbbb">设备用途: </td>
            <td colspan="3"  class="bbbb"><%=equ.getUse()%> </td>
          </tr>
          <tr>
            <td class="bbbb">设备资产单位/部门/联系人/电话: </td>
            <td colspan="3"  class="bbbb"><%=equ.getOwnname()%> </td>
          </tr>
          <tr>
            <td width="298" class="bbbb"> 系统集成商（开发商）名称/联系人/电话: </td>
            <td colspan="3"  class="bbbb"><%=equ.getProname()%> </td>
          </tr>
          <tr>
            <td class="bbbb"> 系统维护责任人姓名/电话/所属部门 </td>
            <td colspan="3"  class="bbbb"> <%=equ.getManname()%> </td>
          </tr>
          <tr>
            <td class="bbbb"> 代维单位名称/联系人/电话 </td>
            <td colspan="3"  class="bbbb"><%=equ.getAgename()%> </td>
          </tr>
          <tr class="bbbb">
            <td  colspan="4"> 维护形式&nbsp;&nbsp;  ： &nbsp;&nbsp;
               <%=equ.getMantyp()%>
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
            <td colspan="6"  class="bbbb"><%=equ.getSname()%> </td>
          </tr>
          <tr>
            <td class="aaaa"> 2 </td>
            <td class="bbbb"> 品牌/型号 </td>
            <td colspan="6" >
             <%=equ.getStyp()%>
            </td>
          </tr>
          <tr>
            <td class="aaaa"> 3 </td>
            <td class="bbbb"> 机房/机架位置 </td>
            <td colspan="6" class="bbbb" > <%=equ.getPos()%> </td>
          </tr>
          <tr>
            <td class="aaaa"> 4 </td>
            <td class="bbbb"> IP地址/掩码/网关 </td>
            <td width="69" class="bbbb"> IP地址: </td>
            <td width="122" class="bbbb" > 
            <%=ip1%> 
            </td>
            <td width="95" class="bbbb"> 掩码: </td>
            <td width="117" class="bbbb" > 
            <%=mask%> 
            
            </td>
            <td width="95" class="bbbb"> 网关: </td>
            <td width="160" class="bbbb" > <%=gateway%>  </td>
          </tr>
          <tr>
            <td class="aaaa"> 5 </td>
            <td class="bbbb">网线编号/交换机端口号 /配线架端口号 </td>
            <td align="left" class="bbbb"> 网线编号: </td>
            <td class="bbbb" > <%=pot1%> </td>
            <td class="bbbb"> 交换机端口号: </td>
            <td ><%=pot2%></td>
            <td class="bbbb"> 配线架端口号: </td>
            <td ><%=pot3%></td>
          </tr>
          <tr>
            <td class="aaaa"> 6 </td>
            <td class="bbbb"> CPU型号/物理数量 </td>
            <td class="bbbb"> CPU型号: </td>
            <td colspan="3" class="bbbb" ><%=cpu1%></td>
            <td class="bbbb"> 物理数量: </td>
            <td class="bbbb" ><%=cpu2%></td>
          </tr>
          <tr>
            <td class="aaaa"> 7 </td>
            <td class="bbbb"> 内存配置 </td>
            <td colspan="6" class="bbbb" ><%=equ.getMemory()%></td>
          </tr>
          <tr>
            <td class="aaaa"> 8 </td>
            <td class="bbbb"> 硬盘配置 </td>
            <td colspan="6" class="bbbb" ><%=equ.getDisk()%></td>
          </tr>
          <tr>
            <td class="aaaa"> 9 </td>
            <td class="bbbb"> 操作系统版本 </td>
            <td class="bbbb"> 操作系统 </td>
            <td ><%=synx%></td>
            <td class="bbbb">   版本: </td>
            <td colspan="3" class="bbbb" ><%=syny%></td>
          </tr>
          <tr>
            <td class="aaaa"> 10 </td>
            <td class="bbbb"> 数据库版本 </td>
            <td colspan="6" class="bbbb" ><%=equ.getOracle()%></td>
          </tr>
          <tr>
            <td class="aaaa"> 11 </td>
            <td class="bbbb"> 设备序列号 </td>
            <td colspan="6" class="bbbb" ><%=equ.getSn()%></td>
          </tr>
          <tr>
            <td class="aaaa"> 12 </td>
            <td class="bbbb"> 其它信息 </td>
            <td colspan="6" class="bbbb" ><%=equ.getOth()%></td>
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
            <td width="238" class="bbbb" ><%=equ.getSroot()%></td>
            <td width="49" class="bbbb"> 口令: </td>
            <td width="356" class="bbbb" ><%=equ.getSpwd()%></td>
          </tr>
          <tr>
            <td class="bbbb"> 数据库系统管理员用户名/口令列表: </td>
            <td class="bbbb"> 管理员用户名: </td>
            <td class="bbbb" ><%=equ.getOroot()%></td>
            <td class="bbbb"> 口令: </td>
            <td class="bbbb"  ><%=equ.getOpwd()%></td>
          </tr>
          <tr>
            <td class="bbbb">应用系统管理员用户名/口令列表: </td>
            <td class="bbbb"> 管理员用户名: </td>
            <td class="bbbb" ><%=equ.getAroot()%></td>
            <td class="bbbb"> 口令: </td>
            <td class="bbbb" ><%=equ.getApwd()%></td>
          </tr>
          <tr>
            <td colspan="5" class="bbbb" >附件名:&nbsp;&nbsp;&nbsp;&nbsp;
              <%=url1%>
              
            </td>
          </tr>
          <tr>
            <td colspan="2" align="center" class="aaaa" >
<form action="UpdataServlet?id=<%=id%>"  name="form1" id="form1" method="post" onSubmit="return check(this);">
			     <input type="submit" value=" 修改 " />
			      </form>	
</td>
            <td align="center" class="aaaa">
<form action="FindServlet2" name="form1" id="form1"  method="post" onSubmit="return check(this);">
			     <input type="submit" value=" 返回 " />
			      </form>

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
 


</body>
</html>