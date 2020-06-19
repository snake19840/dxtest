<%@page import="com.clas.EquFile"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import="java.util.List"%>
<%@page import="com.clas.Equ"%>

<style>
<!--
.el-message-box{
width: auto; 
max-width: 870px;
max-height: 700px;
overflow-y:auto; 
overflow-x:auto; 
}
.img{max-width: 870px;}


-->
</style>

    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http ://www.w3.org/TR/html4/loose.dtd">
    
    <div id="warning">
		
		<div class="box span12" ontablet="span6" ondesktop="span12" style="margin-left: 0%;">
		<div class="box-header">
		<h2><i class="halflings-icon white comment"></i><span class="break"></span>故障跟踪记录</h2>
		<div class="box-icon">
			<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
		</div>
	</div>
	<div class="box-content" >
	

 <div style="float: left;padding-left: 20px;"><span class="add-on">开始时间</span><input id="s_sdate" type="date" v-model="sx_sdate"></div>
  <div style="float: left;"><span class="add-on">结束时间</span><input id="s_edate" type="date" v-model="sx_edate" ></div>
   <div style="float: left;padding-left: 20px;">
   <select id="select_statu_search"  v-model="sx_statu" >
	<option value="">请选择故障状态</option>
	<option  v-for="(WarningStatuGson,index) in WarningStatuGsons" :key="index" >{{WarningStatuGson.rowData.STATU}}</option>
	<option  v-if="TT"  value="恢复">恢复</option>
	</select>
<!-- 	<button class="btn btn-info" id="search" onclick="searchlist()" style="padding: 4px 12px; margin-bottom: 10px;" >搜索</button> -->
	</div>

<div style="padding: 34px 0px;" id="w_masg" class="chat"  >
<ul >
<li name="li1"  id="ul1" v-for="(WarningGson,index)  in dataShow" :key="index">

<el-card ref="card" style="width:95%;margin-bottom: 10px;" class="box-card">
  <div slot="header" class="clearfix">
    <span style="padding-right: 10px;">{{WarningGson.rowData.USERNAME}}</span>
    <span style="padding-right: 10px;">登记时间:  {{WarningGson.rowData.NOWDATE}}</span>
    <span style="padding-right: 10px;">={{WarningGson.rowData.STATU}}= </span>
    <span >事件开始时间:{{WarningGson.rowData.SDATE==null ? "":WarningGson.rowData.SDATE.slice(0,10)}} </span>
   
    <el-dropdown style="float: right; padding: 3px 0;" v-if="isEdit(WarningGson.rowData.USERNAME,WarningGson.rowData.NOWDATE)"   @command="handleCommand">
  <span class="el-dropdown-link">
    操作<i class="el-icon-arrow-down el-icon--right"></i>
  </span>
  <el-dropdown-menu   slot="dropdown">
   
    <el-dropdown-item :command="['edit',WarningGson.rowData.MESSAGE,WarningGson.rowData.ID,WarningGson.rowData.PICTURE,index]">
    编辑</el-dropdown-item>
    <el-dropdown-item :command="['upfile',WarningGson.rowData.STATU,WarningGson.rowData.MESSAGE,WarningGson.rowData.PICTURE,index]">
     上传
    </el-dropdown-item>
    <el-dropdown-item :command="['del',WarningGson.rowData.ID,index]">删除</el-dropdown-item>
  </el-dropdown-menu>
</el-dropdown>
  </div>
    <span v-if="!WarningGson.flag" style="float: left;white-space: pre-wrap;width: 70%;word-wrap:break-word;padding-bottom: 15px;">{{WarningGson.rowData.MESSAGE}}</span>
    
    <span v-else style="float: left;width: 70%;word-wrap:break-word;padding-bottom: 15px;">
    <el-input style="white-space: pre-wrap;"  type="textarea" v-model:value="WarningGson.rowData.MESSAGE">{{WarningGson.rowData.MESSAGE}}</el-input>
    <span style="float: right;">
     <el-button  type="success" icon="el-icon-check" circle @click="saveli(WarningGson.rowData.MESSAGE,WarningGson.rowData.ID,index)"></el-button>
    </span>
    </span>

	<div    v-for="(p,index) in pictures(WarningGson.rowData.PICTURE)" :key="index" style="width: 100px;height: 120px;padding: 10px 10px;float: right;" >
	<div  @mouseenter="ismouseenter" @mouseleave="ismouseleave"  :style="bd(p.url)+'background-size: cover;'" style="width: 100px;height: 120px;margin:0 auto; border:1px solid #666;float: right;">
	<div v-if="seen"  style="text-align: center;line-height: 120px;position: relative;top: 40%; /*偏移*/">
	<button @click="open2(p.url)" style="margin: 0px 10px;float: left;" class="el-icon-zoom-in"></button>
	<button @click="delpic(p.url,WarningGson.rowData.PICTURE,index)" style="margin: 0px 10px;" class="el-icon-delete"></button></div>
	</div>
	</div>

<el-button ref="upload" type="text" @click="open3(index,WarningGson.rowData.PICTURE,WarningGson.rowData.STATU,WarningGson.rowData.MESSAGE)"></el-button>
</li>
</ul>

</div>
<div style="padding-left: 25px" class="block">
 <el-pagination
  @current-change="handleCurrentChange"
 :page-size="pageSize"
    layout="total,prev, pager, next"
    :total="totalLen">
  </el-pagination>

</div>
	</div>


<div v-if="isRec" style="text-align: left;background-color: #eee !important;" class="box-content">
<span style="margin-left:25px" id="select_name">
	<b>{{listusGson[0].userid}}</b>
</span>
<span>  

<select style="margin-left: 25px" ref="select_statu"   v-model="couponSelected" @change="getCouponSelected">
			<option :value=WarningStatuGson.rowData.STATU  v-for="(WarningStatuGson,index) in WarningStatuGsons" :key="index">
			{{WarningStatuGson.rowData.STATU}}</option>
</select>
</span>

<div v-if="TT"  style="display: inline;">&nbsp;&nbsp;&nbsp;&nbsp;<b>巡检时间:</b>&nbsp;&nbsp;&nbsp;&nbsp;
<input  type="datetime-local" v-model:value="getNowTime"></div>

<div style="padding: 10px 20px;padding-right: 50px;">
<textarea id="w_text" style="margin: 0px 0px 10px; width: 100%; height: 85px;white-space: pre-wrap;" v-model:value="newMessage"></textarea>
</div>
<div  style="padding: 0px 20px; text-align: center;">
<button class="btn btn-info" id="warningchart" @click="warningchart()"  >提交</button>
</div>

</div>				

</div>	
</div>


<script type="text/javascript">

</script>




