package com.skilldistillery.videogames.entities;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class VideoGame {
	//FIELDS
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String title;
	private String developer;
	private String publisher;
	private String description;
	@Column(name="esrb_rating")
	private String esrbRating;
	@Column(name="metacritic_score")
	private Integer metacriticScore;
	@Column(name="release_date")
	private LocalDate releaseDate;
	@Column(name="boxart_url")
	private String boxartURL;
	
	//CONSTRUCTORS
	public VideoGame() {
		super();
	}
	
	public VideoGame(String title, String developer, String publisher, String description, String esrbRating,
			Integer metacriticScore, LocalDate releaseDate, String boxartURL) {
		super();
		this.title = title;
		this.developer = developer;
		this.publisher = publisher;
		this.description = description;
		this.esrbRating = esrbRating;
		this.metacriticScore = metacriticScore;
		this.releaseDate = releaseDate;
		this.boxartURL = boxartURL;
	}



	//METHODS
	
	public int getId() {
		return id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDeveloper() {
		return developer;
	}

	public void setDeveloper(String developer) {
		this.developer = developer;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getEsrbRating() {
		return esrbRating;
	}

	public void setEsrbRating(String esrbRating) {
		this.esrbRating = esrbRating;
	}

	public Integer getMetacriticScore() {
		return metacriticScore;
	}

	public void setMetacriticScore(Integer metacriticScore) {
		this.metacriticScore = metacriticScore;
	}

	public LocalDate getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(LocalDate releaseDate) {
		this.releaseDate = releaseDate;
	}

	public String getBoxartURL() {
		return boxartURL;
	}

	public void setBoxartURL(String boxartURL) {
		this.boxartURL = boxartURL;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("VideoGame [id=").append(id).append(", title=").append(title).append(", developer=")
				.append(developer).append(", publisher=").append(publisher).append(", description=").append(description)
				.append(", esrbRating=").append(esrbRating).append(", metacriticScore=").append(metacriticScore)
				.append(", releaseDate=").append(releaseDate).append(", boxartURL=").append(boxartURL).append("]");
		return builder.toString();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((boxartURL == null) ? 0 : boxartURL.hashCode());
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + ((developer == null) ? 0 : developer.hashCode());
		result = prime * result + ((esrbRating == null) ? 0 : esrbRating.hashCode());
		result = prime * result + id;
		result = prime * result + ((metacriticScore == null) ? 0 : metacriticScore.hashCode());
		result = prime * result + ((publisher == null) ? 0 : publisher.hashCode());
		result = prime * result + ((releaseDate == null) ? 0 : releaseDate.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		VideoGame other = (VideoGame) obj;
		if (boxartURL == null) {
			if (other.boxartURL != null)
				return false;
		} else if (!boxartURL.equals(other.boxartURL))
			return false;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (developer == null) {
			if (other.developer != null)
				return false;
		} else if (!developer.equals(other.developer))
			return false;
		if (esrbRating == null) {
			if (other.esrbRating != null)
				return false;
		} else if (!esrbRating.equals(other.esrbRating))
			return false;
		if (id != other.id)
			return false;
		if (metacriticScore == null) {
			if (other.metacriticScore != null)
				return false;
		} else if (!metacriticScore.equals(other.metacriticScore))
			return false;
		if (publisher == null) {
			if (other.publisher != null)
				return false;
		} else if (!publisher.equals(other.publisher))
			return false;
		if (releaseDate == null) {
			if (other.releaseDate != null)
				return false;
		} else if (!releaseDate.equals(other.releaseDate))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		return true;
	}

	
	
	


	
}
