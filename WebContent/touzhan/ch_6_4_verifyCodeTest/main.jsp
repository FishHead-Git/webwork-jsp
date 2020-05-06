<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>用户功能</title>
	</head>
	<body>
		<div style="width:800px; margin:30px auto; line-height:30px;">
			<%
				if(session.getAttribute("username") == null){
					response.sendRedirect("index.jsp");
					return;
				}
			
				String username = session.getAttribute("username").toString();
			%>
			<h3>&emsp;&emsp;&emsp;&emsp;用户登录</h3>
			用户【<%=username %>】登录成功！
			<br><br>&emsp;&emsp;&emsp;&emsp;
			<a href="<%=request.getContextPath() %>/Logout">注销登录</a>
			
		</div>
	</body>
</html>