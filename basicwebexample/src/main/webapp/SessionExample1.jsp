<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> page1</h1><br>
<a href="SessonExample2.jsp"> page2</a><br>
<%
session.setAttribute("uid",1000);

%>
</body>
</html>