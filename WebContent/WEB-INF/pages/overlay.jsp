<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<style>
#email:hover{
color:blue;

}
#email{
color:rgb(61, 70, 77);
}


</style>
<div class="header-pop-message J_contactUsWin">
	<div class="message-body">
		<div class="text">
			<h4>公司电话：</h4>
			<b>025-52401691</b>
		</div>
		<div class="text">
			<h4>官方QQ：</h4>
			<b>
			<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=531653671&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:531653671:51" alt="欢迎垂询" title="欢迎垂询"/></a>
			</b>
		</div>
		<div class="text" id='email'>
			<h4>公司邮箱：</h4>
			<b><a href="mailto:services@sheyangtang.com">services@sheyangtang.com</a></b>
		</div>
		<div class="text">
			<h4>小程序微信</h4>
			<img alt="摄养堂" src="${baseUrl}img/wechatQR.png" style='width:180px'>
		</div>
		<div class="text">
			<h4>公司地址：</h4>
			<b>南京市玄武区珠江路88号1幢3118室</b>
		</div>
		<a href="javascript:void(0)" class="close-win-btn" onclick='closeContactUS()'>我知道了</a>
	</div>
</div>