<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
		<title>猜数1</title>
	</head>
	<body>
		<div style="width:600px margin:40px auto; line-height:40px;">
			<h3>&emsp;&emsp;猜数1</h3>
			
			<jsp:useBean id="guess" class="webworks.GuessNumber" scope="session" />
			
			<jsp:setProperty property="answerRand" name="guess" value="0" />
			
			<form method="post" action="guess.jsp">
				系统随机产生一个2~20之间的整数，你猜猜这个数会是多少？
				<br>
				请输入你要猜的数：
				<input type="text" name="numberMineInput" />
				<input type="submit" value="提交" />
			</form>
		</div>
	</body>
</html>