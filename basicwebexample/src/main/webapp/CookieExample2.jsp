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
try{
	Cookie arr[]=request.getCookies();
	String s="";
	for(int i=0; i<arr.length; i++){
		if(arr[i].getName().equals("key"))
	{
		s=arr[i].getValue();
		
				
	}
}
	out.print("Data is"+s);
	
}
catch(Exception e){
	out.print("Cookie is not set");
}
%>
</body>
</html>