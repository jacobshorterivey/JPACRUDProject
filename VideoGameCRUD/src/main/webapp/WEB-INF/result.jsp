<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Search Results</title>
</head>
<body>
	<jsp:include page="navbar.jsp" />
	<div>
		<c:if test="${game == null}">
			<h1>No game found. Please go back and try again.</h1>
		</c:if>
		<c:if test="${game != null}">
			<h1>${game.title }</h1>
			<img alt="${game.title } box art" src="${game.boxartURL }"
				height="340" width="300">
			<ul>
				<li>ID: ${game.id}</li>
				<li>Description: ${game.description}</li>
				<li>Metacritic Score: ${game.metacriticScore}</li>
				<li>Developer: ${game.developer}</li>
				<li>Publisher: ${game.publisher}</li>
				<li>ESRB Rating: ${game.esrbRating}</li>
				<li>Release Year: ${game.releaseDate}</li>
			</ul>

			<button data-toggle="collapse" data-target="#editform">Edit Game</button>

			<div id="editform" class="collapse">
			<form action="updateGame.do" method="POST" modelAttribute="game">
				  		<input type="hidden" name="oldGameId" value="${game.id }">
						<label>Title: </label><input type="text" name="title"value="${game.title }"> <br />
						<label>Developer: </label> <input type="text" name="developer" value="${game.developer }"> <br />
						<label>Publisher: </label> <input type="text" name="publisher" value="${game.publisher }"> <br />
						<label>Description: </label> <input type="text" size="60" name="description" value="${game.description }"> <br />
<%-- 						<label>ESRB Rating: </label> <input type="text" name="esrbRating" value="${game.esrbRating }"> <br /> --%>						<p>Select ESRB Rating:</p>
						<select name="esrbRating">
							<option value="RP">RP</option>
							<option value="eC">eC</option>
							<option value="E">E10+</option>
							<option value="T">T</option>
							<option value="M">M</option>
							<option value="AO">AO</option>
						</select> <br />
						<label>Metacritic Score: </label> <input type="text" name="metacriticScore" value="${game.metacriticScore }"> <br />
						<label>Release Date: </label> <input type="text" name="releaseDate" value="${game.releaseDate }"> <br />
						<label>Cover Art URL: </label> <input type="text" name="boxartURL" value="${game.boxartURL }"> <br />

						<input type="submit" value="Update Game Info">
					</form>
			</div>


<%-- 			<button type="button" class="collapsible">Edit Game</button>
				<div class="content">
				  	<form action="updateGame.do" method="POST" modelAttribute="game">
				  		<input type="hidden" name="oldGameId" value="${game.id }">
						<label>Title: </label><input type="text" name="title"value="${game.title }"> <br />
						<label>Developer: </label> <input type="text" name="developer" value="${game.developer }"> <br />
						<label>Publisher: </label> <input type="text" name="publisher" value="${game.publisher }"> <br />
						<label>Description: </label> <input type="text" size="60" name="description" value="${game.description }"> <br />
						<select name="esrbRating">
							<option value="RP">RP</option>
							<option value="eC">eC</option>
							<option value="E">E10+</option>
							<option value="T">T</option>
							<option value="M">M</option>
							<option value="AO">AO</option>
						</select> <br />
						<label>Metacritic Score: </label> <input type="text" name="metacriticScore" value="${game.metacriticScore }"> <br />
						<label>Release Date: </label> <input type="text" name="releaseDate" value="${game.releaseDate }"> <br />
						<label>Cover Art URL: </label> <input type="text" name="length" value="${game.boxartURL }"> <br />

						<input type="submit" value="Update Game Info">
					</form>
				</div> --%>

			<form action="" method="POST">
				<button type="submit" formaction="destroyGame.do" name="gameId" value="${game.id}">Delete Game</button>
			</form>

		</c:if>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
