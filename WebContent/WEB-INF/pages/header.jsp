<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<header class="common-header J_commonHeaderWrapper scrolling"
	data-stat-module="dingbudaohang">
	<div class="container">
		<div class="pc-nav">
			<a class="logo" href="${baseUrl}"> <img
				src="//sta.36krcnd.com/common-module/common-header/images/logo-a6afc.png"
				alt="36氪">
			</a>
			<div class="triggers">
			</div>
			<nav>
				<ul class="J_navList">
					<li name="mainindex"><a href="${baseUrl}"
						data-stat-click="shouye">首页</a></li>
					<li name="index" class="active"><a href="${baseUrl}"
						data-stat-click="shouye">首页</a></li>
				</ul>
			</nav>
		</div>
		<div class="right-col J_rightNavWrapper">
			<ul class="sub-nav">
				<li class="report-btn mobile-hide" ">
				<a href="javascript:void(0)">抓取今日新闻 </a>
				</li>
					
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
					<div class="menu-wrap pop-up">
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