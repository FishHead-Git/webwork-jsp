<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>2-1作业</title>
	</head>
	<body>
		<%!  
		      Date date;                   	        //数据声明
		      int sum;
		      public int add(int m,int n) {              //方法声明 
		           return m+n;
		      }
		%>
		<font size=4>
			<p>程序片创建Date对象：
				<%  date=new Date();        	    //Java程序片 
					out.println("<BR>"+date);
					sum=add(12,34);
				%>
				<br>
					在下一行输出和:
				<br>
				<%= sum+100 %>                      <!-- Java表达式 --> 
			</p>
		</font>
		
	</body>
</html>