package com.app.framework.web.mvc;

import com.google.gson.Gson;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;

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
            Gson g = new Gson();
            /*List<String> roles = new ArrayList<String>();
            roles.add("*");
            ActionInfo act1 = new ActionInfo();
            act1.setMethodName("getIndex");
            act1.setModelClassName("java.lang.String");
            act1.setAllowedRoles(roles);

            ActionInfo act2 = new ActionInfo();
            act2.setMethodName("postIndex");
            act2.setModelClassName("java.lang.String[]");
            act2.setAllowedRoles(roles);

            Map<String, Map<String, ActionInfo>> mapActionInfo = new HashMap<String, Map<String, ActionInfo>>();
            Map<String, ActionInfo> m = new HashMap<String, ActionInfo>();
            m.put("GET", act1);
            m.put("POST", act2);
            mapActionInfo.put("index", m);
            ControllerInfo ctrl1 = new ControllerInfo();
            ctrl1.setControllerClassName("com.app.ctrl.HomeController");
            ctrl1.setActions(mapActionInfo);

            ControllerInfo ctrl2 = new ControllerInfo();
            ctrl2.setControllerClassName("com.app.ctrl.UserController");
            ctrl2.setActions(mapActionInfo);

            Map<String, ControllerInfo> map = new HashMap<String, ControllerInfo>();
            map.put("home", ctrl1);
            map.put("user", ctrl2);

            Gson g = new Gson();
            String json = g.toJson(map);*/

            String requestedResource = s2.replace(s1 + "/", "");
            String[] urlParts = requestedResource.split("/");
            if (urlParts != null && urlParts.length >= 2) {
                String controller = urlParts[0];
                String action = urlParts[1];

                String jsonFilePath = req.getServletContext().getRealPath("/WEB-INF/action-map.json");

                String json = FileUtils.readFileToString(new File(jsonFilePath), "utf-8");

                Map<String, ControllerInfo> map = g.fromJson(json, Map.class);

                String method = req.getMethod();
                if (map.containsKey(controller)) {
                    ControllerInfo cInfo = map.get(controller);
                    ActionInfo mInfo = cInfo.getActions().get(action).get(method);

                    ActionInvoker.invoke(request, response);
                }
            } else {
                chain.doFilter(request, response);
            }
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
