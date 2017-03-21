/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.framework.web.mvc;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class ActionMap {

    private List<ActionMapController> controllers = new ArrayList<ActionMapController>();
    private String defaultClass = "";
    private String defaultMethod = "";

    public static ActionMap Init(ServletRequest request, ServletResponse response) {
        return new ActionMap();
    }

    public String getController() {
        return "com.app.ctrl.HomeController";
    }

    public String getAction() {
        return "index";
    }

}
