<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%try{

Cookie arr[]=request.getCookies();
String s1="";
String p1="";
for(int i=0; i<arr.length; i++){
	if(arr[i].getName().equals("uid")){
		s1=arr[i].getValue();
		}
	if(arr[i].getName().equals("cpass")){
		p1=arr[i].getValue();
	}
}
out.print("username  is :" +s1+ "password is"+p1);
}
catch(Exception e){
	out.print("cookie is not set");
}
%>
</body>
</html>