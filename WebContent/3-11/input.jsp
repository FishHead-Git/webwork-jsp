<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>input</title>
	</head>
	<body>
		<FORM action=""  method=post   name=form>
	    	<P>请输入下列信息：
	    	<BR>输入您的姓名:<Input type="text"  name="name" value="张三"></BR> 
			<BR>选择性别:<Input type="radio"  name="R" value="男" checked="default">男 
			<Input type="radio" name="R" value="女">女 
			</BR>
			<BR>选择您喜欢的歌手: 
			<Input type="checkbox" name="superstar" value="张歌手" >张歌手
			<Input type="checkbox" name="superstar" value="李歌手" >李歌手
	  		<Input type="checkbox" name="superstar" value="刘歌手" >刘歌手
	 		<Input type="checkbox" name="superstar" value="王歌手" >王歌手
			</BR> 
			<Input type="submit" value="提交" name="submit">
		</FORM> 
		<%
			request.setCharacterEncoding("utf-8");
			String name = request.getParameter("name");
			if(name == null){
				out.print("没有提交");
			}else{
				out.print(name+"<br />");
				out.print(request.getParameter("R")+"<br />");
				out.print(Arrays.toString(request.getParameterValues("superstar"))+"<br />");
			}
		%>
	</body>
</html>