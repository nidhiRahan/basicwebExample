<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action ="UploadSer" method="post" enctype="multipart/form-data">
<input type="file" name="file">
<br>
<input type="submit" name="submit" value="upload">
</form>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","nidhi@123");
Statement st=con.createStatement();
ResultSet x=st.executeQuery("select * from imgupload");
while(x.next()){
	%>
 	<img src="<%= "Upload/"+x.getString(1) %>"width="100px" height="100px">

<%
}
%>
<a href="DeleteFileUpload.jsp">delete upload file</a>
</body>
</html>