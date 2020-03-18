<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>日期时候</title>
	</head>
	<body>
		<h3>当前日期时间</h3>
		<div>
			<%
				Date date = new Date();					// 当前时间
				out.println("时间1：" + date);				// 输出到网页
				System.out.println("时间1c：" + date);		//输出到控制台
								
			%>
			<br />
			时间2：<% out.println(date); %>
			<br />
			时间3： <%=date %>
			<%
				SimpleDateFormat sdf4 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //日期时间
				String date4 = sdf4.format(date);
				
				SimpleDateFormat sdf5 = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss:SSS, 位于今年第w周，本月第W周，本周E"); //日期时间
				String date5 = sdf5.format(date);
				
			%>
			<br />
			时间4：<% out.println(date4); %>
			<br />
			时间5： <%=date5 %>
			
			<!-- <br />时间5： <%=date %>这是显示注释，在网页的源代码中会显示出来 -->
			
			<%-- <br />时间5： <%=date %>这是隐匿注释，不会发送到网页 --%>
			
			<%
				// out.print("时间8："+ date);  这是隐匿单行注释，这等代码不会运行
				/*
					out.println("时间9："+ date); 这是隐匿多行注释，这2行代码都不会运行
					out.println("时间10："+ date);
				*/
			
			%>
			
			<%!
				String divisor(int n){
					String s="";
					for(int i=1;i<=n;i++){
						if(n%i==0){
							s+=i+",";
						}
					}
					return s;
				}
			%>
			
			<br>
			<br>
			8的除数有<%=divisor(8) %>而666的除数有<%= divisor(666) %>
		</div>
		
	</body>
</html>