<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%
String s=request.getParameter("q");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb1","root","nidhi@123");
Statement st=con.createStatement();
int res=st.executeUpdate("insert into student1(rno,name,branch,fees) values('"+request.getParameter("rno")+"','"+request.getParameter("name")+"','"+request.getParameter("branch")+"','"+request.getParameter("fees")+"')");
if(res!=0){
	out.print("Data insert");
	
}
else{
	out.print("Data not insert ");
}

%>