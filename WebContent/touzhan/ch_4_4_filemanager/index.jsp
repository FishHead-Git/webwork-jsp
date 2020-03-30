<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>文件对象</title>
  </head>
  
  <body>
	<%					
				//当前项目的物理目录
		String realpath = request.getServletContext().getRealPath("/");
		out.print(realpath + "<br>");
		//realpath += "myfile//";
	%>
    <div style="width:800px; margin:30px auto; line-height:30px;">
		<form action="view.jsp" method="post">
			<h3>子文件/子目录浏览：</h3>
			路径：
			<input type="text" name="folder" value="<%=realpath %>">
			<input type="submit" value="提交">
		</form>
		<br>
		<form action="manage.jsp" method="post">
			<div>
				<h3>文件/目录操作：</h3>
				<label><input type="radio" value="创建目录" 	name="action">创建目录</label>&emsp;&emsp;
				<br>
				<label><input type="radio" value="创建文件" 	name="action">创建文件</label>&emsp;
				<br>
				<label><input type="radio" value="重命名" 	name="action">重命名目录或文件名</label>&emsp;					
				<br>
				<label><input type="radio" value="删除空目录" name="action">删除空目录</label>&emsp;
				<br>
				<label><input type="radio" value="删除文件" 	name="action">删除文件</label>&emsp;
				<br>
				<label><input type="radio" value="删除任意" 	name="action">删除任意目录或文件（包括非空目录）</label>&emsp;
				<br>	
				<label><input type="radio" value="删除任意（用JavaBean）" name="action"
					>删除任意目录或文件（包括非空目录）调用JavaBean</label>&emsp;
				<br><br>
				父路径：
				<input type="text" name="realPath" value="d:\">
			</div>
			<div id="divOld">
				已有子目录名/子文件名：
				<input type="text" name="nameOld" value="aaa">
			</div>
			<div id="divNew">
				新的子目录名/子文件名：
				<input type="text" name="nameNew" value="bbb">
			</div>
			<div>
				&emsp;&emsp;&emsp;&emsp;
				<input type="submit" value="提交">
			</div>
		</form>
	</div>
  </body>
</html>
