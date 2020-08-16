package com.clas;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter(filterName = "char", urlPatterns = {"/*"})
public class CharFilter  implements Filter
	
{
	   public void destroy() {}
	   
	   public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
	     request.setCharacterEncoding("UTF-8");
	     response.setCharacterEncoding("UTF-8");
	     //System.out.println("sssssssssssss");
	     chain.doFilter(request, response);
	   }
	   
	   public void init(FilterConfig fConfig) throws ServletException {}
}
