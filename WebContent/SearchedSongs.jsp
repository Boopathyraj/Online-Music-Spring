<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Searched Songs</title>
<%-- <link href="<c:url value="/css/ListStyle.css" />" rel="stylesheet" type="text/css" > --%>
<Style>
/*  body{
 background-image:url("images/bimg.jpg"); 
}   */
td,th {
    text-align: center;
}
a{
margin-left:150px;
color:white;}</Style>
</head>
<body>
<div class="container" >
<div class="row">
<div class="col-xs-1"></div>
<div class="col-xs-10">
<div class="box">
<h2 Style="text-align:left">Your Search Result is :</h2>
<hr>

<div align="center">
<table border="1" cellpadding="5" style="width:100%">
<tr>
<th>Song Name</th>
<th>Singer</th>
<th>Movie</th>
<th>Duration</th>
<th>Song</th>
</tr>
<c:forEach var="SongsBean" items="${list}"  >
<tr>
<td><c:out value="${SongsBean.songname}"/></td>
<td><c:out value="${SongsBean.singer}"/></td>
<td><c:out value="${SongsBean.movie}"/></td>
<td><c:out value="${SongsBean.duration}"/></td>
<td><embed src="${SongsBean.url}" autoplay="false" width="240" height="40" autostart="false" >
</embed></td></tr></c:forEach></table></div>
<br>
<!-- <embed src="resources/songs/Aaluma.mp3" width="240"  height="40"></embed>
 --></div>
</div>
<div class="col-xs-1"></div>
</div>
</div>
</body>


</html>


