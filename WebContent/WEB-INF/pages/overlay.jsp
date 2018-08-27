<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<div class="header-pop-message J_sendPostWin">
	<div class="message-body">
		<div class="text">
			<img alt="loading" src="${baseUrl}img/loading.gif">
		</div>
		<div>
	<center><b style='text-align:center;'>正在努力抓取，请稍后</b></center>
		</div>
	</div>
</div>
<div class="header-pop-message J_contactUsWin">
	<div class="message-body">
	<center><h5>快捷键 Ctrl + Q</h5></center>
	<center><h5>调出往日资讯</h5></center>
			
			
	<c:forEach var="date" items="${all_date}">
		<div class="text">
			<b>
			<a href='${baseUrl}${date}'>
			2018年
			<c:if test="${fn:startsWith(date,'0')}">
			${fn:substring(date,1,2)}
			</c:if>
			<c:if test="${!fn:startsWith(date,'0')}">
			${fn:substring(date,0,2)}
			</c:if>
			月
			<c:if test="${fn:substring(date,3,4)=='0'}">
			${fn:substring(date,3,4)}
			</c:if>
			<c:if test="${fn:substring(date,3,4)!='0'}">
			${fn:substring(date,2,4)}
			</c:if>
			日
			</a>
			</b>
		</div>
		</c:forEach>
		<a href="javascript:void(0)" class="close-win-btn">我知道了</a>
	</div>
</div>