package com.app.framework.web;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.app.bean.db.UserInfo;
import com.app.db.DbConfigHelper;
import com.app.util.Constant;
import com.google.gson.Gson;
import java.util.Collection;
import java.util.Map;

public class BaseController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private Gson gson = new Gson();
    public DbConfigHelper _dbConfig = null;

    public BaseController() {

        super();
    }

    public void populate(Object obj, HttpServletRequest request) {
        try {
            BeanUtils.populate(obj, request.getParameterMap());
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
    }

    public Object populateJson(Type t, HttpServletRequest request) throws IOException {

        String body = request.getReader().lines().collect(Collectors.joining(System.lineSeparator()));
        Object obj = gson.fromJson(body, t);
        return obj;
    }

    public void view(String viewPath, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher(Constant.VIEW_BASE_PATH + viewPath).forward(request, response);
    }

    public void json(Object data, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType(Constant.CONTENT_TYPE_JSON);

        response.getWriter().append(gson.toJson(data));
    }

    public String getAppSettings(String key) {

        return getServletContext().getInitParameter(key);
    }

    public DbConfigHelper InitDbConfig() {

        DbConfigHelper dbConfig = new DbConfigHelper(this.getAppSettings(Constant.CONFIG_KEY_DB_DRIVER),
                this.getAppSettings(Constant.CONFIG_KEY_DB_HOST), this.getAppSettings(Constant.CONFIG_KEY_DB_PORT),
                this.getAppSettings(Constant.CONFIG_KEY_DB_NAME), this.getAppSettings(Constant.CONFIG_KEY_DB_USER),
                this.getAppSettings(Constant.CONFIG_KEY_DB_PASSWORD), this.getAppSettings(Constant.CONFIG_KEY_DB_TYPE));

        return dbConfig;
    }

    public String getAction(HttpServletRequest request) {

        String paramDo = request.getParameter("do");
        if (paramDo == null || paramDo.trim() == "") {
            return "";
        }

        return paramDo;
    }

    public UserInfo getLoggedUser(HttpServletRequest request) {
        UserInfo userInfo = (UserInfo) request.getSession().getAttribute(Constant.SessionKeys.USER_INFO);
        return userInfo;
    }

    public void loginSuccessRedirect(HttpServletRequest request, HttpServletResponse response, UserInfo dataTable, boolean isAdmin)
            throws ServletException, IOException {
        request.getSession().setAttribute(Constant.SessionKeys.USER_INFO, dataTable);
        request.getSession().setAttribute(Constant.SessionKeys.IS_ADMIN, isAdmin);
        if (isAdmin) {
            this.view("admin/index.jsp", request, response);
        } else {
            this.view("user/index.jsp", request, response);
        }
    }

    /**
     * Check if the given object is empty. Returns true if the object is null,
     * or if it is an instance of String and its trimmed length is zero, or if
     * it is an instance of an ordinary array and its length is zero, or if it
     * is an instance of Collection and its size is zero, or if it is an
     * instance of Map and its size is zero, or if its String representation is
     * null or the trimmed length of its String representation is zero.
     *
     * @param value The object to be determined on emptiness.
     * @return True if the given object value is empty.
     */
    public boolean isEmpty(Object value) {
        if (value == null) {
            return true;
        } else if (value instanceof String) {
            return ((String) value).trim().length() == 0;
        } else if (value instanceof Object[]) {
            return ((Object[]) value).length == 0;
        } else if (value instanceof Collection<?>) {
            return ((Collection<?>) value).size() == 0;
        } else if (value instanceof Map<?, ?>) {
            return ((Map<?, ?>) value).size() == 0;
        } else {
            return value.toString() == null || value.toString().trim().length() == 0;
        }
    }
}
