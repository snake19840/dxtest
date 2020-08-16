<%@page import="com.clas.EquFile"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import="java.util.List"%>
<%@page import="com.clas.Equ"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http ://www.w3.org/TR/html4/loose.dtd">


<div id="EquMain">
<template v-if="isEquMain">
			<div >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>机房设备档案信息</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i  class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div id="equMain1" class="box-content">
								
						 
<el-row >
  <el-col :span="4"><div class="grid-content " title="系统名称">系统名称 :</div></el-col>
  <el-col :span="8"><div class="grid-content1" :title="listGsons[0].pname">{{listGsons[0].pname}}</div></el-col>
  <el-col :span="4"><div class="grid-content " title="设备SN">设备SN:</div></el-col>
  <el-col :span="8"><div class="grid-content1 " :title="listGsons[0].sn">{{listGsons[0].sn}}</div></el-col>
</el-row>
        <el-row >
  <el-col :span="4"><div class="grid-content " title="IP地址">IP地址 :</div></el-col>
  <el-col :span="4"><div class="grid-content1 " :title="ip1">{{ip1}}</div></el-col>
  <el-col :span="4"><div class="grid-content " title="子网掩码">子网掩码 :</div></el-col>
  <el-col :span="4"><div class="grid-content1 " :title="ip2">{{ip2}}</div></el-col>
  <el-col :span="4"><div class="grid-content " title="网关">网关 :</div></el-col>
  <el-col :span="4"><div class="grid-content1 " :title="ip3">{{ip3}}</div></el-col>
</el-row>
<el-row >
  <el-col :span="4"><div class="grid-content " title="品牌">品牌 :</div></el-col>
  <el-col :span="8"><div class="grid-content1 " :title="styp1">{{styp1}}</div></el-col>
  <el-col :span="4"><div class="grid-content " title="型号">型号 :</div></el-col>
  <el-col :span="8"><div class="grid-content1 " :title="styp2">{{styp2}}</div></el-col>
</el-row>
<el-row >
  <el-col :span="4"><div class="grid-content " title="设备类型">设备类型 :</div></el-col>
  <el-col :span="8"><div class="grid-content1 " :title="listGsons[0].sname">{{listGsons[0].sname}}</div></el-col>
  <el-col :span="4"><div class="grid-content " title="设备位置">设备位置:</div></el-col>
  <el-col :span="8"><div class="grid-content1 " :title="listGsons[0].pos">{{listGsons[0].pos}}</div></el-col>
</el-row>
        


							

					</div>
				</div><!--/span-->
			
			</div><!--/row-->
			
			<div style="text-align: center;">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>设备维护信息</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div id="equMain2" class="box-content">
<el-row >
  <el-col :span="4"><div class="grid-content " title="资产编号">资产编号 :</div></el-col>
  <el-col :span="8"><div class="grid-content1" :title="listGsons[0].sid">{{listGsons[0].sid}}</div></el-col>
  <el-col :span="4"><div class="grid-content " title="档案编号">档案编号 :</div></el-col>
  <el-col :span="8"><div class="grid-content1 " :title="listGsons[0].did">{{listGsons[0].did}}</div></el-col>
</el-row>
<el-row >
  <el-col :span="4"><div class="grid-content " title="设备初次搬入机房日期">设备初次搬入机房日期 :</div></el-col>
  <el-col :span="8"><div class="grid-content1" :title="listGsons[0].stdate">{{listGsons[0].stdate}}</div></el-col>
  <el-col :span="4"><div class="grid-content " title="设备用途">设备用途 :</div></el-col>
  <el-col :span="8"><div class="grid-content1 " :title="listGsons[0].use">{{listGsons[0].use}}</div></el-col>
</el-row>
        <el-row >
  <el-col :span="3"><div class="grid-content " title="设备资产单位">设备资产单位 :</div></el-col>
  <el-col :span="3"><div class="grid-content1 " :title="ownname1">{{ownname1}}</div></el-col>
  <el-col :span="3"><div class="grid-content " title="部门">部门 :</div></el-col>
  <el-col :span="3"><div class="grid-content1 " :title="ownname2">{{ownname2}}</div></el-col>
  <el-col :span="3"><div class="grid-content " title="联系人">联系人 :</div></el-col>
  <el-col :span="3"><div class="grid-content1 " :title="ownname3">{{ownname3}}</div></el-col>
  <el-col :span="3"><div class="grid-content " title="电话">电话 :</div></el-col>
  <el-col :span="3"><div class="grid-content1 " :title="ownname4">{{ownname4}}</div></el-col>
