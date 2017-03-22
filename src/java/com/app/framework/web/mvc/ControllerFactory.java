package com.app.framework.web.mvc;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class ControllerFactory implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = ((HttpServletRequest) request);
        String s1 = req.getContextPath();
        String s2 = req.getRequestURI();
        String s3 = req.getRequestURL().toString();
        String fullUrl = getFullURL(req).toLowerCase();
        if (fullUrl.contains(".css") || fullUrl.contains(".js") || fullUrl.contains(".html") || fullUrl.contains(".jpg") || fullUrl.contains(".png") || fullUrl.contains(".gif") || fullUrl.contains(".icon")) {
            chain.doFilter(request, response);
        } else {

            String method = req.getMethod();

            String requestedResource = s2.replace(s1 + "/", "");
            String[] urlParts = requestedResource.split("/");
            String controller = urlParts[0] + "Controller";
            String action = urlParts[1];

            ActionInvoker.invoke(request, response);
        }

    }

    @Override
    public void destroy() {

    }

    public static String getFullURL(HttpServletRequest request) {
        StringBuffer requestURL = request.getRequestURL();
        String queryString = request.getQueryString();

        if (queryString == null) {
            return requestURL.toString();
        } else {
            return requestURL.append('?').append(queryString).toString();
        }
    }
}
