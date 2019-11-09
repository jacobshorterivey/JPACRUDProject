package com.skilldistillery.videogames.DAO;

import java.util.List;

import com.skilldistillery.videogames.entities.VideoGame;

public interface VideoGameDAO {
	VideoGame createGame(VideoGame vg);
	VideoGame findById(int id);
	VideoGame updateGame(int old,  VideoGame fresh);
	void removeGame(int id);
	List<VideoGame> findAll();
}
