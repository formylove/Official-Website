<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="baseUrl" value="http://127.0.0.1/36kr/" />
<c:set var="aUrl" value="http://127.0.0.1/36kr/a/" />
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="${baseUrl}css/index.css">
<title>账号中心</title>
<head>
<title>账号中心 | 36氪</title>
<link rel="shortcut icon" href="https://www.36kr.com/favicon.ico">
<link rel="stylesheet"
	href="//sta.36krcnd.com/passport/styles/86f9bbb7.base.css">
<link rel="stylesheet"
	href="//sta.36krcnd.com/common-module/common-footer/footer.css">
</head>
<body class="">

	<link rel="stylesheet" href="//sta.36krcnd.com/common-module/common-header/style-3322e.css">
	<%@ include file="./header.jsp" %>
	<div ui-view="" class="ng-scope">
		<div class="index-bg ng-scope"></div>

		<div class="login-index-wrap ng-scope">
			<div class="container">



				<div class="form-wrapper ng-scope" ui-view="">
					<form action="" method="post" role="form" name="LoginForm"
						class="form common-form ng-pristine ng-scope ng-invalid ng-invalid-required"
						ng-class="{'common-wide-form':!!bindType}"
						ng-submit="submitLoginForm($event)">
						<!-- ngIf: !bindType -->
						<legend ng-if="!bindType" class="ng-scope">
							<h2>账号密码登录</h2>
						</legend>
						<!-- end ngIf: !bindType -->

						<div class="form-group">
							<label class="icon-person"></label> 
							<input type="text" id="kr-shield-username"
								class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required"
								name="username" ng-model="formData.account" placeholder="手机号/邮箱"
								required="">
						</div>

						<div class="form-group">
							<label class="icon-lock"></label> 
							<input type="password" id="kr-shield-password"
								class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required"
								name="password" ng-model="formData.password" placeholder="密码"
								required="">
						</div>
						<!-- ngIf: formData.needCaptcha && !geetestStatus.loginMore -->


						<button id="kr-shield-submit" type="submit"
							ng-click="submitLoginForm($event)" class="btn btn-primary"
							style="margin-top: 50px;">立即登录</button>
					</form>

				</div>
			</div>
		</div>
	</div>


	<%@ include file="./footer.jsp" %>


</body>
</html>