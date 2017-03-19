package com.app.ctrl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.bean.db.UserInfo;
import com.app.bean.json.SelectListItem;
import com.app.bean.vm.VMBookingHistory;
import com.app.bean.vm.VMLogin;
import com.app.bean.vm.VMPwdReset;
import com.app.bean.vm.VMSelectShowPost;
import com.app.biz.CommonService;
import com.app.biz.ShowService;
import com.app.biz.UserService;
import com.app.framework.web.BaseController;
import com.app.framework.web.ModelBinder;
import com.app.util.Constant;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/user")
public class UserController extends BaseController {

    private static final long serialVersionUID = 1L;

    @Override
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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this._dbConfig = this.InitDbConfig();
        String action = this.getAction(request);
        UserService userService = null;
        switch (action) {
            case "tix-make-show-selection":
                VMSelectShowPost objX = new VMSelectShowPost();
                this.populate(objX, request);
                ShowService showService = new ShowService(this._dbConfig);
                //this.json(obj, request, response);
                String output = "";
                try {
                    int idX = showService.getShowId(objX);
                    if (idX > -1) {
                        List<SelectListItem> sheats = showService.getShowSeats(idX);
                        {
                            for (int i = 1; i < sheats.size(); i++) {
                                String id = sheats.get(i).getText();
                                output += "$('#chk" + id + "').attr('disabled', 'disabled');$('#chk" + id + "').attr('checked', 'checked');$('#chk" + id + "').parent().css('background-color', 'red'); ";
                            };
                        }
                        request.setAttribute("output", output);
                        request.setAttribute("showId", idX);
                    }
                } catch (Exception e) {
                    this.json(e, request, response);
                }
                this.view("booking/select-sheats.jsp", request, response);
                break;

            case "tix-booking":
                break;
            case "tix-book-tkt":
                break;
            case "edit":
                UserInfo objUserInfo = ModelBinder.populateUserInfo(request);
                UserInfo loggedUserInSession = this.getLoggedUser(request);
                objUserInfo.setUser_LoginName(loggedUserInSession.getUser_LoginName());
                objUserInfo.setUser_LoginPassword(loggedUserInSession.getUser_LoginPassword());
                objUserInfo.setUser_Id(loggedUserInSession.getUser_Id());
                objUserInfo.setUser_IsActive(loggedUserInSession.isUser_IsActive());
                //this.json(objUserInfo, request, response);
                userService = new UserService(this._dbConfig);
                try {
                    if (userService.updateUser(objUserInfo)) {
                        VMLogin objVMLogin = new VMLogin();
                        objVMLogin.setTxtLoginId(objUserInfo.getUser_LoginName());
                        objVMLogin.setTxtLoginPass(objUserInfo.getUser_LoginPassword());
                        UserInfo dataTable = userService.doUserLogin(objVMLogin, loggedUserInSession.isUser_IsAdmin());
                        request.getSession().setAttribute(Constant.SessionKeys.USER_INFO, dataTable);
                        request.getSession().setAttribute(Constant.SessionKeys.IS_ADMIN, loggedUserInSession.isUser_IsAdmin());
                        request.setAttribute(Constant.TempDataKeys.MSG, "Updated successfully.");
                        CommonService commonService = new CommonService(this._dbConfig);
                        try {
                            request.setAttribute(Constant.TempDataKeys.STATE_LIST, commonService.getAllStates());
                        } catch (Exception e) {
                            this.json(e, request, response);
                        }

                    }
                } catch (Exception ex) {
                    Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
                }

                this.view("user/edit.jsp", request, response);
                break;
            case "change-pwd":
                UserInfo loggedUser = (UserInfo) request.getSession().getAttribute(Constant.SessionKeys.USER_INFO);
                if (loggedUser != null) {
                    VMPwdReset obj = new VMPwdReset();
                    this.populate(obj, request);

                    if (loggedUser.getUser_LoginPassword().equals(obj.getTxtCurrentPass().trim())) {
                        loggedUser.setUser_LoginPassword(obj.getTxtNewRePass().trim());

                        userService = new UserService(this._dbConfig);

                        try {
                            if (userService.changePassword(loggedUser, false)) {
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