</el-row>
<el-row >
  <el-col :span="4"><div class="grid-content " title="系统集成商">系统集成商 :</div></el-col>
  <el-col :span="4"><div class="grid-content1 " :title="proname1">{{proname1}}</div></el-col>
  <el-col :span="4"><div class="grid-content " title="联系人">联系人 :</div></el-col>
  <el-col :span="4"><div class="grid-content1 " :title="proname2">{{proname2}}</div></el-col>
  <el-col :span="4"><div class="grid-content " title="电话">电话 :</div></el-col>
  <el-col :span="4"><div class="grid-content1 " :title="proname3">{{proname3}}</div></el-col>
</el-row>
<el-row >
  <el-col :span="4"><div class="grid-content " title="系统责任人">系统责任人 :</div></el-col>
  <el-col :span="4"><div class="grid-content1 " :title="manname1">{{manname1}}</div></el-col>
  <el-col :span="4"><div class="grid-content " title="电话">电话 :</div></el-col>
  <el-col :span="4"><div class="grid-content1 " :title="manname2">{{manname2}}</div></el-col>
  <el-col :span="4"><div class="grid-content " title="所属部门">所属部门 :</div></el-col>
  <el-col :span="4"><div class="grid-content1 " :title="manname3">{{manname3}}</div></el-col>
</el-row>
<el-row >
  <el-col :span="4"><div class="grid-content " title="代维单位">代维单位 :</div></el-col>
  <el-col :span="4"><div class="grid-content1 " :title="agename1">{{agename1}}</div></el-col>
  <el-col :span="4"><div class="grid-content " title="联系人">联系人 :</div></el-col>
  <el-col :span="4"><div class="grid-content1 " :title="agename2">{{agename2}}</div></el-col>
  <el-col :span="4"><div class="grid-content " title="电话">电话 :</div></el-col>
  <el-col :span="4"><div class="grid-content1 " :title="agename3">{{agename3}}</div></el-col>
</el-row>

<el-row >
  <el-col :span="4"><div class="grid-content " title="维护形式">维护形式 :</div></el-col>
  <el-col :span="20"><div class="grid-content1 " :title="listGsons[0].mantyp">{{listGsons[0].mantyp}}</div></el-col>
</el-row>	
						
						
					</div>
				</div><!--/span-->

			</div><!--/row-->
				
			
			<div >
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white edit"></i><span class="break"></span>IT设备配置明细</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a> -->
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div id="equMain3" class="box-content">
						
<el-row >
  <el-col :span="4"><div class="grid-content " title="网线编号">网线编号 :</div></el-col>
  <el-col :span="4"><div class="grid-content1" :title="port1">{{port1}}</div></el-col>
  <el-col :span="4"><div class="grid-content " title="交换机端口号">交换机端口号 :</div></el-col>
  <el-col :span="4"><div class="grid-content1 " :title="port2">{{port2}}</div></el-col>
   <el-col :span="4"><div class="grid-content " title="配线架端口号">配线架端口号 :</div></el-col>
  <el-col :span="4"><div class="grid-content1 " :title="port3">{{port3}}</div></el-col>
</el-row>
<el-row >
  <el-col :span="4"><div class="grid-content " title="CPU型号">CPU型号 :</div></el-col>
  <el-col :span="8"><div class="grid-content1" :title="cpu1">{{cpu1}}</div></el-col>
  <el-col :span="4"><div class="grid-content " title="物理数量">物理数量 :</div></el-col>
  <el-col :span="8"><div class="grid-content1 " :title="cpu2">{{cpu2}}</div></el-col>
</el-row>
<el-row >
  <el-col :span="4"><div class="grid-content " title="内存配置">内存配置 :</div></el-col>
  <el-col :span="8"><div class="grid-content1" :title="listGsons[0].memory">{{listGsons[0].memory}}</div></el-col>
  <el-col :span="4"><div class="grid-content " title="硬盘配置">硬盘配置 :</div></el-col>
  <el-col :span="8"><div class="grid-content1 " :title="listGsons[0].disk">{{listGsons[0].disk}}</div></el-col>
