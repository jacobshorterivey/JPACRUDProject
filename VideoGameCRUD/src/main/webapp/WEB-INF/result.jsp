<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Results</title>
</head>
<body>
	<c:if test="${game == null}">
		<h1>No game found. Please go back and try again.</h1>
	</c:if>
	<c:if test="${game != null}">
		<h1>${game.title }</h1>
		<img alt="${game.title } box art" src="${game.boxartURL }" height="100" width="100">
		<ul>
			<li>ID: ${game.id}</li>
			<li>Description: ${game.description}</li>
			<li>Metacritic Score: ${game.metacriticScore}</li>
			<li>Developer: ${game.developer}</li>
			<li>Publisher: ${game.publisher}</li>
			<li>ESRB Rating: ${game.esrbRating}</li>
			<li>Release Year: ${game.releaseDate}</li>
		</ul>
		</c:if>
</body>
</html>