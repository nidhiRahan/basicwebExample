<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script>
function searchdata(a)
{
	var xmlhttp=new XMLHttpRequest();
xmlhttp.onreadystatechange=function( )
{
	if(a!=""){
		document.getElementById("res").innerHTML=xmlhttp.responseText;
}
	else{
		document.getElementById("res").innerHTML="";
	}
	
}
xmlhttp.open("POST","SearchExAjaxResult.jsp?q="+a,true);
xmlhttp.send();
	
	}
</script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<input type="text" placeholder="enter data to search record" onkeyup="searchdata(this.value)"><br>
<div id="res">

</div>
</body>
</html>