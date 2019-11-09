package com.skilldistillery.videogames.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.fail;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class VideoGameTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private VideoGame vg;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("VideoGames");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		vg = em.find(VideoGame.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		vg = null;
	}

	@Test
	@Disabled
	void test() {
		fail("Not yet implemented");
	}

	@Test
	@DisplayName("testing basic JPA functionality")
	void test1() {
		assertNotNull(vg);
		assertEquals("Dragon Age: Origins", vg.getTitle());
	}
	@Test
	@DisplayName("testing date functionality")
	void test2() {
		assertNotNull(vg);
		assertEquals("2009-11-03", vg.getReleaseDate().toString());
	}
	@Test
	@DisplayName("testing list functionality")
	void test3() {
		assertNotNull(vg);
		String query = "SELECT vg FROM VideoGame vg ORDER BY vg.id";
		List<VideoGame> allGames = em.createQuery(query, VideoGame.class).getResultList();
		assertEquals(allGames.get(0), vg);
	}

}
