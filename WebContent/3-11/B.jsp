<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>求和</title>
	</head>
		<body>
			<%
				int sum = 0;
				for(int i=1; i<=100; i++){
					sum += i;
				}
			%>
			<p>1 + 2 + 3 + ____ + 99 + 100 =<%=sum %></p>
		</body>
</html>