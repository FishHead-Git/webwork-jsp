<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>注册验证</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String username = request.getParameter("username");
			String qq = request.getParameter("qq");
			String phone = request.getParameter("phone");
			
			String msg = "";
			if(username == null || qq == null || phone == null||
				"".equals(username)||"".equals(qq)||"".equals(phone)){
				
				msg = "QQ号长度至少为3位";
			}else{
				msg = "恭喜，用户注册成功";
			}
		%>
		<center>
			<div style="width: 600; margin: 40px auto; line-height:40px;">
				<h3>注册验证</h3>
				<p><%=msg %></p>
				用户名：<%=username %>
				<br>
				QQ号：<%=qq %>
				<br>
				手机号：<%=phone %>
				<br>
				<a href="index.jsp" >用户注册</a>
			</div>
		</center>
	</body>
</html>