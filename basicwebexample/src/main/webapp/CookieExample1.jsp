<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="CookieExample2.jsp"> cookieExample2</a>
<%
Cookie ref=new Cookie("key","abc123");
ref.setMaxAge(2000);
response.addCookie(ref);
%>
</body>
</html>