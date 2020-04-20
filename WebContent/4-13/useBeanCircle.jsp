<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="cir1" class="webworks.Circle">
<jsp:useBean id="cir2" class="webworks.Circle2">
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>circle</title>
	</head>
	<body>
		<jsp:setProperty name="cir1" property="radius" value="<%=100.0 %>"/> 
		<p>Circle的半径是<%=cir1.getRadius() %></p>
		<br>
		<jsp:setProperty name="cir2" property="radius" value="<%=100 %>"/>
		<p>Circle2的半径是<%=cir2.getRadius() %></p>
		<br>
		<jsp:setProperty name="cir2" property="c" value="<%=100 %>"/>
		<p>Circle2的周长是<%=cir2.getC() %></p>
		<br>
		<%-- <jsp:setProperty name="cir2" property="area" value="<%=100 %>"/> --%>
		<p>Circle2的面积是<%=cir2.getArea() %></p>
		<br>
	</body>
</html>
</jsp:useBean>
</jsp:useBean>