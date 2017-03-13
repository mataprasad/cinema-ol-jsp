package com.app.db;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.app.bean.json.SelectListItem;

public class DbCommon {
	private DbConfigHelper dbConfig = null;

	public DbCommon(DbConfigHelper dbConfig) {
		this.dbConfig = dbConfig;
	}
	
	public List<SelectListItem> getAllStates() throws Exception {
		try {
			SelectListItem firstItem = new SelectListItem();
			firstItem.setText("--SELECT--");
			firstItem.setValue("0");

			DataSource dataSource = new com.app.db.DataSource(this.dbConfig).getBds();

			QueryRunner run = new QueryRunner(dataSource);

			ResultSetHandler<List<SelectListItem>> h = new BeanListHandler<SelectListItem>(SelectListItem.class);

			List<SelectListItem> data = run.query(
					"select UPPER(State_Name) as text,UPPER(State_Name) as value from StateInfo",
					h);

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
