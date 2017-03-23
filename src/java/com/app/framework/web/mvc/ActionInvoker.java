package com.app.framework.web.mvc;

import java.io.IOException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ActionInvoker {

    public static boolean invoke(ServletRequest request, ServletResponse response) throws IOException {
        boolean success = false;
        ActionMap controllerContext = ActionMap.Init(request, response);
        if (controllerContext == null) {
            success = false;
        }
        String ctrl = controllerContext.getController();
        String act = controllerContext.getAction();

        try {
            Class<?> t = Class.forName(ctrl);
            Object o = t.newInstance();

            Method initController = t.getMethod("initController", ServletRequest.class, ServletResponse.class);
            initController.invoke(o, request, response);

            Method actionMethod = t.getMethod(act);
            actionMethod.invoke(o);
            success = true;
            // production code should handle these exceptions more gracefully
        } catch (ClassNotFoundException x) {
            success = false;
        } catch (InstantiationException x) {
            success = false;
        } catch (IllegalAccessException x) {
            success = false;
        } catch (NoSuchMethodException ex) {
            success = false;
        } catch (SecurityException ex) {
            success = false;
        } catch (IllegalArgumentException ex) {
            success = false;
        } catch (InvocationTargetException ex) {
            success = false;
        }
        return success;
    }
}
