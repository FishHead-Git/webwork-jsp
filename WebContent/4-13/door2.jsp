<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="lader" class="webworks.Lader" scope="application"></jsp:useBean>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>door1</title>
	</head>
	<body>
		<p>梯形的上底是：<%=lader.getAbove() %></p>
		<p>梯形的下底是：<%=lader.getBottom() %></p>
		<p>梯形的面积是：<%=lader.getArea() %></p>
	</body>
</html>