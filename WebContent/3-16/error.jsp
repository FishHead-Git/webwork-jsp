<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>错误页</title>
	</head>
	<body>
		<h1><%=response.getStatus() %></h1>
		<span>程序出现了错误</span>
	</body>
</html>