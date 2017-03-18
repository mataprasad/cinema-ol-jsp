package com.app.biz;

import java.util.List;

import com.app.bean.json.SelectListItem;
import com.app.bean.vm.VMManageShow;
import com.app.db.DbConfigHelper;
import com.app.db.DbShow;

public class ShowService {

    DbConfigHelper dbConfig;
    DbShow dbShow;

    public ShowService(DbConfigHelper dbConfig) {
        this.dbConfig = dbConfig;
        this.dbShow = new DbShow(dbConfig);
    }

    public List<SelectListItem> fillDateList(String pMovieTitle) throws Exception {

        return this.dbShow.fillDateList(pMovieTitle);
    }

    public List<SelectListItem> fillTimeList(String pMovieTitle, String pMovieDate) throws Exception {

        return this.dbShow.fillTimeList(pMovieTitle, pMovieDate);
    }

    public boolean addShowInfo(VMManageShow obj) throws Exception {
        return this.dbShow.addShowInfo(obj);
    }
}
