<%@page import="com.clas.DataSets"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


	

    
<!-- start: Main Menu -->
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href="ReturnIndex"><i class="icon-home"></i><span class="hidden-tablet"> 首页</span></a></li>	
						
						<li>
							<a class="dropmenu" href="#"><i class="icon-sitemap"></i><span class="hidden-tablet"> 设备管理</span></a>
							<ul>
								<li><a class="submenu" href="AddTestServletR"><i class="icon-book"></i><span class="hidden-tablet"> 设备录入</span></a></li>
								<li><a class="submenu" href="AllListServlet"><i class="icon-search"></i><span class="hidden-tablet"> 设备查询</span></a></li>
								<li><a class="submenu" href="AllListServlet2"><i class="icon-edit"></i><span class="hidden-tablet"> 设备修改</span></a></li>
								<li><a class="submenu" href="TestMap"><i class="icon-map-marker"></i><span class="hidden-tablet"> 机房拓扑</span></a></li>
							</ul>	
						</li>
						<%
					     String today1=DataSets.nowdate();
						String tomorrow1=DataSets.tomorrow();
						%>
						
						<li>
							<a class="dropmenu" href="#"><i class="icon-reorder"></i><span class="hidden-tablet"> 运维管理</span></a>
							<ul>
								<li><a class="submenu" href="AllListServlet4?sdate=<%=today1 %>&edate=<%=tomorrow1%>"><i class="icon-user-md"></i><span class="hidden-tablet"> 日常运维</span></a></li>
<!-- 								<li><a class="submenu" href="#"><i class="icon-eye-open"></i><span class="hidden-tablet"> 待定</span></a></li> -->
<!-- 								<li><a class="submenu" href="#"><i class="icon-briefcase"></i><span class="hidden-tablet"> 待定</span></a></li> -->
<!-- 								<li><a class="submenu" href="#"><i class="icon-wrench"></i><span class="hidden-tablet"> 待定</span></a></li> -->
							</ul>	
						</li>
						
						<li id="contract-management-TestMainMenu" style="display: none">
							<a class="dropmenu" href="#"><i class="icon-reorder"></i><span class="hidden-tablet"> 合同管理</span></a>
							<ul>
							<li><a class="submenu" href="TestContract"><i class="icon-pencil"></i><span class="hidden-tablet"> 合同录入</span></a></li>
								<li><a class="submenu" href="TestChakanContract"><i class="icon-group"></i><span class="hidden-tablet"> 合同查找</span></a></li>
								<li><a class="submenu" href="ContractPlan"><i class="icon-calendar"></i><span class="hidden-tablet"> 合同计划</span></a></li>
								<li><a class="submenu" href="Base"><i class="icon-info-sign"></i><span class="hidden-tablet"> 基础信息录入</span></a></li>

							</ul>	
						</li>
						
						
						<li>
							<a class="dropmenu" href="#"><i class="icon-cogs"></i><span class="hidden-tablet"> 系统管理</span></a>
							<ul>
								<li><a class="submenu" href="TestUsers"><i class="icon-user"></i><span class="hidden-tablet"> 用户管理</span></a></li>
								
							</ul>	
						</li>
						
						<li><a href="#" onclick="logout()"><i class="icon-lock"></i><span class="hidden-tablet"> 登陆页面</span></a></li>
					</ul>
				</div>
			</div>
			

			<!-- end: Main Menu -->