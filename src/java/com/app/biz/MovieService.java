package com.app.biz;

import java.util.List;

import com.app.bean.db.MovieInfo;
import com.app.bean.json.SelectListItem;
import com.app.db.DbConfigHelper;
import com.app.db.DbMovie;

public class MovieService {

	DbConfigHelper dbConfig;
	DbMovie dbMovie;

	public MovieService(DbConfigHelper dbConfig) {
		this.dbConfig = dbConfig;
		this.dbMovie = new DbMovie(dbConfig);
	}

	public List<SelectListItem> fillMovieList() throws Exception {
		return this.dbMovie.fillMovieList();
	}

	public List<SelectListItem> getMoviesImageURL() throws Exception {
		return this.dbMovie.getMoviesImageURL();
	}

	public List<MovieInfo> getRunningMovies() throws Exception {
		return this.dbMovie.getRunningMovies();
	}
	
	public List<MovieInfo> getUpCommingMovies() throws Exception {
		return this.dbMovie.getUpCommingMovies();
	}
}
