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
import com.oreilly.servlet.MultipartRequest;

@WebServlet("/UploadSer")
public class UploadSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UploadSer() {
        super();
       
    }

	
	protected  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		try {
			MultipartRequest m=new MultipartRequest(request,getServletContext().getRealPath("/")+"Upload");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","nidhi@123" );
		Statement st=con.createStatement();
		int x=st.executeUpdate("insert into imgupload(file) values('"+m.getFilesystemName("file")+"')");
		if(x!=0) {
			response.sendRedirect("uploadFormExample.jsp");
			//out.print("File upolad succesfully"+getServletContext().getRealPath("/")+"Upload");
			
		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
