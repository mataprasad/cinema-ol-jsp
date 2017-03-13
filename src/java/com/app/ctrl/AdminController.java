package com.app.ctrl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.framework.web.BaseController;

@WebServlet("/admin")
public class AdminController extends BaseController {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        this._dbConfig = this.InitDbConfig();
        String action = this.getAction(request);

        switch (action) {
            case "":
            case "home":
                this.view("admin/index.jsp", request, response);
                break;
            case "change-pwd":
                this.view("user/change-pwd.jsp", request, response);
                break;
            default:
                break;
        }
    }
}
