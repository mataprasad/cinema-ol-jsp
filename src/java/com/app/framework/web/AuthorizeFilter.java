package com.app.framework.web;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import com.app.util.Constant;

public class AuthorizeFilter implements Filter {

	public AuthorizeFilter() {

	}

	public void destroy() {

	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest req = ((HttpServletRequest) request);
		Object loggedUser = req.getSession().getAttribute(Constant.SessionKeys.USER_INFO);
		if (loggedUser == null) {
			if (req.getRequestURL().indexOf("user") > 0) {
				req.setAttribute(Constant.TempDataKeys.ERROR, "You need to login for acessing this page  !");
				req.setAttribute(Constant.TempDataKeys.TITLE, " ");
				req.setAttribute(Constant.TempDataKeys.POST_URL, "public?do=login");
				request.getRequestDispatcher("/WEB-INF/views/public/login.jsp").forward(request, response);
			} else if (req.getRequestURL().indexOf("admin") > 0) {
				req.setAttribute(Constant.TempDataKeys.ERROR, "You need to login for acessing this page  !");
				req.setAttribute(Constant.TempDataKeys.TITLE, " ADMIN");
				req.setAttribute(Constant.TempDataKeys.POST_URL, "admin?do=login");
				request.getRequestDispatcher("/WEB-INF/views/public/login.jsp").forward(request, response);
			} else {
				chain.doFilter(request, response);
			}
		} else {
			chain.doFilter(request, response);
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {

	}

}
