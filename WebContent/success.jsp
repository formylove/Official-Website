<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Players List</title>
</head>
<body>
<ul>
<c:forEach items="${players}" var="p">
<li>
${p.name} 达到  ${p.level}级
</li>
</c:forEach>
</ul>
</body>
</html>