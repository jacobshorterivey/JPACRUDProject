<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jacob's Video Game DB</title>
</head>
<body>
	<h1>Jacob's Video Game DB</h1>

	<div>
		<form action="findGameById.do" class="" method="GET">
			<input type="text" name="gameId"> <input type="submit" value="Find Game by ID">
		</form>
		<form action="goToCreateGame.do" class="" method="GET">
			<input type="submit" value="Add a Game">
		</form>
	
	</div>
	<div>
		<h2>Games in Our Database</h2>
		<c:forEach var="game" items="${games}">

			<a href="findGameById.do?gameId=${game.id }"><img
				src="${game.boxartURL }" alt="${game.title }'s boxart" height="230"
				width="200"></a>
		</c:forEach>
	</div>

</body>
</html>