<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Game!</title>
</head>
<body>

<form action="createGame.do" method="POST" modelAttribute="game">
		<label>Title: </label> <input type="text" name="title"> <br /> 
		<label>Developer: </label> <input type="text" name="developer"> <br /> 
		<label>Publisher: </label> <input type="text" name="publisher"> <br /> 
		<label>Description: </label> <input type="text" name="description"> <br /> 
		<label>ESRB Rating: </label> <input type="text" name="esrbRating"> <br /> 
		<label>Metacritic Score (0-100): </label> <input type="text" name="metacriticScore"> <br /> 
		<label>Release Date (YYYY-MM-DD): </label> <input type="text" name="releaseDate"> <br /> 
		<label>Cover Art (URL): </label> <input type="text" name="boxartURL"> <br /> 
		<input type="submit" value="Add Game">
</form>

</body>
</html>