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
		String query = "SELECT vg FROM VideoGame vg";
		List<VideoGame> allGames = em.createQuery(query, VideoGame.class).getResultList();
		return allGames;
	}

	@Override
	public VideoGame createGame(VideoGame vg) {

		em.persist(vg);
		em.flush();

		return vg;
	}

	@Override
	public VideoGame updateGame(int old, VideoGame fresh) {
		VideoGame vg = em.find(VideoGame.class, old);
		vg.setTitle(fresh.getTitle());
		vg.setDeveloper(fresh.getDeveloper());
		vg.setPublisher(fresh.getPublisher());
		vg.setDescription(fresh.getDescription());
		vg.setEsrbRating(fresh.getEsrbRating());
		vg.setMetacriticScore(fresh.getMetacriticScore());
		vg.setReleaseDate(fresh.getReleaseDate());
		vg.setBoxartURL(fresh.getBoxartURL());
		
		return vg;
	}

	@Override
	public void removeGame(int id) {
		VideoGame vg = em.find(VideoGame.class, id);

		em.remove(vg);
		em.flush();
	}
}
