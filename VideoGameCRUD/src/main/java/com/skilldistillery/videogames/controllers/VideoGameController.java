package com.skilldistillery.videogames.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.videogames.DAO.VideoGameDAO;

public class VideoGameController {
	@Autowired
	private VideoGameDAO dao;

	@RequestMapping(path = "/")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");

		return mv;
	}
}
