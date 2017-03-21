package com.app.framework.web.mvc;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Controller {

    public ServletRequest request = null;
    public ServletResponse response = null;

    public void initController(ServletRequest request, ServletResponse response) {
        this.request = request;
        this.response = response;
    }

    public IActionResult view(String viewName) {

        try {
            request.getRequestDispatcher(viewName).forward(request, response);
        } catch (ServletException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return new ActionResult();
    }

    public IActionResult view(String viewName, Object model) {
        request.setAttribute("model", model);
        try {
            request.getRequestDispatcher("").forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
        return new ActionResult();
    }

    public void json(Object data) {

    }
}
