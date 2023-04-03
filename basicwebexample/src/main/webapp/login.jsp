<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="AdminSer" method="post">
<input type="text" name="userid" placeholder="enter user Id "><br><br>
<input type="text" name="userpass" placeholder="enter password "><br><br>
<input type="submit" name="submit" value="submit "><br><br>
</form>
<%
if(request.getParameter("q")!=null){
out.print(request.getParameter("q"));
}
%>
</body>
</html>