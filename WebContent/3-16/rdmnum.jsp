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
			int result = (int)(Math.random()*100) + 1;
			if (result > 50){
		%>
		<jsp:forward page="num1.jsp">
			<jsp:param name="item" value="<%=result %>"/>
		</jsp:forward>
		<%
			}else{
		%>
		<jsp:forward page="num2.jsp">
			<jsp:param name="item" value="<%=result %>"/>
		</jsp:forward>
		<%
			}
		%>
	</body>
</html>