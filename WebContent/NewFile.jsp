<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<title>Admin process</title>

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


</head>

<body>


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
										type="text" id="movi" name="movie" placeholder="Movie name"
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




	<h4 Style="text-align: left; color: black">${Status}</h4>


	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	</script>


</body>

</html>
