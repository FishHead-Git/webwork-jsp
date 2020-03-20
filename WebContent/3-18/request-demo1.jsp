<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>demo1</title>
	</head>
	<body>
		<%
		    request.setAttribute("name", "sun");  
		    request.setAttribute("date",new Date()); 
		%>
		<%--使用jsp:forward标签进行服务器端跳转--%>
		<jsp:forward page="request-demo2.jsp" />
	</body>
</html>