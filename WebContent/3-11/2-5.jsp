<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- 以下是标题1 -->
		<H1> 大家要注意了，成员变量是大家共享的 </H1>
		<%-- 下面是变量和方法的声明，利用共享的sum和n计算连续和 --%>
		<%!  long sum=0,n=1;
			void computer(){
			   sum=sum+n;
			   n=n+1;
			}
		%>
		<%-- 下面是程序片，调用方法得到结果 --%>
		<%  
			computer();
			out.println("当前连续和是："+sum);  
		%>
		
	</body>
</html>