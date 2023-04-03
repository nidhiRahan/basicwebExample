package serjsppractice;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classPackage.Datahelper;

/**
 * Servlet implementation class DeleteSer
 */
@WebServlet("/DeleteSer")
public class DeleteSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteSer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		try {
//		Class.forName("com.mysql.jdbc.Driver");
//	    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb1","root","nidhi@123");
//		Statement st=con.createStatement();
//		int x=st.executeUpdate("delete from student1 where rno='"+request.getParameter("rno")+"' ");
		
	Datahelper obj=new Datahelper();
	obj.makeConnection();
	int x=obj.dmlRecord("delete from student1 where rno='"+request.getParameter("rno")+"'");
			if(x!=0) {
			response.sendRedirect("viewStudent.jsp");
		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
