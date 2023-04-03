<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="MultiCookieExample2.jsp">Multi Cookie Example1</a>
<%
Cookie uid= new Cookie("uid", "abc123");
uid.setMaxAge(2000);
response.addCookie(uid);
Cookie cpass= new Cookie("cpass", "12345");
cpass.setMaxAge(2000);
response.addCookie(cpass);
%>
</body>
</html>