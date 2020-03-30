<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<div style="width:800px;margin: 10px auto; line-height:30px;">
			<%
				request.setCharacterEncoding("utf-8");
				String username = request.getParameter("username");
				String sex = request.getParameter("sex");
				String usernamesex = (String) session.getAttribute("usernamesex");
				
				if(username == null && usernamesex == null){
					response.sendRedirect("index.jsp");
				}
				if(username != null){
					if(username.trim().equals("")){
						out.println("请输入用户名__ <a href=\"index.jsp\">后退</a>");
					}
					
					if(sex.trim().equals("")){
						out.println("请输入性别__ <a href=\"index.jsp\">后退</a>");
					}
					
					session.setAttribute("usernamesex", username+sex);
					Cookie user_c = new Cookie("username", URLEncoder.encode(username,"UTF-8"));
					user_c.setMaxAge(60*30);
					Cookie sex_c = new Cookie("sex", URLEncoder.encode(sex,"UTF-8"));
					sex_c.setMaxAge(60*30);
					response.addCookie(user_c);
					response.addCookie(sex_c);
				}
				out.print("["+session.getAttribute("usernamesex")+"], 欢迎参与调查   ");
			%>
			<a href="logout.jsp">(退出个人登录)</a>
			<br>
			<h3>请选择你感兴趣的叛逆栏目：</h3>
			<form action="newSelectShow.jsp" method="post">
				<%
					String[] stit = new String[]{"国际时事", "国内时事", "体育新闻", "娱乐新闻", "财经新闻"};
					for(String tit:stit){
						%>
							<input type="checkbox" name="news" value="<%=tit %>"><%=tit %><br>
						<%
					}
				%>
				<input type="submit" name="submit" value="提交">
			</form>
			<a href="index.jsp">输入用户信息</a>
			<a href="newSelectShow.jsp">查看调查结果</a>
		</div>
	</body>
</html>