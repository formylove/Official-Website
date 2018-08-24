<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="zh-CN" class="">
<head>
</head>
<body>
	<c:forEach var="a" items="${short}" varStatus="st">
		<li class="real_time_wrapper"><span class="triangle"></span>
			<div class="con">
				<h4>
					<!-- react-text: 706 -->
					<!-- /react-text -->
					<span class="title"
						data-stat-click="kuaixunmokuai.kuaixunbiaoti.1.133052">${a.title}</span>
				</h4>
				<div class="item0 hide show-content">
					<!-- react-text: 709 -->
					${a.summary}
					<!-- /react-text -->
				</div>
				<div>
					<span class="time" title=" "> </span>
				</div>
			</div></li>
	</c:forEach>
</body>
</html>