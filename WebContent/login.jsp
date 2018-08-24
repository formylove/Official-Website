<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
</head>
<body>
<div style="text-align:center;">
<form action="login/l">
<label>用户名</label>
<input type="text" name="name"/>
<br/>
<label>密码</label>
<input type="password" name="password"/>
<br/>
<input type="submit"/>
<br/>
<label>${error}</label>
</form>
</div>
</body>
</html>