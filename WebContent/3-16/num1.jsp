<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>num1</title>
	</head>
	<body>
		<%
			String str  = request.getParameter("item");
		
			int n=Integer.parseInt(str);
			out.print("<br>不大于"+n+"的素数：<br>");
			for(int i=1;i<=n;i++){
				int j=2;
				for(j=2;j<i;j++){
					if(i%j==0){
						break;
					}
				}
				if(i==j){
					out.print(","+i);
				}
			}
			
		%>
	</body>
</html>