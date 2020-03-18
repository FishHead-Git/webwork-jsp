<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>num2</title>
	</head>
	<body>
		<%
			String str  = request.getParameter("item");
		
			int n=Integer.parseInt(str);
			out.print("<br>不大于"+n+"的奇数：<br>");
			for(int i=1;i<=n;i++){
				if(i%2!=0){
					out.print(","+i);
				}
			}
			
		%>
	</body>
</html>