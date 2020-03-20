<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>demo3</title>
	</head>
	<body>
		<%
		    //取得demo1.jsp设置的属性
		    String refName = (String)request.getAttribute("name");  
		    Date refDate = (Date)request.getAttribute("date");
		%>
		<h1>姓名：<%=refName%></h1>
		<h1>日期：<%=refDate%></h1>
		<a href="request-demo4.jsp">跳转到demo4</a>
	</body>
</html>