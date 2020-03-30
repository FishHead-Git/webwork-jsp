<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>logout</title>
	</head>
	<body>
		<%
			session.removeAttribute("usernamesex");
			session.invalidate();
		%>
		<h1>您已成功退出个人登录</h1>
		<a href="index.jsp">输入用户信息</a>
		<a href="newSelect.jsp">选择新闻栏目</a>
		<a href="newSelectShow.jsp">查看调查结果</a>
	</body>
</html>