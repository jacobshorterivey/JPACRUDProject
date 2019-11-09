package com.skilldistillery.videogames;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;


@SpringBootApplication
@EntityScan("com.skilldistillery.videogames")
public class VideoGameCrudApplication {

	public static void main(String[] args) {
		SpringApplication.run(VideoGameCrudApplication.class, args);
	}

}
