<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h>page3</h><br>
<a href="SessonExample2.jsp">page2</a><br>
<%
session.removeAttribute("uid");
session.invalidate();
%>
</body>
</html>