<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>登录验证</title>
	</head>
	<body>
		<div style="width: 600; margin: 50px auto; line-height:50px;">
			<h3>登录验证</h3>
			<br>
			<%
				request.setCharacterEncoding("utf-8");
				String msg = "";
				
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				
				if(username == null || password == null){
					msg = "输入有误";
				}else if(!("张三".equals(username)&&"1".equals(password))&&!("tom".equals(username)&&"1".equals(password))){
					msg = "用户名或密码错误";
				}else{
					msg = "登录成功";
					msg = URLEncoder.encode(msg, "utf-8");
					String url = "main.jsp?msg=" + msg;
					
					if("tom".equals(username)){
						response.sendRedirect(url);
					}
					
					if("张三".equals(username)){
						request.getRequestDispatcher(url).forward(request, response);
					}
				}
				
				
				if(msg != "")
					out.print(msg);
			%>
			<br>
			用户名：<%=username %>
			<br>
			密&emsp;码：<%=password %>
		</div>
	</body>
</html>