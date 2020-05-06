<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>用户登录1</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String msg="";
			String value = "";
			String username = "";
			String password = "";
			
			Cookie[] cookies = request.getCookies();
			
			if(cookies != null){
				for(Cookie cookie: cookies){
					if("msg".equals(cookie.getName())){
						value = cookie.getValue();
						msg = URLDecoder.decode(value, "utf-8");
						continue;
					}
					
					if("username".equals(cookie.getName())){
						value = cookie.getValue();
						username = URLDecoder.decode(value, "utf-8");
						continue;
					}
					
					if("password".equals(cookie.getName())){
						value = cookie.getValue();
						password = URLDecoder.decode(value, "utf-8");
						continue;
					}
					
				}
			}
			
		%>
		<div style="width:800px; margin:30px auto; line-height:30px;">
			<h3>&emsp;&emsp;&emsp;&emsp;用户登录1</h3>
		    <form action="<%=request.getContextPath() %>/LoginDoPost" method="post">
		    	用户名：
				<input type="text" name="username" value="<%=username %>" style="width:150px;"/>&emsp;tom
				<br>
				密&emsp;码：
				<input type="password" name="password" style="width:150px;" value="<%=password %>" />&emsp;123
				<br>
				验证码：
				<input type="text" name="numberRand" maxlength="4" style="width:80;" />
				&emsp;
				<img src="<%=request.getContextPath() %>/VerifyCode" id="imgcode" style="vertical-align: middle;border:0px;">
				<a href="#" onclick="codeChange();">刷新</a>
				<br>
				&emsp;&emsp;&emsp;&emsp;
				<input type="submit" value="提交">
				&emsp;
				<span id='msg' style='color:red; font-size:small;'><%=msg %></span>
				<br>
				
				<br>
				&emsp;&emsp;&emsp;&emsp;
				<a href="index.jsp">登录1</a>&emsp;
				<a href="index2.jsp">登录2</a>
			</form>
		</div>
	</body>
	<script>
		function codeChange(){
			var t = (new Date()).getTime();
			document.getElementById('imgcode').src = "<%=request.getContextPath() %>/VerifyCode?t=" + t;
			document.getElementsByName('numberRand')[0].focus();
		}
	</script>
</html>