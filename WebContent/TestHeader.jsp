<%@page import="com.clas.DataSets"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%
					     String today=DataSets.nowdate();
						String tomorrow=DataSets.tomorrow();
						%>

<!-- start: Header -->
	<div class="navbar"  style="display: block;">
		<div class="navbar-inner" style="margin-left: -30px;">
			<div class="container-fluid">
			
				<a class="brand" href="">
				<!-- <span>JANUX</span> -->
				<img alt="" src="img/icon2_dx.png" style="padding-top: 7px">
				</a>
			
				<a class="brand" href="" style="padding-left: 0px;padding-right: 0px;margin-left: 30px;">
				<!-- <span>JANUX</span> -->
				<img alt="" src="img/icon3_dx.png" style="padding-top: 7px;">
				</a>
								
				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav" style="display: block;">
					<ul class="nav pull-right">
						
					<li class="dropdown hidden-phone">
					<a class="btn dropdown-toggle"  href="ReturnIndex">
								首页
							</a>
					</li>
					<li class="dropdown hidden-phone">
<!-- 							<a class="btn dropdown-toggle" data-toggle="dropdown" href="AllListServlet"> -->
					<a class="btn dropdown-toggle"  href="AllListServlet">
								设备管理
							</a>
							<ul class="dropdown-menu notifications">
								<li class="dropdown-menu-title">
 								</li>	
 							
                            	<li>
                                     <a href="AddTestServletR">
										<!--<span class="icon blue"><i class="icon-user"></i></span>-->
										
										<i class="halflings-icon book"></i> 设备录入
										
										<!-- <span class="time">1 min</span>  -->
                                    </a> 
                                </li>
                              <li>
                                     <a href="AllListServlet">
                                     <i class="halflings-icon search"></i> 设备查询
										
									</a> 
                                </li>
                                <li>
                                     <a href="AllListServlet2">
                                      <i class="halflings-icon edit"></i> 设备修改
										
									</a> 
                                </li>
                                 <li>
                                     <a href="TestMap">
                                      <i class="halflings-icon map-marker"></i> 机房拓扑
										
									</a> 
                                </li>
                            
							</ul>
						</li>
						<!-- start: Notifications Dropdown -->
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle"  href="AllListServlet4?sdate=<%=today %>&edate=<%=tomorrow%>">
								<!-- <i class="icon-calendar"></i>
								 <span class="badge red">
								 </span> -->
							运维管理</a>
							<ul class="dropdown-menu tasks">
								<li class="dropdown-menu-title">
 								</li>
								<li>
                                     <a href="AllListServlet4?sdate=<%=today %>&edate=<%=tomorrow%>">
										<!--<span class="icon blue"><i class="icon-user"></i></span>-->
										<i class="icon-user-md"></i> 日常运维
										<!-- <span class="message1">维护日志</span> -->
										<!-- <span class="time">1 min</span>  -->
                                    </a> 
                                </li>
                                	<li>
                                     <a href="secpos">
									
										<i class="icon-signal"></i> 安全态势
										
                                    </a> 
                                </li>
<!--                                  	<li> -->
<!--                                      <a href="calendar.jsp"> -->
									
<!-- 										<i class="icon-signal"></i> 维护日历 -->
										
<!--                                     </a>  -->
<!--                                 </li> -->
                               
							</ul>
						</li>
						<!-- end: Notifications Dropdown -->
						
						
						
					
						
						<li id="contract-management-TestHeader" class="dropdown hidden-phone" style="display: none">
							<a class="btn dropdown-toggle"  href="TestChakanContract">
								合同管理
							</a>
							<ul class="dropdown-menu messages">
								<li class="dropdown-menu-title">
								</li>	
								 <li>
                                     <a href="TestContract">
                                     <i class="icon-pencil"></i> 合同录入</a>
                                   </li>
                                   <li>
                                     <a href="TestChakanContract">
                                     <i class="icon-group"></i> 合同查找</a>
                                     </li>
                                     <li>
                                     <a href="ContractPlan">
                                     <i class="icon-calendar"></i> 合同计划
									</a> 
									</li>
									<li>
									<a href="Base">
                                     <i class="icon-info-sign"></i> 基础信息录入
									</a> 
                                </li>
                            		
							</ul>
						</li>
						
						
						
						
						<!-- start: Message Dropdown -->
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle"  href="TestUsers">
								<!-- <i class="icon-envelope"></i>
								<span class="badge red">
								4 </span> -->
								系统管理
							</a>
							<ul class="dropdown-menu messages">
								<li class="dropdown-menu-title">
 									<!-- <span>You have 9 messages</span>
									<a href="#refresh"><i class="icon-repeat"></i></a> -->
								</li>	
								 <li>
                                     <a href="TestUsers">
                                     <i class="icon-user"></i> 用户管理
									</a> 
                                </li>
                                
                                 <li id="perm" style="display: none;">
                                     <a href="TestPerm">
                                     <i class="icon-sitemap"></i> 权限管理
									</a> 
                                </li>
                            		
							</ul>
						</li>
						
						<!-- start: User Dropdown -->
						<li class="dropdown">
							<a class="btn dropdown-toggle" id="user1" name="user1"  href="#">
								<i class="halflings-icon white user"></i> 
								<span class="caret" ></span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-title">
 									<span>帐户设置</span>
								</li>
