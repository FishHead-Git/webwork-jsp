<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>getDate</title>
	</head>
	<body>
		<%
			String name = request.getParameter("name");
			Date d = new Date();
		%>
		<p>欢迎<%=name %>在<%=d.toString() %>光临这里！</p>
		
	</body>
</html>