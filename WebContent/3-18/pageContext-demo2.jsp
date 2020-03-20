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
		    pageContext.setAttribute("name", "sun");  
		    pageContext.setAttribute("date",new Date()); 
		%>
		<%--使用jsp:forward标签进行服务器端跳转--%>
		<jsp:forward page="pageContext-demo3.jsp" />
	</body>
</html>