<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>2-3作业</title>
		<%! 
			int i = 0;
			int continueSum(int n) {
				int sum=0;
				for(int i=1;i<=n;i++){
				   sum=sum+i;
				}
				return sum;
			}
		%>
	</head>
	<body>	
		<P> 1～100的连续和：<BR>
		<%
			long sum;
			sum=continueSum(100);
			out.print(sum);
		%>
		
		<br>
		<%
			i++;
		%>
		<p>您是第<%=i %>个访问本站的客户</p>
		<br>
		<%
			int k = 0;
			k++;
		%>
		<p>您是第<%=k %>个访问本站的客户</p>
	</body>
</html>