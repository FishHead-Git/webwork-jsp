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
				msg = "请将注册信息填写完整";
			}else{
				if((int)(Math.random()*10) % 2 == 0)
					response.sendRedirect("regShow.jsp");
				else
					request.getRequestDispatcher("regShow.jsp").forward(request, response);
			}
		%>
		<center>
			<div style="width: 600; margin: 40px auto; line-height:40px;">
				<h3>注册验证</h3>
				<p><%=msg %></p>
				用户名：<%=(username != null?username:"") %>
				<br>
				QQ号：<%=(qq != null?qq:"") %>
				<br>
				手机号：<%=(phone != null?phone:"") %>
				<br>
				<a href="index.jsp" >用户注册</a>
			</div>
		</center>
	</body>
</html>