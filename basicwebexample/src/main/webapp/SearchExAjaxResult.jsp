<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
String s=request.getParameter("q");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb1","root","nidhi@123");
Statement st=con.createStatement();
ResultSet res=st.executeQuery("select * from student1 where name like'"+s+"%'");
while(res.next()){
	%>
	<tr><td><%=res.getString(1) %></td><td><%=res.getString(2)%></td><td><%=res.getString(3)%></td><td><%=res.getString(4)%></td>
	<td><a href="delete.jsp?p=<%= res.getString(1)%>">delete</a></td>
	<td><a href="edit.jsp?p=<%= res.getString(1)%>">edit</a></td></tr>
	
	<%

}
%>
