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
		    //此时设置的属性只能够在与本页相关的任何页面中取得
		    session.setAttribute("name", "sun");  //设置属性
		    session.setAttribute("date",new Date());
		%>
		<%--这里使用服务器端跳转--%>
		<jsp:forward page="demo2.jsp"/>
		
	</body>
</html>