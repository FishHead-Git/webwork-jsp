<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>book</title>
	</head>
	<body>
		<FONT size=4>
			<jsp:useBean id="book" class="webworks.Book" scope="request" />
			<BR>书名： <jsp:getProperty  name= "book"  property= "name"  />
			<BR>ISBN是：<jsp:getProperty name= "book"  property= "ISBN" />
			<BR>价钱：  <jsp:getProperty name= "book"  property= "price" />
			<%  
				book.setISBN("7-302-08867-8"); 
			    book.setName("JSP教程");
			    book.setPrice(26.9f);
			%>
			<BR>书名： <jsp:getProperty  name= "book"  property= "name"  />
			<BR>ISBN是：<jsp:getProperty name= "book"  property= "ISBN" />
			<BR>价钱：  <jsp:getProperty name= "book"  property= "price" />
		</FONT>
	</body>
</html>