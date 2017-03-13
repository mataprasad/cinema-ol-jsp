package com.app.ctrl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.bean.db.UserInfo;
import com.app.bean.vm.VMBookTicket;
import com.app.bean.vm.VMBookingHistory;
import com.app.bean.vm.VMPwdReset;
import com.app.biz.CommonService;
import com.app.biz.UserService;
import com.app.framework.web.BaseController;
import com.app.util.Constant;
import java.util.logging.Level;
import java.util.logging.Logger;

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
                    this.json(e, request, response);
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
                UserService userService = new UserService(this._dbConfig);
                Double id = Double.parseDouble(request.getParameter("id"));
                try {
                    request.setAttribute(Constant.TempDataKeys.TICKET_DATA, userService.getBookingDetails(id.longValue()));
                } catch (Exception ex) {
                    //Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
                    this.json(ex, request, response);
                }
                this.view("user/booking-detail.jsp", request, response);
                break;
            case "history-ajax":
                BookingHistory(request, response, true);
                break;
            default:
                break;
        }
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this._dbConfig = this.InitDbConfig();
        String action = this.getAction(request);
        
        switch (action) {
            case "edit":
                UserInfo objUserInfo = new UserInfo();
                this.populate(objUserInfo, request);
                
                UserInfo loggedUserInSession = (UserInfo) request.getSession().getAttribute(Constant.SessionKeys.USER_INFO);
                objUserInfo.setUser_LoginName(loggedUserInSession.getUser_LoginName());
                objUserInfo.setUser_LoginPassword(loggedUserInSession.getUser_LoginPassword());
                
                break;
            case "change-pwd":
                UserInfo loggedUser = (UserInfo) request.getSession().getAttribute(Constant.SessionKeys.USER_INFO);
                if (loggedUser != null) {
                    VMPwdReset obj = new VMPwdReset();
                    this.populate(obj, request);
                    
                    if (loggedUser.getUser_LoginPassword().equals(obj.getTxtCurrentPass().trim())) {
                        loggedUser.setUser_LoginPassword(obj.getTxtNewRePass().trim());
                        
                        UserService userService = new UserService(this._dbConfig);
                        
                        try {
                            if (userService.changePassword(loggedUser)) {
                                request.setAttribute(Constant.TempDataKeys.MSG, "Password Changed Successfully.");
                            } else {
                                request.setAttribute(Constant.TempDataKeys.MSG, "Oops some problems occured !");
                            }
                        } catch (Exception ex) {
                            //Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
                            this.json(ex, request, response);
                            return;
                        }
                        
                    } else {
                        request.setAttribute(Constant.TempDataKeys.MSG, "Current password is not correct !");
                    }
                } else {
                    this.view("public/login.jsp", request, response);
                    return;
                }
                this.view("user/change-pwd.jsp", request, response);
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
