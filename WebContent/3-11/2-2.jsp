<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>2-2作业</title>
	</head>
	<body>
		<%!
			int x,y=100, i=0;
			Date date;
			int add(int x,int y) {
	          return x+y;
	     	}
	   		int sub(int x,int y) {
				return x-y;
			}
	   		class Circle{
	   			double r;
	   			Circle(double r){
	   				this.r = r;
	   			}
	   			double area(){
	   				return Math.PI*r*r;
	   			}
	   		}
	   		
		%>
		<%
			i++;
		%>
		<p>您是第<%=i %>个访问本站的客户</p>
		<% 
			out.println("<BR>调用add方法计算200与123之和：");
	       	int a=add(200,123);
	      	out.println(a);
	       	out.println("<BR>调用sub方法计算200与123之差：");
	       	int b=sub(200,123);
	       	out.println(b); 
		%>
		
		<form action="">
			<input type="number" name="radius">
			<input type="submit">
		</form>
		
		<%
			String radius = request.getParameter("radius");
			double ra;
			if (radius != null){
				ra = Double.parseDouble(radius);
			}else{
				ra = 1;
			}
			Circle circle = new Circle(ra);
		%>
		<p><br>圆的面积是:<%=circle.area() %><br></p>
	</body>
</html>