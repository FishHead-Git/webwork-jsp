<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP页面</title>
		<%!
			boolean isYear(int years){
				if(years % 4 == 0){
					if(years % 100 != 0){
						return true;
					}else if(years % 400 == 0){
						return true;
					}
				}
				return false;
			}
		%>
	</head>
	<body>
		<form action="" method="post">
			<span>输入年份：</span>
			<input type="text" placeholder="Year" name="years">
			<br />
			<input type="submit" value="submit">
		</form>
		<%
			String y = request.getParameter("years");
			if(y == null){
				out.print("");
			}else{
				y = y.replaceAll("[^0-9]+", "");
				out.print(y+(isYear(Integer.parseInt(y))?" 是":" 不是")+"闰年");
			}
		%>
	</body>
</html>