<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">


<title>Add a Game!</title>
</head>
<body>
<jsp:include page="navbar.jsp" />
<h2>Add a Game</h2>
<div class="container editform">
  <div class="row">
    <div class="col-8">
      <div id="editform">
        <form action="createGame.do" method="POST" modelAttribute="game">
          <div class="form-group">
        		<label>Title: </label> <input type="text" name="title" required> <br />
        		<label>Developer: </label> <input type="text" name="developer"> <br />
        		<label>Publisher: </label> <input type="text" name="publisher"> <br />
        		<label>Description: </label> <input type="text" size="60" name="description"> <br />
        		<label>ESRB Rating: </label> <select name="esrbRating">
      			<option value="RP">RP</option>
      			<option value="eC">eC</option>
      			<option value="E">E10+</option>
      			<option value="T">T</option>
      			<option value="M">M</option>
      			<option value="AO">AO</option>
        		</select> <br />
        		<label>Metacritic Score (1-100): </label> <input type="text" name="metacriticScore" pattern="^[1-9][0-9]?$|^100$" required> <br />
        		<label>Release Date (YYYY-MM-DD): </label> <input type="text" name="releaseDate" pattern="(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|1[02])-31))" required> <br />
        		<label>Cover Art (URL): </label> <input type="text" name="boxartURL"> <br />
        		<input type="submit" value="Add Game">
            </div>
          </form>
        </div>
      </div>
      <div class="col-2">
      </div>
      <div class="col-2">
      </div>
    </div>
  </div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
