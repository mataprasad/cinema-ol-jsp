package com.app.util;

import nl.captcha.Captcha;

public class Constant {

    public final static String CONFIG_KEY_DB_TYPE = "db-type";
    public final static String CONFIG_KEY_DB_DRIVER = "db-driver";
    public final static String CONFIG_KEY_DB_HOST = "db-host";
    public final static String CONFIG_KEY_DB_PORT = "db-port";
    public final static String CONFIG_KEY_DB_NAME = "db-name";
    public final static String CONFIG_KEY_DB_USER = "db-user-id";
    public final static String CONFIG_KEY_DB_PASSWORD = "db-password";

    public final static String CONFIG_KEY_UPLOAD_PATH = "file-upload";

    public final static String CONTENT_TYPE_JSON = "application/json";

    public final static String VIEW_BASE_PATH = "/WEB-INF/views/";

    public final static int BOOKING_HISTORY_PAGE_SIZE = 10;

    public class TempDataKeys {

        public final static String RUNNING_MOVIES = "runningMovies";
        public final static String MOVIES_URLS = "moviesUrls";
        public final static String MOVIE_LIST = "movieList";
        public final static String STATE_LIST = "stateList";
        public final static String MSG = "msg";
        public final static String ERROR_MSG = "errorMsg";
        public final static String POST_URL = "loginPostUrl";
        public final static String TITLE = "title";
        public final static String ERROR = "error";
        public final static String RECORDS_COUNT = "recordsCount";
        public final static String TICKET_LIST = "ticketList";
    }

    public class SessionKeys {

        public final static String USER_INFO = "userInfo";
        public final static String IS_ADMIN = "isAdmin";
    }

    public class RequestParams {

        public final static String PAGE = "page";
    }

    public class ErrorMessages {

        public final static String USER_ALREADY_EXITS = "Sorry, this username is already taken !";
        public final static String CAPTCHA_ERROR = "Verification code not macthed !";
    }
}