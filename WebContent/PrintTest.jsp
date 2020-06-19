<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" --%>
<%@ page language="java" contentType="application/vnd.ms-word;charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import="java.util.List" %>
<%@page import="com.clas.Equ"%>
<%  
    String fileName ="word.doc";  
    byte[] bt =fileName.getBytes("UTF-8");  
           String unicoStr = new String(bt, "UTF-8");
   response.setHeader("Content-disposition","attachment; filename=" +unicoStr);  
      
%>  

 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http ://www.w3.org/TR/html4/loose.dtd">
<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:w="urn:schemas-microsoft-com:office:word" xmlns:m="http://schemas.microsoft.com/office/2004/12/omml"
xmlns="http://www.w3.org/TR/REC-html40">
	<head>
		<meta http-equiv=Content-Type content="text/html; charset=utf-8">
		<meta name=ProgId content=Word.Document>
		<meta name=Generator content="Microsoft Word 15">
		<meta name=Originator content="Microsoft Word 15">
		<link rel=File-List href="IT机房设备档案表001_9F-A-11-03★★★.files/filelist.xml">
		<link rel=dataStoreItem href="IT机房设备档案表001_9F-A-11-03★★★.files/item0001.xml"
		target="IT机房设备档案表001_9F-A-11-03★★★.files/props002.xml">
		<link rel=themeData href="IT机房设备档案表001_9F-A-11-03★★★.files/themedata.thmx">
		<link rel=colorSchemeMapping href="IT机房设备档案表001_9F-A-11-03★★★.files/colorschememapping.xml">
		<style>
		</style>
	</head>
	<body lang=ZH-CN style='tab-interval:21.0pt;text-justify-trim:punctuation'>
	
	
	<% List<Equ> list=(List<Equ>)session.getAttribute("list"); 
	String sid=list.get(0).getSid();
	String did=list.get(0).getDid();
	String stdate=list.get(0).getStdate();
	String redate=list.get(0).getRedate();
	String pname=list.get(0).getPname();
	String use=list.get(0).getUse();
	String ownname=list.get(0).getOwnname();
	String proname=list.get(0).getProname();
	String agename=list.get(0).getAgename();
	String mantyp=list.get(0).getMantyp();
	String sname=list.get(0).getSname();
	String styp=list.get(0).getStyp();
	String pos=list.get(0).getPos();
	String ip=list.get(0).getIp();
	String port=list.get(0).getPort();
	String cpu=list.get(0).getCpu();
	String memory=list.get(0).getMemory();
	String disk=list.get(0).getDisk();
	String syn=list.get(0).getSyn();
	String oracle=list.get(0).getOracle();
	String sn=list.get(0).getSn();
	String oth=list.get(0).getOth();
	String manname=list.get(0).getManname();
	if(sid==null){sid="";}
	if(did==null){did="";}
	if(stdate==null){stdate="";}
	if(redate==null){redate="";}
	if(pname==null){pname="";}
	if(use==null){use="";}
	if(ownname==null){ownname="";}
	if(proname==null){proname="";}
	if(agename==null){agename="";}
	if(mantyp==null){mantyp="";}
	if(sname==null){sname="";}
	if(styp==null){styp="";}
	if(pos==null){pos="";}
	if(ip==null){ip="";}
	if(port==null){port="";}
	if(cpu==null){cpu="";}
	if(memory==null){memory="";}
	if(disk==null){disk="";}
	if(syn==null){syn="";}
	if(oracle==null){oracle="";}
	if(sn==null){sn="";}
	if(oth==null){oth="";}
	if(manname==null){manname="";}


	%>
		<div class=WordSection1 style='layout-grid:15.6pt'>
			<p class=MsoNormal>
				<span style='font-size:9.0pt;font-family:宋体'>
					设备卡片编号：
					<span lang=EN-US>
						<%=sid%>
						<span style='mso-tab-count:4'>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</span>
					</span>
					档案编号：
					<span lang=EN-US>
						<%=did%>
						<o:p>
						</o:p>
					</span>
				</span>
			</p>
			<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0 width=0
			style='width:514.7pt;margin-left:-48.6pt;border-collapse:collapse;border:none;
			mso-border-alt:double windowtext 1.5pt;mso-yfti-tbllook:480;mso-padding-alt:
			0cm 5.4pt 0cm 5.4pt;mso-border-insideh:.5pt solid windowtext;mso-border-insidev:
			.5pt solid windowtext'>
				<tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:30.35pt'>
					<td width=686 colspan=7 style='width:514.7pt;border:double windowtext 1.5pt;
					border-bottom:solid windowtext 1.0pt;mso-border-alt:double windowtext 1.5pt;
					mso-border-bottom-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
					height:30.35pt'>
						<p class=MsoNormal align=center style='text-align:center'>
							<b style='mso-bidi-font-weight:normal'>
								<span style='font-size:14.0pt;font-family:
								宋体'>
									综合楼
									<span lang=EN-US>
										9
									</span>
									层ＩＴ机房设备档案表
									<span lang=EN-US>
										<span style='mso-spacerun:yes'>
											&nbsp;
										</span>
										<o:p>
										</o:p>
									</span>
								</span>
							</b>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:1;height:21.4pt'>
					<td width=186 colspan=2 style='width:139.5pt;border-top:none;border-left:
					double windowtext 1.5pt;border-bottom:solid windowtext 1.0pt;border-right:
					solid windowtext 1.0pt;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:
					solid windowtext .5pt;mso-border-left-alt:double windowtext 1.5pt;padding:
					0cm 5.4pt 0cm 5.4pt;height:21.4pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								设备初次搬入机房日期：
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
					<td width=171 colspan=3 style='width:128.0pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.4pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								<%=stdate%>
							</span>
						</p>
					</td>
					<td width=152 style='width:113.8pt;border-top:none;border-left:none;
					border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.4pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								档案最后变更日期：
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
					<td width=178 style='width:133.4pt;border-top:none;border-left:none;
					border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:21.4pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								<%=redate%>
							</span>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:2;height:30.1pt'>
					<td width=290 colspan=4 style='width:217.75pt;border-top:none;border-left:
					double windowtext 1.5pt;border-bottom:solid windowtext 1.0pt;border-right:
					solid windowtext 1.0pt;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:
					solid windowtext .5pt;mso-border-left-alt:double windowtext 1.5pt;padding:
					0cm 5.4pt 0cm 5.4pt;height:30.1pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								设备所属项目系统名称：
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
					<td width=396 colspan=3 style='width:296.95pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:30.1pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								<%=pname%>
							</span>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:3;height:27.65pt'>
					<td width=290 colspan=4 style='width:217.75pt;border-top:none;border-left:
					double windowtext 1.5pt;border-bottom:solid windowtext 1.0pt;border-right:
					solid windowtext 1.0pt;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:
					solid windowtext .5pt;mso-border-left-alt:double windowtext 1.5pt;padding:
					0cm 5.4pt 0cm 5.4pt;height:27.65pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								设备用途
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
					<td width=396 colspan=3 style='width:296.95pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:27.65pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								<%=use%>
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:4;height:41.1pt'>
					<td width=290 colspan=4 style='width:217.75pt;border-top:none;border-left:
					double windowtext 1.5pt;border-bottom:solid windowtext 1.0pt;border-right:
					solid windowtext 1.0pt;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:
					solid windowtext .5pt;mso-border-left-alt:double windowtext 1.5pt;padding:
					0cm 5.4pt 0cm 5.4pt;height:41.1pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								设备资产单位
								<span lang=EN-US>
									/
								</span>
								部门
								<span lang=EN-US>
									/
								</span>
								联系人
								<span lang=EN-US>
									/
								</span>
								电话
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
					<td width=396 colspan=3 style='width:296.95pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:41.1pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								<%=ownname%>
							</span>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:5;height:42.8pt'>
					<td width=290 colspan=4 style='width:217.75pt;border-top:none;border-left:
					double windowtext 1.5pt;border-bottom:solid windowtext 1.0pt;border-right:
					solid windowtext 1.0pt;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:
					solid windowtext .5pt;mso-border-left-alt:double windowtext 1.5pt;padding:
					0cm 5.4pt 0cm 5.4pt;height:42.8pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<a name="OLE_LINK1">
								<span style='font-size:9.0pt;font-family:宋体'>
									系统集成商（开发商）名称
									<span lang=EN-US>
										/
									</span>
									联系人
									<span lang=EN-US>
										/
									</span>
									电话
								</span>
							</a>
							<span lang=EN-US style='font-size:9.0pt;
							font-family:宋体'>
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
					<td width=396 colspan=3 style='width:296.95pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:42.8pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								<%=proname%>
							</span>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:6;height:28.55pt'>
					<td width=290 colspan=4 style='width:217.75pt;border-top:none;border-left:
					double windowtext 1.5pt;border-bottom:solid windowtext 1.0pt;border-right:
					solid windowtext 1.0pt;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:
					solid windowtext .5pt;mso-border-left-alt:double windowtext 1.5pt;padding:
					0cm 5.4pt 0cm 5.4pt;height:28.55pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								系统维护责任人姓名
								<span lang=EN-US>
									/
								</span>
								电话
								<span lang=EN-US>
									/
								</span>
								所属部门
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
					<td width=396 colspan=3 style='width:296.95pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:28.55pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								<%=manname%>
							</span>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:7;height:27.5pt'>
					<td width=290 colspan=4 style='width:217.75pt;border-top:none;border-left:
					double windowtext 1.5pt;border-bottom:solid windowtext 1.0pt;border-right:
					solid windowtext 1.0pt;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:
					solid windowtext .5pt;mso-border-left-alt:double windowtext 1.5pt;padding:
					0cm 5.4pt 0cm 5.4pt;height:27.5pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								代
								<span class=GramE>
									维单位
								</span>
								名称
								<span lang=EN-US>
									/
								</span>
								联系人
								<span lang=EN-US>
									/
								</span>
								电话
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
					<td width=396 colspan=3 style='width:296.95pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:27.5pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
							<%=agename%>
							</span>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:8;height:21.4pt'>
					<td width=686 colspan=7 style='width:514.7pt;border-top:none;border-left:
					double windowtext 1.5pt;border-bottom:solid windowtext 1.0pt;border-right:
					double windowtext 1.5pt;mso-border-top-alt:solid windowtext .5pt;mso-border-top-alt:
					solid .5pt;mso-border-left-alt:double 1.5pt;mso-border-bottom-alt:solid .5pt;
					mso-border-right-alt:double 1.5pt;mso-border-color-alt:windowtext;padding:
					0cm 5.4pt 0cm 5.4pt;height:21.4pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								维护形式：<%=mantyp%>
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:9;height:25.5pt'>
					<td width=686 colspan=7 style='width:514.7pt;border-top:none;border-left:
					double windowtext 1.5pt;border-bottom:solid windowtext 1.0pt;border-right:
					double windowtext 1.5pt;mso-border-top-alt:solid windowtext .5pt;mso-border-top-alt:
					solid .5pt;mso-border-left-alt:double 1.5pt;mso-border-bottom-alt:solid .5pt;
					mso-border-right-alt:double 1.5pt;mso-border-color-alt:windowtext;padding:
					0cm 5.4pt 0cm 5.4pt;height:25.5pt'>
						<p class=MsoNormal align=center style='text-align:center'>
							<b style='mso-bidi-font-weight:normal'>
								<span lang=EN-US style='font-size:9.0pt;
								font-family:宋体'>
									IT
								</span>
							</b>
							<b style='mso-bidi-font-weight:normal'>
								<span style='font-size:9.0pt;font-family:宋体'>
									设备配置明细
									<span lang=EN-US>
										<o:p>
										</o:p>
									</span>
								</span>
							</b>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:10;height:25.2pt'>
					<td width=28 style='width:21.35pt;border-top:none;border-left:double windowtext 1.5pt;
					border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
					mso-border-left-alt:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
					height:25.2pt'>
						<p class=MsoNormal align=center style='text-align:center'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								1
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
					<td width=176 colspan=2 style='width:132.15pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								设备名称（类型）
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
					<td width=482 colspan=4 style='width:361.2pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left;text-indent:18.05pt;
						mso-char-indent-count:2.0'>
							<span class=GramE>
								<b style='mso-bidi-font-weight:
								normal'>
									<span style='font-size:9.0pt;font-family:宋体'>
										<%=sname%>
									</span>
								</b>
							</span>
							<b style='mso-bidi-font-weight:normal'>
								<span lang=EN-US style='font-size:9.0pt;
								font-family:宋体'>
									<span style='mso-spacerun:yes'>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</span>
									<o:p>
									</o:p>
								</span>
							</b>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:11;height:25.2pt'>
					<td width=28 style='width:21.35pt;border-top:none;border-left:double windowtext 1.5pt;
					border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
					mso-border-left-alt:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
					height:25.2pt'>
						<p class=MsoNormal align=center style='text-align:center'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								2
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
					<td width=176 colspan=2 style='width:132.15pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								品牌
								<span lang=EN-US>
									/
								</span>
								型号
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
					<td width=482 colspan=4 style='width:361.2pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
						<% String styp1="",styp2="";
						if(styp==null){styp="";}
						styp1=styp.substring(0,styp.indexOf("/"));
						styp2=styp.substring(styp.indexOf("/")+1);
						%>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								<%=styp1%>&nbsp;&nbsp;<%=styp2%>

								<o:p>
								</o:p>
							</span>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:12;height:25.2pt'>
					<td width=28 style='width:21.35pt;border-top:none;border-left:double windowtext 1.5pt;
					border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
					mso-border-left-alt:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
					height:25.2pt'>
					
						<p class=MsoNormal align=center style='text-align:center'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								3
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
					<td width=176 colspan=2 style='width:132.15pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								机房
								<span lang=EN-US>
									/
								</span>
								机架位置
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
					<td width=482 colspan=4 style='width:361.2pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
					<% String pos1="",pos2="",pos3="";
						if(pos==null){pos="";}
						pos1=pos.substring(0,pos.indexOf("/"));
						pos2=pos.substring(pos.indexOf("/")+1,pos.lastIndexOf("/"));
						pos3=pos.substring(pos.lastIndexOf("/")+1);
						%>
						<p class=MsoNormal align=left style='text-align:left'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								<%=pos1%>-<%=pos2%>-<%=pos3%>
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:13;height:25.2pt'>
					<td width=28 style='width:21.35pt;border-top:none;border-left:double windowtext 1.5pt;
					border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
					mso-border-left-alt:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
					height:25.2pt'>
						<p class=MsoNormal align=center style='text-align:center'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								4
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
					<td width=176 colspan=2 style='width:132.15pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								IP
							</span>
							<span style='font-size:9.0pt;
							font-family:宋体'>
								地址
								<span lang=EN-US>
									/
								</span>
								掩码
								<span lang=EN-US>
									/
								</span>
								网关
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
					<td width=482 colspan=4 style='width:361.2pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
					<% String ip1="",ip2="",ip3="";
						if(ip==null){ip="";}
						ip1=ip.substring(0,ip.indexOf("/"));
						ip2=ip.substring(ip.indexOf("/")+1,ip.lastIndexOf("/"));
						ip3=ip.substring(ip.lastIndexOf("/")+1);
						%>
						<p class=MsoNormal align=left style='text-align:left'>
							<span  lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								IP地址:<%=ip1%>&nbsp;&nbsp;子网掩码:<%=ip2%>&nbsp;&nbsp;网关:<%=ip3%>
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:14;height:25.2pt'>
					<td width=28 style='width:21.35pt;border-top:none;border-left:double windowtext 1.5pt;
					border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
					mso-border-left-alt:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
					height:25.2pt'>
						<p class=MsoNormal align=center style='text-align:center'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								5
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
					<td width=176 colspan=2 style='width:132.15pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								网线编号
								<span lang=EN-US>
									/
								</span>
								交换机端口号
							</span>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								/
							</span>
							<span style='font-size:9.0pt;
							font-family:宋体'>
								配线架端口号
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
						<p class=MsoNormal align=left style='text-align:left'>
							
						</p>
					</td>
					<td width=482 colspan=4 style='width:361.2pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
					<% String port1="",port2="",port3="";
						if(port==null){port="";}
						port1=port.substring(0,port.indexOf("/"));
						port2=port.substring(port.indexOf("/")+1,port.lastIndexOf("/"));
						port3=port.substring(port.lastIndexOf("/")+1);
						%>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								网线编号
								<span lang=EN-US>
									<%=port1%>/
								</span>
								交换机端口号
								<span lang=EN-US>
									<%=port2%>/
								</span>
								配线架端口号
								<span lang=EN-US>
									<%=port3%>
								</span>
							</span>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:15;height:25.2pt'>
					<td width=28 style='width:21.35pt;border-top:none;border-left:double windowtext 1.5pt;
					border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
					mso-border-left-alt:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
					height:25.2pt'>
						<p class=MsoNormal align=center style='text-align:center'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								6
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
					<td width=176 colspan=2 style='width:132.15pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								CPU
							</span>
							<span style='font-size:9.0pt;
							font-family:宋体'>
								型号
								<span lang=EN-US>
									/
								</span>
								物理数量
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
					<td width=482 colspan=4 style='width:361.2pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
					<% String cpu1="",cpu2="";
						if(cpu==null){cpu="";}
						cpu1=cpu.substring(0,cpu.indexOf("/"));
						cpu2=cpu.substring(cpu.indexOf("/")+1);
						
						%>
						<p class=MsoNormal align=left style='text-align:left'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								<%=cpu1%>
								
							</span>
							<span style='font-size:9.0pt;font-family:宋体'>
								物理数量:
								<span lang=EN-US>
									<%=cpu2%>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:16;height:25.2pt'>
					<td width=28 style='width:21.35pt;border-top:none;border-left:double windowtext 1.5pt;
					border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
					mso-border-left-alt:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
					height:25.2pt'>
						<p class=MsoNormal align=center style='text-align:center'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								7
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
					<td width=176 colspan=2 style='width:132.15pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								内存配置
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
					<td width=482 colspan=4 style='width:361.2pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								<%=memory%>
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:17;height:25.2pt'>
					<td width=28 style='width:21.35pt;border-top:none;border-left:double windowtext 1.5pt;
					border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
					mso-border-left-alt:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
					height:25.2pt'>
						<p class=MsoNormal align=center style='text-align:center'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								8
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
					<td width=176 colspan=2 style='width:132.15pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								硬盘配置
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
					<td width=482 colspan=4 style='width:361.2pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								<%=disk%>
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:18;height:25.2pt'>
					<td width=28 style='width:21.35pt;border-top:none;border-left:double windowtext 1.5pt;
					border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
					mso-border-left-alt:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
					height:25.2pt'>
						<p class=MsoNormal align=center style='text-align:center'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								9
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
					<td width=176 colspan=2 style='width:132.15pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								操作系统版本
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
					<td width=482 colspan=4 style='width:361.2pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								<%=syn%>
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:19;height:25.2pt'>
					<td width=28 style='width:21.35pt;border-top:none;border-left:double windowtext 1.5pt;
					border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
					mso-border-left-alt:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
					height:25.2pt'>
						<p class=MsoNormal align=center style='text-align:center'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								10
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
					<td width=176 colspan=2 style='width:132.15pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								数据库版本
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
					<td width=482 colspan=4 style='width:361.2pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								<%=oracle%>
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:20;height:25.2pt'>
					<td width=28 style='width:21.35pt;border-top:none;border-left:double windowtext 1.5pt;
					border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
					mso-border-left-alt:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
					height:25.2pt'>
						<p class=MsoNormal align=center style='text-align:center'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								11
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
					<td width=176 colspan=2 style='width:132.15pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								设备序列号
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
					<td width=482 colspan=4 style='width:361.2pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								<%=sn%>
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
				</tr>
				<tr style='mso-yfti-irow:21;height:25.2pt'>
					<td width=28 style='width:21.35pt;border-top:none;border-left:double windowtext 1.5pt;
					border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
					mso-border-left-alt:double windowtext 1.5pt;padding:0cm 5.4pt 0cm 5.4pt;
					height:25.2pt'>
						<p class=MsoNormal align=center style='text-align:center'>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								12
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
					<td width=176 colspan=2 style='width:132.15pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span style='font-size:
							9.0pt;font-family:宋体'>
								其它信息
								<span lang=EN-US>
									<o:p>
									</o:p>
								</span>
							</span>
						</p>
					</td>
					<td width=482 colspan=4 style='width:361.2pt;border-top:none;border-left:
					none;border-bottom:solid windowtext 1.0pt;border-right:double windowtext 1.5pt;
					mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
					mso-border-alt:solid windowtext .5pt;mso-border-right-alt:double windowtext 1.5pt;
					padding:0cm 5.4pt 0cm 5.4pt;height:25.2pt'>
						<p class=MsoNormal align=left style='text-align:left'>
							<span class=SpellE>
								<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
									<%=oth%>
								</span>
							</span>
							<span lang=EN-US style='font-size:9.0pt;font-family:宋体'>
								<o:p>
								</o:p>
							</span>
						</p>
					</td>
				</tr>
				
				<tr style='mso-yfti-irow:22;mso-yfti-lastrow:yes;height:31.1pt'>
	<td width=686 colspan=7 style='width:514.7pt;border:double windowtext 1.5pt;
	border-top:none;mso-border-top-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;
	height:31.1pt'>
		
		<p class=MsoNormal align=left style='text-align:left;text-indent:52.7pt;
		mso-char-indent-count:5.0'>
			<b style='mso-bidi-font-weight:normal'>
				<span style='font-family:宋体'>
					确认人：
					<u>
						<span lang=EN-US>
							<span style='mso-spacerun:yes'>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</span>
						</span>
					</u>
				</span>
			</b>
			<span lang=EN-US style='font-family:宋体'>
				<span style='mso-spacerun:yes'>
					&nbsp;
				</span>
				<span style='mso-spacerun:yes'>
					&nbsp;&nbsp;
				</span>
				<span style='mso-spacerun:yes'>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</span>
				<span style='mso-spacerun:yes'>
					&nbsp;
				</span>
			</span>
			<b style='mso-bidi-font-weight:
			normal'>
				<span style='font-family:宋体'>
					确认日期：
					<u>
						<span lang=EN-US>
							<span style='mso-spacerun:yes'>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</span>
						</span>
					</u>
				</span>
			</b>
			<span lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:宋体;color:#0070C0'>
				<o:p>
				</o:p>
			</span>
		</p>
	</td>
</tr>
</table>
		
		</div>
		
		
	</body>

</html>

