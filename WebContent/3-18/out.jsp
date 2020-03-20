<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>out.jsp</title>
	</head>
	<body>
		<%
			out.print("欢迎来到JSP，out对象<br>");
			out.write("欢迎来到JSP，out对象");
		%>
	</body>
</html>