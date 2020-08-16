<%@page import="com.clas.DataSets"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%
					     String today=DataSets.nowdate();
						String tomorrow=DataSets.tomorrow();
						String monthNow=DataSets.anymonth(0);
						String monthNext=DataSets.anymonth(1);
						%>
	<!-- end: CSS -->
<script src="myjs/vue.js" charset="GBK"></script>
<script src="myjs/axios.js" charset="GBK"></script>

<script src="node_modules/moment/moment.js" charset="GBK"></script>
<script src="element-ui/lib/index.js"></script>
<style>
.itemWraning {
  margin-top: 10px;
  margin-right: 40px;
}

.el-menu--horizontal>.el-submenu .el-submenu__title{
color:#f5f7fa;
}
</style>

<!-- start: Header -->
	<div class="navbar"  style="display: block;">
		<div class="navbar-inner" style="margin-left: -30px;">
			<div class="container-fluid">
			
				<a class="brand" href="" style="margin-top: 4px;">
				<!-- <span>JANUX</span> -->
				<img alt="" src="img/icon2_dx.png" style="padding-top: 7px">
				</a>
			
				<a class="brand" href="" style="padding-left: 0px;padding-right: 0px;margin-left: 30px;">
				<!-- <span>JANUX</span> -->
				<img alt="" src="img/icon3_dx.png" style="padding-top: 19px;">
				</a>
								
				<!-- start: Header Menu -->
				<div style="float: right;margin-right: -39px;" id="header" >
				<el-menu :default-active="'activeIndex'" class="el-menu-demo" style="background-color: rgb(87, 142, 190)" mode="horizontal" @select="'handleSelect'">
  <el-submenu index="1">
    <template slot="title">设备管理</template>
    <el-menu-item index="1-1" @click="linkjsp('AddTestServletR')">设备录入</el-menu-item>
    <el-menu-item index="1-2" @click="linkjsp('AllListServlet')">设备查询</el-menu-item>
    <el-menu-item index="1-3" @click="linkjsp('AllListServlet2')">设备修改</el-menu-item>
    <el-menu-item index="1-4" @click="linkjsp('TestMap')">机房拓扑</el-menu-item>
  </el-submenu>
  <el-submenu index="2">
    <template slot="title">运维管理 <el-badge class="mark" v-model="valueWarning" /></template>
    <el-menu-item index="2-1" @click="linkjsp('AllListServlet4?sdate=<%=today %>&edate=<%=tomorrow%>')">日常运维</el-menu-item>
    <el-menu-item index="2-2" @click="linkjsp('secpos')">安全态势</el-menu-item>
    <el-menu-item index="2-3" @click="linkjsp('out_warning.jsp')">巡检报表</el-menu-item>
  </el-submenu>
  
 
  <el-submenu index="3" v-if="isCon()">
    <template slot="title">合同管理</template>
    <el-menu-item index="3-1" @click="linkjsp('TestContract')">合同录入</el-menu-item>
    <el-menu-item index="3-2" @click="linkjsp('TestChakanContract')">合同查找</el-menu-item>
    <el-menu-item index="3-3" @click="linkjsp('ContractPlan')">合同计划</el-menu-item>
    <el-submenu index="3-4">
    <template slot="title">合同报表</template>
    <el-menu-item index="3-4-1" @click="linkjsp('TestChakanContractPart?monthNow=<%=monthNow %>&monthNext=<%=monthNext %>&f=a')">合同预报帐统计</el-menu-item>
    <el-menu-item index="3-4-2" @click="linkjsp('out_contract.jsp')">付款报表导出</el-menu-item>
    <el-menu-item index="3-4-3" @click="linkjsp('secposContract')">合同报表分析</el-menu-item>
    </el-submenu>
    <el-menu-item index="3-5" @click="linkjsp('Base')">基础信息录入</el-menu-item>
  </el-submenu>

  
   <el-submenu index="4">
    <template slot="title">系统管理</template>
    <el-menu-item index="4-1" @click="linkjsp('TestUsers.jsp')">用户管理</el-menu-item>
    <el-menu-item index="4-2" @click="linkjsp('TestPerm')" v-if="islevela()">权限与日志</el-menu-item>
  </el-submenu>
  
  <el-submenu index="5" >
  <template slot="title">{{user}}</template>
  <el-menu-item index="5-1" @click="loginout()">注销</el-menu-item>
  </el-submenu>
  
</el-menu>
				</div>
				<!-- end: Header Menu -->
				
				
				
			</div>
		</div>
	</div>
	<!-- start: Header -->
	
	
	<!-- start: Header 2-->
<script type="text/javascript">
    listusGson=<%=session.getAttribute("listusGson") %>;
    listAllDxtestworkObj = <%=session.getAttribute("listAllDxtestwork")  %>;

    warningCount = {
	      "f" : function(){
		  if (listAllDxtestworkObj==null){listAllDxtestworkObj=[];}
		  if(listAllDxtestworkObj.length==0){return ""; }
	            return listAllDxtestworkObj.length;
	      }
	}
    
var hd=new Vue({
    el:'#header',
    data:{
	value:"",
	valueWarning:warningCount.f(),
	listusGson:listusGson[0],
	user:listusGson[0].userid,
    },
    methods:{
	loginout(){
	    location.href="LogoutServlet";
	},
	linkjsp(url){
	    location.href=url;
	},

	isCon(){
	   if (this.listusGson.con=="1") {
	       return 1;
	}else {
	    return 0;
	}
	},
	islevela(){
	    if (this.listusGson.levela=="1") {
		       return 1;
		}else {
		    return 0;
		}
	},
    },
})
</script>		
	
	

	

