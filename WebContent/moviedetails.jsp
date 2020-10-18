<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieDetails</title>
<style>
body {
	margin:0;
}
.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	color: white;
	background-color: #291f04;
	margin-top: 100%;
	width: 100%;
	height: 6%;
	font-size: 200%;
	text-align: center;
	opacity: 1;
}
.header {
	overflow: hidden;
	background-color: #291f04;
	padding: 5px 5px;
	opacity: 1;
	height:9%;
}
.header.logout {
	background-color: #291f04;
	color: white;
	left:95%;
}
.bgpic {
	background-image: url("background.jpg");
	height: 100vh;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}
table {
	width: 50%;
	margin-left: 20%;
	margin-top: 5%;
	background-color:#e3dddc;
}
th {
	font-size:30px;
	text-align:center
}
td {
	text-align:center;
	font-size:30px;
}
.btn {
  margin-bottom:10%;
  align: center;
  background-color: #291f04;
  border: none;
  border-radius: 16px;
  color: white;
  padding: 12px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.btn:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>
</head>
<body class="bgpic">
	
	<div class="header">
		    <a href="userhome.jsp" class = "back" align="right">
		  	<img src="back.png" alt="back button" style="width:60px;height:55px;border:0;">
		    </a>
			<a href="index.jsp" class = "logout" align="right">
		  	<img src="logout.png" alt="logout button" style="width:60px;height:55px;border:0;float:right;">
		    </a>
	</div> 
	<div class="display">
	<table align="center" border=1>
	<tr><th>Movie Id</th><td><c:out value="${movie.movieId}" /></td></tr>
	<tr><th>Movie Name</th><td><c:out value="${movie.movieName}"/></td></tr>
	<tr><th>Movie Genre</th><td><c:out value="${movie.movieGenre}" /></td></tr>
	<tr><th>Movie Director</th><td><c:out value="${movie.movieDirector}" /></td></tr>
	<tr><th>Movie Length</th><td><c:out value="${movie.movieLength}" /></td></tr>
	<tr><th>Language</th><td><c:out value="${movie.language}" /></td></tr>
	<tr><th>Movie Release Date</th><td><c:out value="${movie.movieReleaseDate}" /></td></tr>
	</table>
	</div>
	<br>
	<div align="center">
		<a href="booking.jsp?movieId=${movie.movieId}" class="btn">BOOK TICKET</a>
	</div>
	<div class="footer" style="font-size: 20px">
		<span style="font-size: 15px">&#9400;</span> Copyrights Capgemini
		India Ltd.
	</div>
</body>
</html>