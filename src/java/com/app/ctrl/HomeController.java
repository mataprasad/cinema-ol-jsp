package com.app.ctrl;

import com.app.framework.web.mvc.IActionResult;
import com.app.framework.web.mvc.Controller;

public class HomeController extends Controller {

    public IActionResult index() {
        return this.view("/WEB-INF/views/public/index.jsp");
    }

    public IActionResult index1(String data) {
        return this.view("");
    }
}
