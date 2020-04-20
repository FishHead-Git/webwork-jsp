<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="wangxiaolin" class="webworks.Student" />
<jsp:useBean id="li" class="webworks.Student" />
<jsp:setProperty name="wangxiaolin" property="name" value="王小林" />
<jsp:setProperty name="li" property="name" value="李四" />
<jsp:setProperty name="wangxiaolin" property="number" value="2007001" />
<jsp:setProperty name="li" property="number" value="2007002" />
<jsp:setProperty name="wangxiaolin" property="height" value="<%=1.78 %>" />
<jsp:setProperty name="li" property="height" value="<%=1.66 %>" />
<jsp:setProperty name="wangxiaolin" property="weight" value="77.87" />
<jsp:setProperty name="li" property="weight" value="62.65" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>student</title>
	</head>
	<body>
		<table border=1>
			<tr>
				<th>姓名</th>
				<th>学号</th>
				<th>身高</th>
				<th>体重(公斤)</th>
			</tr>
			<tr>
				<td><jsp:getProperty property="name" name="wangxiaolin"/></td>
				<td><jsp:getProperty property="number" name="wangxiaolin"/></td>
				<td><jsp:getProperty property="height" name="wangxiaolin"/></td>
				<td><jsp:getProperty property="weight" name="wangxiaolin"/></td>
			</tr>
			<tr>
				<td><jsp:getProperty property="name" name="li"/></td>
				<td><jsp:getProperty property="number" name="li"/></td>
				<td><jsp:getProperty property="height" name="li"/></td>
				<td><jsp:getProperty property="weight" name="li"/></td>
			</tr>
		</table>
	</body>
</html>