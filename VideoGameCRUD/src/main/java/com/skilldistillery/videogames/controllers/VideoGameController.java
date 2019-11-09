package com.skilldistillery.videogames.controllers;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.videogames.DAO.VideoGameDAO;
import com.skilldistillery.videogames.entities.VideoGame;

public class VideoGameController {
	@Autowired
	private VideoGameDAO dao;

	@RequestMapping(path = "/")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();

		List<VideoGame> allGames = dao.findAll();
		mv.addObject("games", allGames);
		mv.setViewName("index");
		return mv;
	}

	@RequestMapping(path = "findGameById.do")
	public ModelAndView findVideoGameById(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		VideoGame vg = dao.findById(id);
		mv.addObject("game", vg);
		mv.setViewName("result");
		return mv;
	}

	@RequestMapping(path = "createGame.do")
	public ModelAndView addVideoGame(@RequestParam("title") String title, @RequestParam("developer") String developer,
			@RequestParam("publisher") String publisher, @RequestParam("description") String description,
			@RequestParam("esrbRating") String esrbRating, @RequestParam("metacriticScore") Integer metacriticScore,
			@RequestParam("releaseDate") LocalDate releaseDate, @RequestParam("boxartURL") String boxartURL) {
		ModelAndView mv = new ModelAndView();
		VideoGame vg = new VideoGame(title, developer, publisher, description, esrbRating, metacriticScore, releaseDate,
				boxartURL);
		vg = dao.createGame(vg);
		mv.addObject("game", vg);
		mv.setViewName("result");
		return mv;
	}

	@RequestMapping(path = "updateGame.do")
	public ModelAndView updateVideoGame(@RequestParam("id") int oldId, @RequestParam("title") String title,
			@RequestParam("developer") String developer, @RequestParam("publisher") String publisher,
			@RequestParam("description") String description, @RequestParam("esrbRating") String esrbRating,
			@RequestParam("metacriticScore") Integer metacriticScore,
			@RequestParam("releaseDate") LocalDate releaseDate, @RequestParam("boxartURL") String boxartURL) {
		ModelAndView mv = new ModelAndView();
		VideoGame fresh = new VideoGame(title, developer, publisher, description, esrbRating, metacriticScore,
				releaseDate, boxartURL);
		fresh = dao.updateGame(oldId, fresh);
		mv.addObject("game", fresh);
		mv.setViewName("result");
		return mv;
	}

	@RequestMapping(path = "destroyGame.do")
	public ModelAndView destroyVideoGame(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		dao.removeGame(id);

		mv.setViewName("/");
		return mv;
	}

}
