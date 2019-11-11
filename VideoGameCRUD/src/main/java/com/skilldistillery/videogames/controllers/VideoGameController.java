package com.skilldistillery.videogames.controllers;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.videogames.DAO.VideoGameDAO;
import com.skilldistillery.videogames.entities.VideoGame;

@Controller
public class VideoGameController {
	@Autowired
	private VideoGameDAO dao;

	@RequestMapping(path = {"/","goHome.do"})
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();

		List<VideoGame> allGames = dao.findAll();
		mv.addObject("games", allGames);
		mv.setViewName("index");
		return mv;
	}

	@RequestMapping(path = "findGameById.do")
	public ModelAndView findVideoGameById(@RequestParam("gameId") int id) {
		ModelAndView mv = new ModelAndView();
		VideoGame vg = dao.findById(id);
		mv.addObject("game", vg);
		mv.setViewName("result");
		return mv;
	}
	@RequestMapping(path = "goToCreateGame.do")
	public ModelAndView goToCreateGame() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addgame");
		return mv;
	}

	@RequestMapping(path = "createGame.do", method = RequestMethod.POST)
	public ModelAndView addVideoGame(@RequestParam("title") String title, @RequestParam("developer") String developer,
			@RequestParam("publisher") String publisher, @RequestParam("description") String description,
			@RequestParam("esrbRating") String esrbRating, @RequestParam("metacriticScore") Integer metacriticScore,
			@RequestParam("releaseDate") String releaseDate, @RequestParam("boxartURL") String boxartURL) {
		ModelAndView mv = new ModelAndView();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate parsedReleaseDate = LocalDate.parse(releaseDate, formatter);
		
		VideoGame vg = new VideoGame(title, developer, publisher, description, esrbRating, metacriticScore, parsedReleaseDate,
				boxartURL);
		vg = dao.createGame(vg);
		mv.addObject("game", vg);
		mv.setViewName("result");
		return mv;
	}

	@RequestMapping(path = "updateGame.do", method = RequestMethod.POST)
	public ModelAndView updateVideoGame(@RequestParam("oldGameId") int oldId, @RequestParam("title") String title,
			@RequestParam("developer") String developer, @RequestParam("publisher") String publisher,
			@RequestParam("description") String description, @RequestParam("esrbRating") String esrbRating,
			@RequestParam("metacriticScore") Integer metacriticScore,
			@RequestParam("releaseDate") String releaseDate, @RequestParam("boxartURL") String boxartURL) {
		ModelAndView mv = new ModelAndView();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate parsedReleaseDate = LocalDate.parse(releaseDate, formatter);
		
		VideoGame fresh = new VideoGame(title, developer, publisher, description, esrbRating, metacriticScore,
				parsedReleaseDate, boxartURL);
		fresh = dao.updateGame(oldId, fresh);
		mv.addObject("game", fresh);
		mv.setViewName("result");
		return mv;
	}

	@RequestMapping(path = "destroyGame.do", method = RequestMethod.POST)
	public ModelAndView destroyVideoGame(@RequestParam("gameId") int id) {
		ModelAndView mv = new ModelAndView();
		dao.removeGame(id);
		mv.setViewName("redirect:goHome.do");
		return mv;
	}

}
