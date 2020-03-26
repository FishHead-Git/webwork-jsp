<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>输入个人信息</title>
	</head>
	<body>
		<div style="width:800px;margin: 10px auto; line-height:30px;">
			<h3>本浏览器已有该网站的Cookie列表：</h3>
			<%
				Cookie[] cookic = request.getCookies();
				String username = "";
				String sex = "";
				String sex_male = "";
				String sex_female = "";
				for(Cookie obj: cookic){
					out.print(obj.getName()+" = "+URLDecoder.decode(obj.getValue(), "utf-8")+"<br>");
					if("username".equals(obj.getName())){
						username = URLDecoder.decode(obj.getValue(), "utf-8");
					}
					if("sex".equals(obj.getName())){
						sex = URLDecoder.decode(obj.getValue(), "utf-8");
						if("先生".equals(sex))
							sex_male="checked='true'";
						else if("女士".equals(sex))
							sex_female="checked='true'";
						else
							sex = "(无性别)";
						
					}
				}
				
			%>
			<hr>
			<h3>欢迎参加网上调查，请先输入个人信息：</h3>
			<form action="newSelect.jsp" method="post">
				昵称：<input type="text" name="username" value="<%=username %>">&emsp;&emsp;
				性别：<input type="radio" name="sex" value="女士" <%=sex_female %>>女士
				<input type="radio" name="sex" value="先生" <%=sex_male %>> 先生
				&emsp;&emsp;
				<input type="submit" value="提交">
			</form>
			<br>
			<a href="newSelect.jsp">选择新闻栏目</a>
			&emsp;&emsp;&emsp;
			<a href="newSelectShow.jsp">查看调查结果</a>
			<br>
			session默认在20分钟内有效，也可设置有效期。浏览器关闭则失效。保存在服务器内存中。
			<br>
			cookie通常需设定有效期。保存在本地浏览器的临时文件夹中。
		</div>
	</body>
</html>