</el-row>
<el-row >
  <el-col :span="4"><div class="grid-content " title="操作系统">操作系统 :</div></el-col>
  <el-col :span="8"><div class="grid-content1" :title="syn1">{{syn1}}</div></el-col>
  <el-col :span="4"><div class="grid-content " title="版本">版本 :</div></el-col>
  <el-col :span="8"><div class="grid-content1 " :title="syn2">{{syn2}}</div></el-col>
</el-row>
<el-row >
  <el-col :span="4"><div class="grid-content " title="数据库版本">数据库版本 :</div></el-col>
  <el-col :span="8"><div class="grid-content1" :title="listGsons[0].oracle">{{listGsons[0].oracle}}</div></el-col>
  <el-col :span="4"><div class="grid-content " title="备注">备注 :</div></el-col>
  <el-col :span="8"><div class="grid-content1 " :title="listGsons[0].oth">{{listGsons[0].oth}}</div></el-col>
</el-row>
			
			
					</div>
				</div><!--/span-->
			
			</div><!--/row-->		
</template>
	</div>		
<script type="text/javascript">
listGsons=<%=session.getAttribute("listGson") %>;
		
		var vm=new Vue({
		    el:'#EquMain',
		    data:{
			isEquMain:false,
			listGsons:listGsons,
		    },
		    mounted(){
			let l=listGsons.length;
			console.log(l);
			if (l!=0) {
			    this.isEquMain=true;
			    
			}
			
			
		    },
		    computed:{
			ip1(){
			    return this.listGsons[0].ip==null? "":this.listGsons[0].ip.split("/")[0];
			},
			ip2(){
			    return this.listGsons[0].ip==null? "":this.listGsons[0].ip.split("/")[1];
			},
			ip3(){
			    return this.listGsons[0].ip==null? "":this.listGsons[0].ip.split("/")[2];
			},
			styp1(){return this.listGsons[0].styp==null? "":this.listGsons[0].styp.split("/")[0];},
			styp2(){return this.listGsons[0].styp==null? "":this.listGsons[0].styp.split("/")[1];},
			ownname1(){return this.listGsons[0].ownname==null? "":this.listGsons[0].ownname.split("/")[0];},
			ownname2(){return this.listGsons[0].ownname==null? "":this.listGsons[0].ownname.split("/")[1];},
			ownname3(){return this.listGsons[0].ownname==null? "":this.listGsons[0].ownname.split("/")[2];},
			ownname4(){return this.listGsons[0].ownname==null? "":this.listGsons[0].ownname.split("/")[3];},
			proname1(){return this.listGsons[0].proname==null? "":this.listGsons[0].proname.split("/")[0];},
			proname2(){return this.listGsons[0].proname==null? "":this.listGsons[0].proname.split("/")[1];},
			proname3(){return this.listGsons[0].proname==null? "":this.listGsons[0].proname.split("/")[2];},
			manname1(){return this.listGsons[0].manname==null? "":this.listGsons[0].manname.split("/")[0];},
			manname2(){return this.listGsons[0].manname==null? "":this.listGsons[0].manname.split("/")[1];},
			manname3(){return this.listGsons[0].manname==null? "":this.listGsons[0].manname.split("/")[2];},
			agename1(){return this.listGsons[0].agename==null? "":this.listGsons[0].agename.split("/")[0];},
			agename2(){return this.listGsons[0].agename==null? "":this.listGsons[0].agename.split("/")[1];},
			agename3(){return this.listGsons[0].agename==null? "":this.listGsons[0].agename.split("/")[2];},
			port1(){return this.listGsons[0].port==null? "":this.listGsons[0].port.split("/")[0];},
			port2(){return this.listGsons[0].port==null? "":this.listGsons[0].port.split("/")[1];},
			port3(){return this.listGsons[0].port==null? "":this.listGsons[0].port.split("/")[2];},
			cpu1(){return this.listGsons[0].cpu==null? "":this.listGsons[0].cpu.split("/")[0];},
			cpu2(){return this.listGsons[0].cpu==null? "":this.listGsons[0].cpu.split("/")[1];},
			syn1(){return this.listGsons[0].syn==null? "":this.listGsons[0].syn.split("/")[0];},
			syn2(){return this.listGsons[0].syn==null? "":this.listGsons[0].syn.split("/")[1];},
			
		    },
		    
		})
		
		</script>
		
