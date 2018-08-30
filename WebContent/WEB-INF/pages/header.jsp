<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<header class="common-header J_commonHeaderWrapper scrolling" >
	<div class="container">
		<div class="pc-nav">
			<a class="logo" href="${baseUrl}"> <img
				src="${baseUrl}img//logo.png"
				alt="摄养堂生物科技有限公司">
			</a>
			<div class="triggers">
			</div>
			<nav>
				<ul class="J_navList">
					<li name="mainindex"><a href="${baseUrl}" >首页</a></li>
					<li name="index" class="${isAboutUs?'':'active'}" style='margin-left:60px;'><a href="${baseUrl}" >首页</a></li>
					<li name="aboutus" class="${isAboutUs?'active':''}" style='margin-left: 120px;'> <a target="_blank" href="${baseUrl}about/" >关于我们</a> </li>
					<li name="contactui"  style='margin-left: 120px;'> <a href="javascript:void(0)" onclick='contactus()' >联系我们</a> </li>
				</ul>
			</nav>
		</div>
		<div class="right-col J_rightNavWrapper">
			<ul class="sub-nav">
					
			<c:if test="${admin == null }">
				<li class="login-actions">
					<div class="login">
						<div class="group">
							<i class="headericon-Icon_SignIn blackhidden"></i> <i
								class="headericon-header-user whitehidden"></i>
								 <a href="${baseUrl}login/" class="J_login login-link" >登录</a>
						</div>
						<b class="whitehidden">/</b>
					</div>
				</li>
			</c:if>
			<c:if test="${admin != null }">
			<li class="user-menu">
			<a href="javascript:void(0);" class="head-avatar" >
			<div class="head-avatar-img" style="background-image: url(${baseUrl}portrait/${admin.portrait}.png)"></div>
				</a>
					<div class="menu-wrap pop-up" style='padding:6px 8px 8px 8px;'>
						<div class="menu">
							<a href="${baseUrl}manage/" target="_blank">后台管理</a> 
							<a href="javascript:void(0)" class="J_logout" >退出</a>
						</div>
					</div>
					</li>
			</c:if>
			</ul>
		</div>
	</div>
</header>