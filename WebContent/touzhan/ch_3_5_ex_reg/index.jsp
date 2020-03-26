<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>用户注册</title>
	</head>
	<body>
		<center>
			<div style="width: 600; margin: 40px auto; line-height:40px;">
				<h3>用户注册</h3>
				<form action="regCheck.jsp" method="post">
					用户名：<input type="text" name="username">
					<br>
					QQ号：<input type="text" name="qq">
					<br>
					手机号：<input type="text" name="phone">
					<br>
					<input type="submit" value="提交" />
				</form>
			</div>
		</center>
	</body>
</html>