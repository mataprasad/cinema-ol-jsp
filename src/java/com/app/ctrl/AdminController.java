package com.app.ctrl;

import com.app.biz.MovieService;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.framework.web.BaseController;
import com.app.util.Constant;
import com.google.gson.Gson;
import java.util.logging.Level;
import java.util.logging.Logger;

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
            case "manage-show":
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
                this.view("admin/add-movie.jsp", request, response);
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
            case "remove-movie":
                MovieService movieService = new MovieService(this._dbConfig);
                String json = request.getParameter("hdSelectedMovie");
                Gson g = new Gson();
                String[] selectedValues = g.fromJson(json, String[].class);
                //this.json(selectedValues, request, response);
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
            default:
                break;
        }
    }
}
