<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			String username = request.getParameter("username");
			String qq = request.getParameter("qq");
			String phone = request.getParameter("phone");
			
		%>
		<div style="width: 600; margin: 40px auto; line-height:40px;">
			<h3>注册验证</h3>
			<br>
			用户名：<%=(username != null?username:"") %>
			<br>
			QQ号：<%=(qq != null?qq:"") %>
			<br>
			手机号：<%=(phone != null?phone:"") %>
			<br>
			<a href="index.jsp" ></a>
		</div>
	</body>
</html>