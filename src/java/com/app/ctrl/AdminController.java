package com.app.ctrl;

import com.app.bean.json.SelectListItem;
import com.app.bean.vm.VMManageShow;
import com.app.bean.vm.VMMovieInfo;
import com.app.biz.CommonService;
import com.app.biz.MovieService;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.framework.web.BaseController;
import com.app.util.Constant;
import com.google.gson.Gson;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/admin")
public class AdminController extends BaseController {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        this._dbConfig = this.InitDbConfig();
        String action = this.getAction(request);

        switch (action) {
            case "":
            case "home":
                this.view("admin/index.jsp", request, response);
                break;
            case "manage-show":

                CommonService commonService = new CommonService(this._dbConfig);

                List<SelectListItem> ddlHallList = null;
                List<SelectListItem> ddlTimeList = null;
                List<SelectListItem> ddlMovieList = null;

                try {
                    ddlHallList = commonService.getHallList();
                    ddlTimeList = commonService.getTimeList();
                    ddlMovieList = commonService.getMovieList();

                    request.setAttribute(Constant.TempDataKeys.DDL_HALL_LIST, ddlHallList);
                    request.setAttribute(Constant.TempDataKeys.DDL_TIME_LIST, ddlTimeList);
                    request.setAttribute(Constant.TempDataKeys.DDL_MOVIE_LIST, ddlMovieList);
                } catch (Exception ex) {
                    Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
                }

                this.view("admin/manage-show.jsp", request, response);
                break;
            case "remove-movie":
                MovieService movieService = new MovieService(this._dbConfig);
                 {
                    try {
                        request.setAttribute(Constant.TempDataKeys.MOVIE_LIST, movieService.getMoviesToRemove());
                    } catch (Exception ex) {
                        Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                this.view("admin/remove-movie.jsp", request, response);
                break;
            case "add-movie":
                addMovieGet(request, response);
                break;
            default:
                break;
        }
    }

    private void addMovieGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CommonService commonService = new CommonService(this._dbConfig);

        List<SelectListItem> ddlStatus = null;
        List<SelectListItem> ddlLanguage = null;
        List<SelectListItem> ddlIndustry = null;

        try {
            ddlStatus = commonService.getStatusList();
            ddlLanguage = commonService.getLanguageList();
            ddlIndustry = commonService.getIndustryList();

            request.setAttribute(Constant.TempDataKeys.DDL_STATUS_LIST, ddlStatus);
            request.setAttribute(Constant.TempDataKeys.DDL_LANGUAGE_LIST, ddlLanguage);
            request.setAttribute(Constant.TempDataKeys.DDL_INDUSTRY_LIST, ddlIndustry);
        } catch (Exception ex) {
            Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
        }

        this.view("admin/add-movie.jsp", request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this._dbConfig = this.InitDbConfig();
        String action = this.getAction(request);

        switch (action) {
            case "remove-movie":
                MovieService movieService = new MovieService(this._dbConfig);
                String json = request.getParameter("hdSelectedMovie");
                Gson g = new Gson();
                String[] selectedValues = g.fromJson(json, String[].class);
                 {
                    try {
                        if (movieService.removeMovie(selectedValues)) {
                            request.setAttribute(Constant.TempDataKeys.MSG, "Selected item removed successfully.");
                        }
                        request.setAttribute(Constant.TempDataKeys.MOVIE_LIST, movieService.getMoviesToRemove());
                    } catch (Exception ex) {
                        Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                this.view("admin/remove-movie.jsp", request, response);
            case "add-movie":
                VMMovieInfo objMovieInfo = new VMMovieInfo();
                this.populate(objMovieInfo, request);

                this.uploadFile(request, "fuPoster");

                addMovieGet(request, response);
                break;
            case "manage-show":
                VMManageShow objVMManageShow = new VMManageShow();
                this.populate(objVMManageShow, request);
                this.json(objVMManageShow, request, response);
                break;
            default:
                break;
        }
    }
}
