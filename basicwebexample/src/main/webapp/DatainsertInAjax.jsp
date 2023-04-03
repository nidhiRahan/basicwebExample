<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script>
function addrec(){
	
	var rno=document.getElementById("txtrno").value;
	var name=document.getElementById("txtname").value;
	var branch=document.getElementById("txtbranch").value;
	var fees =document.getElementById("txtfees").value;
	var xmlhttp=new XMLHttpRequest();
	xmlhttp.onreadystatechange=function(){
		document.getElementById("res").innerHTML=xmlhttp.responseText;
	}
	xmlhttp.open("POST", "insertResultAjax.jsp?rno="+rno+" &name="+name+"&branch="+branch+" &fees="+fees,true);
	xmlhttp.send();
	
}
</script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<input type="text" name="rno" placeholder="enter rno" id="txtrno"/><br>
<input type="text" name="name"  placeholder="enter name" id="txtname"/><br>
<input type="text"  name="branch" placeholder="enter branch" id="txtbranch"/><br>
<input type="text" name="fees" placeholder="enter fees" id="txtfees"/><br>
<input type="button" name="submit" value="Insert" onclick="addrec()" /><br>

<div id="res">


</div>
</body>
</html>