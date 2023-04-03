<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
MultipartRequest m=new MultipartRequest(response,getServletContext().getRealPath("/")+"Upload");
try{Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb1","root","nidhi@123");
Statement st=con.createStatement();
int x=st.executeUpdate("delete from users where file='"+request.getParameter("file")+"'");
if(x!=0){
	out.print("delete successful");
	
}}catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>