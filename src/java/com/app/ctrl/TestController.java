package com.app.ctrl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.bean.db.UserInfo;
import com.app.bean.db.UserInfo1;
import com.app.bean.vm.VMBookingHistory;
import com.app.bean.vm.VMLogin;
import com.app.bean.vm.VMPwdReset;
import com.app.biz.CommonService;
import com.app.biz.UserService;
import com.app.framework.web.BaseController;
import com.app.framework.web.ModelBinder;
import com.app.util.Constant;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/test")
public class TestController extends BaseController {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        this._dbConfig = this.InitDbConfig();
        String action = this.getAction(request);

        switch (action) {
            case "edit":
                CommonService commonService = new CommonService(this._dbConfig);
                try {
                    request.setAttribute(Constant.TempDataKeys.STATE_LIST, commonService.getAllStates());
                } catch (Exception e) {
                    this.json(e, request, response);
                }
                this.view("user/edit.jsp", request, response);
                break;
            default:
                break;
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this._dbConfig = this.InitDbConfig();
        String action = this.getAction(request);
        UserService userService = null;
        switch (action) {
            case "edit":
                UserInfo1 objUserInfo = new UserInfo1();
                this.populate(objUserInfo, request);
                this.json(objUserInfo, request, response);

                //this.view("user/edit.jsp", request, response);
                break;
            
            default:
                break;
        }

    }
}
