<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h>page 2</h><br>
<a href="SessionExample3.jsp">page3 </a><br>
<%
if(session.getAttribute("uid")!=null){
	String s=session.getAttribute("uid").toString();
     out.println(s);
}


else{
	out.println("sesion is removed");
	}
%>
</body>
</html>