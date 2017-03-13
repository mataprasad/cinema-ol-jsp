package com.app.ctrl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.bean.db.UserInfo;
import com.app.bean.vm.VMBookingHistory;
import com.app.biz.CommonService;
import com.app.biz.UserService;
import com.app.framework.web.BaseController;
import com.app.util.Constant;

@WebServlet("/user")
public class UserController extends BaseController {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        this._dbConfig = this.InitDbConfig();
        String action = this.getAction(request);

        switch (action) {
            case "":
            case "home":
                this.view("user/index.jsp", request, response);
                break;
            case "edit":
                CommonService commonService = new CommonService(this._dbConfig);
                try {
                    request.setAttribute(Constant.TempDataKeys.STATE_LIST, commonService.getAllStates());
                } catch (Exception e) {
                    e.printStackTrace();
                }
                this.view("user/edit.jsp", request, response);
                break;
            case "change-pwd":
                this.view("user/change-pwd.jsp", request, response);
                break;
            case "history":
                BookingHistory(request, response, false);
                break;
            case "booking-detail":
                this.view("user/booking-detail.jsp", request, response);
                break;
            case "history-ajax":
                BookingHistory(request, response, true);
                break;
            default:
                break;
        }
    }

    private void BookingHistory(HttpServletRequest request, HttpServletResponse response, boolean forAjax)
            throws ServletException, IOException {
        String oPage = request.getParameter(Constant.RequestParams.PAGE);
        int pageNo = 1;
        if (forAjax) {
            if (oPage != null) {
                pageNo = Integer.parseInt(oPage);
            }
        }
        UserInfo loggedUser = this.getLoggedUser(request);
        if (loggedUser != null) {
            UserService userService = new UserService(this._dbConfig);
            try {
                List<VMBookingHistory> data = userService.getBookingHistory(loggedUser.getUser_Id(),
                        Constant.BOOKING_HISTORY_PAGE_SIZE, pageNo);
                if (data != null) {
                    int recordsCount = data.get(data.size() - 1).getRecordCount();
                    data.remove(data.size() - 1);
                    request.setAttribute(Constant.TempDataKeys.RECORDS_COUNT, recordsCount);
                    request.setAttribute(Constant.TempDataKeys.TICKET_LIST, data);
                    if (forAjax) {
                        this.view("user/_movie-history.jsp", request, response);
                    } else {
                        this.view("user/history.jsp", request, response);
                    }
                }
            } catch (Exception e) {
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                this.json(e.getMessage(), request, response);
            }
        } else {
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
        }
    }
}
