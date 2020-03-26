<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>demo2</title>
	</head>
	<body>
		<%
		    String refName = (String)session.getAttribute("name");
		    Date refDate = (Date)session.getAttribute("date");
		%>
		<h1>姓名：<%=refName %></h1>
		<h1>日期：<%=refDate %></h1>
		<%--使用超链接这种客户端跳转--%>
		<h1><a href="demo3.jsp">demo3</a></h1>
		
	</body>
</html>