package com.app.framework.web.mvc;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ActionInvoker {

    public static void invoke(ServletRequest request, ServletResponse response) {
        ActionMap controllerContext = ActionMap.Init(request, response);
        String ctrl = controllerContext.getController();
        String act = controllerContext.getAction();

        try {
            Class<?> t = Class.forName(ctrl);
            Object o = t.newInstance();

            Method initController = t.getMethod("initController", ServletRequest.class, ServletResponse.class);
            initController.invoke(o, request, response);

            Method actionMethod = t.getMethod(act);
            actionMethod.invoke(o);
            // production code should handle these exceptions more gracefully
        } catch (ClassNotFoundException x) {
            x.printStackTrace();
        } catch (InstantiationException x) {
            x.printStackTrace();
        } catch (IllegalAccessException x) {
            x.printStackTrace();
        } catch (NoSuchMethodException ex) {
            Logger.getLogger(ActionInvoker.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SecurityException ex) {
            Logger.getLogger(ActionInvoker.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalArgumentException ex) {
            Logger.getLogger(ActionInvoker.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvocationTargetException ex) {
            Logger.getLogger(ActionInvoker.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
