<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="lader" class="webworks.Lader" scope="page">
	<jsp:setProperty name="lader" property="above" value="400"/>
	<jsp:setProperty name="lader" property="bottom" value="2400"/>
</jsp:useBean>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>usebean</title>
	</head>
	<body>
		bean中设置：
		<br>
		<p>梯形的上底是：<%=lader.getAbove() %></p>
		<p>梯形的下底是：<%=lader.getBottom() %></p>
		<p>梯形的面积是：<%=lader.getArea() %></p>
		<br>
		对象设置：
		<br>
		<%
			lader.setAbove(300);
			lader.setBottom(2300);
		%>
		<p>梯形的上底是：<%=lader.getAbove() %></p>
		<p>梯形的下底是：<%=lader.getBottom() %></p>
		<p>梯形的面积是：<%=lader.getArea() %></p>
	</body>
</html>