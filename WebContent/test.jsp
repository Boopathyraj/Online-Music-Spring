<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Admin process</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="hide.js"></script>
<link href="css/thumbnail-slider.css" rel="stylesheet" type="text/css" />
    <script src="js/thumbnail-slider.js" type="text/javascript"></script>
<script src="js/singer.js" type="text/javascript"></script>
<link href="singercarousel.css" rel="stylesheet" type="text/css">


<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/style.css" rel="stylesheet">
<link href="css/video.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">

<style>
body {
	/* background-image: url("images/hb.jpg");  */
	/*  background-repeat: no-repeat;
    background-attachment: fixed; */
   /* background-color: black; */ 
}

</style>

<style>

body {
	position: relative;
}

#home {
	padding-top: 50px;
	height: 120px;
}

/* #list {
	padding-top: 50px;
	height: 500px;
} */

 #Songs {
	padding-top: 50px;
	height: 80px;
} 


@-webkit-keyframes typing { from { width: 0; } }
@-webkit-keyframes blink-caret { 50% { border-color: transparent; } }

/* p { 
    font: bold 200% garamond;
    border-right: .1em solid black;
    text-align: center!impotant;
    width: 35.5em;
	width: 28ch;
	color: #000000 ;
    margin: 2em 1em;
    white-space: pre-wrap;
    overflow: hidden;
    -webkit-animation: typing 3s steps(21, end),
               blink-caret .5s step-end infinite alternate;
}
 */
.navbar {
	margin-bottom: 0;
	background-color: #4d84e2;
	z-index: 9999;
	border: 0;
	font-size: 18px !important;
	line-height: 1.42857143 !important;
	letter-spacing: 4px;
	border-radius: 0;
	font-family: Montserrat, sans-serif;
}

h1 {
	font-size: 24px;
	text-transform: uppercase;
	color: #ffffff;
	font-weight: 600;
	margin-bottom: 30px;
	font-family: "Times New Roman", Times, serif;
}

.mySlides {
	display: none;
}


.modal-header,h4,.close {
	background-color: #4d84e2;
	color: white !important;
	text-align: center;
	font-size: 30px;
	font-family: "Times New Roman", Times, serif;
}

.modal-footer {
	background-color: #f9f9f9;
}


 h2 {
font-family:cursive;
text-align:center;
	
	font-size: 30px;
	color: #ffffff;
	font-weight: 600;
	margin-bottom: 30px;
	letter-spacing: 6px;
	text-decoration-style: wavy;
	text-shadow: 5px 3px blue;
	
}
 
   
 


</style>

</head>





<body data-spy="scroll" data-target=".navbar" data-offset="50">

	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>

			</button>

		</div>
		</div>
		<div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav ">
					<!--         <li><a href="#">Music Store</a></li>
 -->
					<li><a href="#home">Home</a></li>

					<!-- <li><a href="#list">Songs List </a></li> -->

					<li><a href="#Songs">Add Songs <span class="glyphicon glyphicon-music"></span></a></li>
					<li><a onclick="location.href='Lists.do;'">Songs List </a></li> 
					
					<!-- <a href="index.jsp" >Logout <span class="glyphicon glyphicon-log-out"></span></a></li> -->
				</ul>
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="index.jsp" >Logout<span
								class="glyphicon glyphicon-log-out"></span></a></li>
					</ul>
				</div>
</div>
</div>
	</nav>


	

	







	<div id="home" class="container-fluid">
	<p style="font-size: 25px; color: highlighttext;" >Welcome Admin :)</p>
	<h4 Style="text-align: left;; font-weight:bold ,500; color: blue;;k">${Status}</h4>
	
	</div>
	
	<div id="#Songs" class="container-fluid">
		<h2>Add Songs</h2>
	 

	<div class="center-container">

		<div class="content-top">
			<form action="addSongs.do" method="POST" onsubmit="uploadOnChange();">
				<div class="content-w3ls">
					<div class="form-w3ls">

						<div class="content-wthree1">
							<div class="grid-agileits1">


								<div class="vid-form-control">
									<label class="header">Song Name <span>*</span></label> <input
										type="text" id="name" name="songname" placeholder="SongName"
										required="">
								</div>
								<div class="vid-form-control">
									<label class="header">Singer name <span>*</span></label> <input
										type="text" id="name" name="singer" placeholder="Singer name"
										pattern="[A-Z a-z]{3,20}" title="3 to 20 Characters Only"
										required="true">
								</div>
								<div class="vid-form-control">
									<label class="header">Movie Name <span>*</span></label> <input
										type="text" id="name" name="movie" placeholder="Movie name"
										required="">
								</div>
								<div class="vid-form-control">
									<label class="header">Duration <span>*</span></label> <input
										type="number" id="name" name="duration" step="0.01" min="0.1"
										max="10.0"
										title="Please enter the Song Duration between 0.1 mins to 10.0 mins"
										placeholder="Enter Duration" required="">
								</div>


							</div>
						</div>
					</div>
					<div class="form-w3ls-1">




						<div class="vid-form-control">
							<label class="header">Song <span>*</span></label> <input
								type="file" id="fileinput" required="">
						</div>
						<input type="text" id="myField" value="resources/songs/"
							name="url">



					</div>


					<div class="wthreesubmitaits pull-left">
						<br> <br> <input type="submit" name="submit"
							value="Submit" id="submit">
						<!-- 	<button id="submit" onclick="formValidation();" >SUBMIT </button>&nbsp; -->
						<!-- 	<input type="submit" value="click"> -->

					</div>
					<div class="clear"></div>
				</div>

			</form>
		</div>

	</div>







  <img id="background" src="images/bimg.jpg" /> 

	<script type="text/javascript">
		document.getElementById('fileinput').onchange = uploadOnChange;

		function uploadOnChange() {
			var filename = this.value;
			var lastIndex = filename.lastIndexOf("\\");
			if (lastIndex >= 0) {
				filename = filename.substring(lastIndex + 1);
			}
			document.getElementById('myField').value = document
					.getElementById('myField').value
					+ filename;
		}

		$(function() {
			$('#fileinput').click(function(e) {
				document.getElementById('myField').value = "resources/songs/";
			});
		});
	</script>






	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	 
		 
</div>






</body>
</html>
