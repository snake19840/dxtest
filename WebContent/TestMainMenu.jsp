<%@page import="com.clas.DataSets"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
@media (min-width: 1200px){
#sidebar-left {
min-width:110px;
}
#content{

}
}


@media only screen and (max-width: 1199px) and (min-width: 980px){
#sidebar-left {
display:none;
}
#content{
width:100%;
margin-left: 0% !important;
}

}

/* @media (max-width: 979px) and (min-width: 768px){ */
/* .row-fluid .span9{ */
/* with:auto !important; */
/* } */
/* } */


@media only screen and (max-width: 979px) and (min-width: 768px){
#sidebar-left {
display:none;
}
#content{
width:100%;
margin-left: 0% !important;
}
.row-fluid .span9{
with:100%;
}
}


@media (max-width: 979px) and (min-width: 768px){
.row-fluid .span9{
width:100% ;
padding-right:4%;
}}




</style>

<!-- start: Main Menu -->
			<div id="sidebar-left" class="span2">
				<%
					     String today1=DataSets.nowdate();
						String tomorrow1=DataSets.tomorrow();
						%>
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href="ReturnIndex"><i class="icon-home"></i><span class="hidden-tablet"> 首页</span></a></li>	
						
						<li><a href="AllListServlet"><i class="icon-sitemap"></i><span class="hidden-tablet"> 设备管理</span></a></li>
						<li><a  href="AllListServlet4?sdate=<%=today %>&edate=<%=tomorrow%>"><i class="icon-reorder"></i><span class="hidden-tablet"> 运维管理</span></a></li>
						<li><a  href="TestUsers.jsp"><i class="icon-cogs"></i><span class="hidden-tablet"> 系统管理</span></a></li>
						<li><a href="LogoutServlet" ><i class="icon-lock"></i><span class="hidden-tablet"> 登陆页面</span></a></li>
					</ul>
				</div>
			</div>
			

			<!-- end: Main Menu -->