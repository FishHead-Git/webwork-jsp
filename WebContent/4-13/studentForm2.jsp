<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>studentForm</title>
	</head>
	<body>
		<form action="" method="post">
			<p>输入学生的姓名：<input type="text" name="name"></p>
			<p>输入学生的学号：<input type="text" name="number"></p>
			<p>输入学生的身高：<input type="text" name="height"></p>
			<p>输入学生的体重：<input type="text" name="weight"></p>
			<input type="submit" value="提交">
		</form>
		<jsp:useBean id="wangxiaolin" class="webworks.Student" scope="page" />
		<jsp:setProperty property="name" name="wangxiaolin" param="name"/>
		<jsp:setProperty property="number" name="wangxiaolin" param="number"/>
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
		</table>
	</body>
</html>