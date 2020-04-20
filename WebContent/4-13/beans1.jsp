<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="lader" class="webworks.Lader" scope="session" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>bean1</title>
	</head>
	<body>
		<p>梯形的上底是：<%=lader.getAbove() %></p>
		<p>梯形的下底是：<%=lader.getBottom() %></p>
		<p>梯形的面积是：<%=lader.getArea() %></p>
		<a href="beans2.jsp">链接到beans2.jsp</a>
	</body>
</html>