package scs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;


@WebFilter("/Filter")
public class Filter implements javax.servlet.Filter {

    
    public Filter() {
        
    }


	public void destroy() {
		// TODO Auto-generated method stub
	}

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		PrintWriter out=response.getWriter();
		out.print("before request");
		chain.doFilter(request, response);
		out.print("after request");
		
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
