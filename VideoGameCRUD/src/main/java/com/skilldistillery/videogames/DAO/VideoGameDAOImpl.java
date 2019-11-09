package com.skilldistillery.videogames.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.videogames.entities.VideoGame;

@Transactional
@Service
public class VideoGameDAOImpl implements VideoGameDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public VideoGame findById(int id) {
		VideoGame vg = em.find(VideoGame.class, id);
		return vg;
	}

	@Override
	public List<VideoGame> findAll() {
		String query = "SELECT fm FROM Film fm";
		List<VideoGame> allGames = em.createQuery(query, VideoGame.class).getResultList();
		return allGames;
	}

	@Override
	public boolean createGame(VideoGame videogame) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void updateGame(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeGame(int id) {
		// TODO Auto-generated method stub
		
	}
}
