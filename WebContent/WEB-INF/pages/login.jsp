<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="./static_file.jsp" %>
<link rel="stylesheet" href="${baseUrl}css/login.css">
<title>账号中心</title>
</head>
<body class="">
	<%@ include file="./header.jsp"%>
	<%@ include file="./overlay.jsp" %>
	<div ui-view="" class="ng-scope">
		<div class="index-bg ng-scope"></div>
		<div class="login-index-wrap ng-scope">
			<div class="container">
				<div class="form-wrapper ng-scope"  >
					<form action="${baseUrl}checkin/" method="post"  id="LoginForm"
						class="form common-form ng-pristine ng-scope ng-invalid ng-invalid-required" >
						<legend  class="ng-scope">
							<h2>账号密码登录</h2>
						</legend>
						<!-- end ngIf: !bindType -->
						<div class="error-wrapper icon-circle-with-minus ng-scope " style="display:none;">
							<i></i>
							<div class="error">
								<span class="ng-binding ng-scope" ng-if="remoteError">请输入正确账户名密码</span>
							</div>
						</div>
						<div class="form-group">
							<label class="icon-person"></label> 
							<input type="text" id="kr-shield-username"
								class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required"
								name="username"  placeholder="手机号/邮箱"
								required="">
						</div>

						<div class="form-group">
							<label class="icon-lock"></label> 
							<input type="password" id="kr-shield-password" class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required"
								name="password" placeholder="密码"
								required="">
						</div>
						<button id="kr-shield-submit" type="button" class="btn btn-primary"
							style="margin-top: 50px;">立即登录</button>
					</form>

				</div>
			</div>
		</div>
	</div>


	<%@ include file="./footer.jsp"%>


</body>
</html>