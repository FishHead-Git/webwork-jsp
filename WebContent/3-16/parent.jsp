<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP页面</title>
	</head>
	<body>
		<p>
			<jsp:include page="getDate.jsp" flush="true">
				<jsp:param name="name" value="Tom"/>
			</jsp:include>
			这是是我的个人空间
		</p>
	</body>
</html>