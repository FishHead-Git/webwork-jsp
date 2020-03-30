<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>调查结果</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String us = (String) session.getAttribute("usernamesex");
			if( us == null){
				response.sendRedirect("index.jsp");
			}else{
				out.print("["+us+"],欢迎参与调查");
			}
			String[] list = request.getParameterValues("news");
			if(list == null){
				list = (String[]) session.getAttribute("list");
			}
			if(list == null){
				list = new String[]{"没有选择"};
			}
			session.setAttribute("list", list);
		%>
		<a href="logout.jsp">(退出个人登录)</a>
		<br>
		<h3>请选择你感兴趣的叛逆栏目：</h3>
		<%
			for(String s: list){
				out.print(s+"<br>");
			}
			if(request.getParameter("submit") != null)
				if(session.getAttribute("count") == null){
					session.setAttribute("count", 1);
				}else{
					session.setAttribute("count", (Integer)(session.getAttribute("count"))+1);
				}
			out.print("您这是第["+session.getAttribute("count")+"]轮选择。");
		%>
		
		<a href="index.jsp">输入用户信息</a>
		<a href="newSelect.jsp">选择新闻栏目</a>
	</body>
</html>