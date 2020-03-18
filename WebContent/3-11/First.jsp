<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP页面测试</title>
	</head>
	<body>
		<%
			int x=100, y=500, z=x+y;
		%>
		<p>x+y的和为：<%=z %></p>
	</body>
</html>