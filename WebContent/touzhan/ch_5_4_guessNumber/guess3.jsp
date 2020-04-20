<%@page import="webworks.GuessNumber"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>结论3</title>
	</head>
	<body>
		<div style="width:600px margin:40px auto; line-height:40px;">
			<h3>&emsp;&emsp;结论3</h3>
			
			<%-- <jsp:useBean id="guess" class="webworks.GuessNumber" scope="session" />
			
			<jsp:setProperty property="numberMine" name="guess" param="numberMineInput" /> --%>
			<%
				String numberMineInput = request.getParameter("numberMineInput");
				int numberMine = 0;
				
				try{
					numberMine = Integer.parseInt(numberMineInput);
				} catch (Exception e){
					String msg;
					msg = "输入有误！请输入一个2~20之间"
						+ "&emsp;<a href='javascript:window.history.back();'>后退</a>";
					out.print(msg);
					return;
				}
				
				GuessNumber guess = (GuessNumber) session.getAttribute("guess");
				
				if(guess == null){
					response.sendRedirect("index3.jsp");
					return;
				}
				
				guess.setNumberMine(numberMine);
				
				int countGuess = guess.getCountGuess();
				String resultShow = guess.getResultShow();
				Boolean resultBool = guess.isResultBool();
			%>
			
			<form method="post" action="guess2.jsp">
				这是你第
				<span style="color:red;">
					<%=countGuess %>
				</span>
				次猜，你给出的数是：
				<span style="color:red;">
					<%=numberMine %>
				</span>
				<br>
				结论:
				<span style="color:red;">
					<%=resultShow %>
				</span>
				<%
					if(!guess.isResultBool()){
				%>
				
				<br>
				请再猜：
				<input type="text" name="numberMineInput" />
				<input type="submit" value="提交" />
				(2~20之间的整数)
				<%
					}
				%>
				<br>
				<br>&emsp;
				<a href="index.jsp">猜数1</a>&emsp;
				<a href="index2.jsp">猜数2</a>&emsp;
				<a href="index3.jsp">猜数3</a>
			</form>
		</div>
	</body>
</html>