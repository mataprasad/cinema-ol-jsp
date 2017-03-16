package com.app.ctrl;

import com.app.bean.json.SelectListItem;
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
import java.io.File;
import java.util.List;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

@WebServlet("/admin")
public class AdminController extends BaseController {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        this._dbConfig = this.InitDbConfig();
        String action = this.getAction(request);
        CommonService commonService = null;

        switch (action) {
            case "":
            case "home":
                this.view("admin/index.jsp", request, response);
                break;
            case "manage-show":

                commonService = new CommonService(this._dbConfig);

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
            case "add-movie":
                // Check that we have a file upload request
                boolean isMultipart = ServletFileUpload.isMultipartContent(request);
                if (isMultipart) {
                    // Create a factory for disk-based file items
                    DiskFileItemFactory factory = new DiskFileItemFactory();

                    // Configure a repository (to ensure a secure temp location is used)
                    ServletContext servletContext = this.getServletConfig().getServletContext();
                    File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
                    factory.setRepository(repository);

                    // Create a new file upload handler
                    ServletFileUpload upload = new ServletFileUpload(factory);

                    try {
                        // Parse the request
                        List<FileItem> items = upload.parseRequest(request);

                        if (items != null) {
                            for (FileItem item : items) {
                                if (!item.isFormField()) {
                                    String ext = FilenameUtils.getExtension(item.getName());
                                    String fileName = String.join(".", UUID.randomUUID().toString(), ext).toLowerCase();
                                    File uploadedFile = new File(servletContext.getRealPath("/uploads/" + fileName));
                                    item.write(uploadedFile);
                                    break;
                                }
                            }
                        }

                    } catch (FileUploadException ex) {
                        Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
                    } catch (Exception ex) {
                        Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                addMovieGet(request, response);
                break;
            default:
                break;
        }
    }
}
