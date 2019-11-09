package com.skilldistillery.videogames.DAO;

import java.util.List;

import com.skilldistillery.videogames.entities.VideoGame;

public interface VideoGameDAO {
	boolean createGame(VideoGame videogame);
	VideoGame findById(int id);
	void updateGame(int id);
	void removeGame(int id);
	List<VideoGame> findAll();
}
