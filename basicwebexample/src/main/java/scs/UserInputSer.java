package scs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserInputSer
 */
@WebServlet("/UserInputSer")
public class UserInputSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserInputSer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		out.write("<form action='' method='post'>");
		out.write("<input type='text' name='txtnum1' /> <br>");
		out.write("<input type='text' name='txtnum2' /><br>");
		out.write("<input type='submit' value='ADD' />");
		out.write("</form>");
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int a,b;
		a = Integer.parseInt(request.getParameter("txtnum1")); //"12"
		b = Integer.parseInt(request.getParameter("txtnum2"));
		int c;
		c = a+b;
		PrintWriter out = response.getWriter();
		out.write("Result is "+c);
	}

}
