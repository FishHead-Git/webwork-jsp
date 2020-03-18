<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>time</title>
	</head>
	<body>
		<p>
			<%
				out.print("现在的时间："+new Date().toString());
			%>
		</p>
	</body>
</html>