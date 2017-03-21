package com.app.ctrl;

import com.app.framework.web.mvc.HttpPost;
import com.app.framework.web.mvc.HttpGet;
import com.app.framework.web.mvc.IActionResult;
import com.app.framework.web.mvc.Controller;

public class HomeController extends Controller {

    @HttpGet
    public IActionResult index() {
        return this.view("/WEB-INF/views/public/index.jsp");
    }

    @HttpPost
    public IActionResult index1(String data) {
        return this.view("");
    }
}