<!-- 								<li><a href="#"><i class="halflings-icon user"></i> 用户信息</a></li> -->
								<li><a href="#" onclick="logout()"><i class="halflings-icon off"></i> 注销</a></li>
								
							</ul>
						</li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->
				
				
				
				<div class="nav-no-collapse header-nav"  style="display: none">
					<ul class="nav pull-right">
						
					<li class="dropdown hidden-phone">
					<a class="btn dropdown-toggle"  href="ReturnIndex">
								首页
							</a>
					</li>
					<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle"  href="AllListServlet">
								设备管理
							</a>
							<ul class="dropdown-menu notifications">
								<li class="dropdown-menu-title">
 								</li>	
 							
                            	<li>
                                     <a href="AddTestServletR">
										<!--<span class="icon blue"><i class="icon-user"></i></span>-->
										
										<i class="halflings-icon book"></i> 设备录入
										
										<!-- <span class="time">1 min</span>  -->
                                    </a> 
                                </li>
                              <li>
                                     <a href="AllListServlet">
                                     <i class="halflings-icon search"></i> 设备查询
										
									</a> 
                                </li>
                                <li>
                                     <a href="AllListServlet2">
                                      <i class="halflings-icon edit"></i> 设备修改
										
									</a> 
                                </li>
                            
							</ul>
						</li>
						
						
						
						
						<!-- start: Notifications Dropdown -->
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle"  href="#">
								<!-- <i class="icon-calendar"></i>
								 <span class="badge red">
								 </span> -->
							运维管理</a>
							<ul class="dropdown-menu tasks">
								<li class="dropdown-menu-title">
 								</li>
								<li>
                                     <a href="AllListServlet4?sdate=<%=today %>&edate=<%=tomorrow%>">
										<!--<span class="icon blue"><i class="icon-user"></i></span>-->
										<i class="icon-user-md"></i> 日常运维
										<!-- <span class="message1">维护日志</span> -->
										<!-- <span class="time">1 min</span>  -->
                                    </a> 
                                </li>
                                   	<li>
                                     <a href="secpos">
									
										<i class="icon-signal"></i> 安全态势
										
                                    </a> 
                                </li>
                
                               
							</ul>
						</li>
			
						
						<li id="contract-management-TestHeader" class="dropdown hidden-phone" style="display: none">
							<a class="btn dropdown-toggle"  href="TestChakanContract">
								合同管理
							</a>
							<ul class="dropdown-menu messages">
								<li class="dropdown-menu-title">
								</li>	
								 <li>
                                     <a href="TestContract">
                                     <i class="icon-pencil"></i> 合同录入</a>
                                   </li>
                                   <li>
                                     <a href="TestChakanContract">
                                     <i class="icon-group"></i> 合同查找</a>
                                     </li>
                                     <li>
                                     <a href="ContractPlan">
                                     <i class="icon-calendar"></i> 合同计划
									</a> 
									</li>
									<li>
									<a href="Base">
                                     <i class="icon-info-sign"></i> 基础信息录入
									</a> 
                                </li>
                            		
							</ul>
						</li>
						
						
						
						
						<!-- start: Message Dropdown -->
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle"  href="TestUsers.jsp">
								<!-- <i class="icon-envelope"></i>
								<span class="badge red">
								4 </span> -->
								系统管理
							</a>
							<ul class="dropdown-menu messages">
								<li class="dropdown-menu-title">
 									<!-- <span>You have 9 messages</span>
									<a href="#refresh"><i class="icon-repeat"></i></a> -->
								</li>
								 <li>
                                     <a href="TestUsers.jsp">
                                     <i class="icon-user"></i> 用户管理
									</a> 
                                </li>
							</ul>
						</li>
						
						<!-- start: User Dropdown -->
						<li class="dropdown">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white user"></i> 
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-title">
 									<span>帐户设置</span>
								</li>
<!-- 								<li><a href="#"><i class="halflings-icon user"></i> 用户信息</a></li> -->
								<li><a href="#" onclick="logout()"><i class="halflings-icon off"></i> 注销</a></li>
								
							</ul>
						</li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- start: Header -->
	
	
	<!-- start: Header 2-->
	
	
		
	
	

	

