<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>用户登录</title>
	</head>
	<body>
		<div style="width: 600; margin: 40px auto; line-height:40px;">
			<h3>用户登录</h3>
		</div>
		<form action="LoginCheck.jsp" method="post">
			用户名：<input type="text" name="username">
			<br>
			密&emsp;码：<input type="password" name="password">
			<br>
			<input type="submit" value="提交" />
		</form>
	</body>
</html>