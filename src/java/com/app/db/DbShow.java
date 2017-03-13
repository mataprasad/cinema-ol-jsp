package com.app.db;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.app.bean.json.SelectListItem;

public class DbShow {

	private DbConfigHelper dbConfig = null;

	public DbShow(DbConfigHelper dbConfig) {
		this.dbConfig = dbConfig;
	}

	public List<SelectListItem> fillDateList(String pMovieTitle) throws Exception {
		try {
			SelectListItem firstItem = new SelectListItem();
			firstItem.setText("--SELECT--");
			firstItem.setValue("0");

			DataSource dataSource = new com.app.db.DataSource(this.dbConfig).getBds();

			QueryRunner run = new QueryRunner(dataSource);

			ResultSetHandler<List<SelectListItem>> h = new BeanListHandler<SelectListItem>(SelectListItem.class);

			List<SelectListItem> data = run.query(
					"SELECT distinct convert(varchar,Show_Date,103) as text, convert(varchar,Show_Date,103) as value FROM ShowInfo WHERE Show_Date>=GETDATE() and Movie_Name=?;",
					h, pMovieTitle);

			if (data == null) {
				data = new ArrayList<SelectListItem>();
			}
			data.add(0, firstItem);
			return data;
		} catch (Exception ex) {
			throw ex;
		}
	}

	public List<SelectListItem> fillTimeList(String pMovieTitle, String pMovieDate) throws Exception {
		try {
			SelectListItem firstItem = new SelectListItem();
			firstItem.setText("--SELECT--");
			firstItem.setValue("0");

			DataSource dataSource = new com.app.db.DataSource(this.dbConfig).getBds();

			QueryRunner run = new QueryRunner(dataSource);

			ResultSetHandler<List<SelectListItem>> h = new BeanListHandler<SelectListItem>(SelectListItem.class);

			List<SelectListItem> data = run.query(
					"SELECT distinct Show_StartTime as text,Show_StartTime as value FROM ShowInfo WHERE convert(varchar,Show_Date,103)=? and Movie_Name=?;", h, pMovieDate,
					pMovieTitle);

			if (data == null) {
				data = new ArrayList<SelectListItem>();
			}
			data.add(0, firstItem);
			return data;
		} catch (Exception ex) {
			throw ex;
		}
	}
}
