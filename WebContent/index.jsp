<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Online Music</title>
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
<style>
body {
	background-image: url("images/hb.jpg"); 
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
	height: 350px;
}

/* #list {
	padding-top: 50px;
	height: 500px;
} */

 #search1 {
	padding-top: 50px;
	height: 80px;
} 
#popular {
	padding-top: 50px;
	height: 500px;
}



#artist {
	padding-top: 50px;
	height: 400px;
}




@-webkit-keyframes typing { from { width: 0; } }
@-webkit-keyframes blink-caret { 50% { border-color: transparent; } }

p { 
    font: bold 200% garamond;
    border-right: .1em solid black;
    text-align: center!impotant;
    width: 35.5em;
	width: 28ch;
	color: #ffffff;
    margin: 2em 1em;
    white-space: pre-wrap;
    overflow: hidden;
    -webkit-animation: typing 3s steps(21, end),
               blink-caret .5s step-end infinite alternate;
}

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
	color: #54d879;
	font-weight: 600;
	margin-bottom: 30px;
}

.mySlides {
	display: none;
}

.search-form .form-group {
	float: center !important;
	transition: all 0.35s, border-radius 0s;
	width: 32px;
	height: 32px;
	background-color: #fff;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
	border-radius: 25px;
	border: 1px solid #ccc;
}

.search-form .form-group input.form-control {
	padding-right: 20px;
	border: 0 none;
	background: transparent;
	box-shadow: none;
}

.search-form .form-group input.form-control::-webkit-input-placeholder {
	display: none;
}

.search-form .form-group input.form-control:-moz-placeholder {
	/* Firefox 18- */
	display: none;
}

.search-form .form-group input.form-control::-moz-placeholder {
	/* Firefox 19+ */
	display: none;
}

.search-form .form-group input.form-control:-ms-input-placeholder {
	display: none;
}

.search-form .form-group:hover,.search-form .form-group.hover {
	width: 100%;
	border-radius: 4px 25px 25px 4px;
}

.search-form .form-group span.form-control-feedback {
	position: absolute;
	top: -1px;
	right: -2px;
	z-index: 2;
	display: block;
	width: 34px;
	height: 34px;
	line-height: 34px;
	text-align: center;
	color: #3596e0;
	left: initial;
	font-size: 14px;
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


/* h2 {
font-family:cursive;
text-align:center;
	
	font-size: 24px;
	color: #ffffff;
	font-weight: 600;
	margin-bottom: 30px;
	letter-spacing: 6px;
	text-decoration-style: wavy;
	text-shadow: 5px 3px blue;
	
}
 */
   
 


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
		<div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav ">
					<!--         <li><a href="#">Music Store</a></li>
 -->
					<li><a href="#home">Home</a></li>

					<!-- <li><a href="#list">Songs List </a></li> -->

					<li><a href="#search1">Search <span
							class="glyphicon glyphicon-search"></span></a></li>
					<li><a href="#popular">Popular Songs <span
							class="glyphicon glyphicon-heart"></span></a></li>

					 <li><a onclick="location.href='Lists.do;'">Songs List </a></li> 
				</ul>





				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#myModal" data-toggle="modal"
							data-target="#myModal"><span
								class="glyphicon glyphicon-log-in"><b> Login</b></span></a></li>
					</ul>
				</div>
	</nav>

	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">


				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true"></button>
					<h4 class="modal-title">Log-in</h4>
				</div>
				<form  action="login.do" method="post">   
				<div class="modal-body">
					<div class="form-group">
						
							<label for="text">Username</label> <input  type="text"
								class="form-control" name="userName" type="text" required="true">
					</div>
					<div class="form-group">
						<label for="textpassword">Password</label> <input
							class="form-control" name="password" type="password" required="true">
					</div>
				</div>
				<div class="modal-footer">
					<a href="#" data-dismiss="modal" class="btn">Cancel</a>
					<!--  <a href="#" class="btn btn-primary">Log-in</a> -->

					<button    class="btn btn-primary" >Login</button>&nbsp;

				</div>

				 </form>

			</div>

		</div>
	</div>

	</div>

	</div>
	







	<div id="home" class="container-fluid">
	
<!-- 	<button onclick="location.href ='Lists.do';" id="myButton" class="float-right submit-button">View Songs</button>&nbsp;
 -->		<p>One good thing about music,</p>
		<p>when it hits you,</p>
		<p>you feel no pain.</p>
		<h4 Style="text-align:left;color:black">${Status}</h4>
	</div>
	<!-- <div id="list" class="container-fluid">
		<h1>Songs List</h1>


	</div> -->


	<div id="search1" class="container-fluid">
		<h1>Search Songs</h1>

		<div class="container">
			<div class="row">
				<div class="col-md-9 col-md-offset-3">
					<!-- <form action="search.srch" method="post"> -->
					<form action="search.do" class="search-form" method="post">
						<div class="form-group has-feedback">
							<label for="search" class="sr-only">Search</label> <input
								type="text" class="form-control" name="songname" id="search"
								placeholder="Search by Songname / Singer / Movie "> <span
								class="glyphicon glyphicon-search form-control-feedback"></span>
						</div>
					</form>
					<!-- </form> -->
				</div>
			</div>
		</div>
	
	<div id="popular" class="container-fluid">
		<h1>Popular Songs</h1>
		 
		  <div style="padding:120px 0;">
        <div id="thumbnail-slider">
            <div class="inner">
                <ul>
                    <li>
<!--                         <a class="thumb" href="images/surviva.jpg"></a>
 -->                        <a href="sng.jsp" id="sog" ><img src="images/surviva.jpg" alt="sog" class="thumb" /></a>
                    </li>
                    <li>
                        <a class="thumb" href="images/bahubali.jpg"></a>
                    </li>
                    <li>
                        <a class="thumb" href="images/vip2.jpg"></a>
                    </li>
                    <li>
                        <a class="thumb" href="images/raees.jpg"></a>
                    </li>
                   
                </ul>
            </div>
        </div>
    </div>
 
		 

		 
		 
		 
</div>
	<div id="artist" class="container-fluid">
		<h1>Our Artists Are</h1>



<div class="container">
  <div class='row'>
    <div class='col-md-12'>
      <div class="carousel slide media-carousel" id="media">
        <div class="carousel-inner">
          <div class="item  active">
            <div class="row">
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="images/singers/ar.jpg" onclick="location.href='ar.do';"></a>
              </div>          
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="images/singers/yuvan.jpg" onclick="location.href='yuvan.do';"></a>
              </div>
              <div class="col-md-4">
                <a class="thumbnail"><img alt="" src="images/singers/aniruth.jpg" onclick="location.href='singer.do';"></a>
              </div>        
            </div>
          </div>
          <div class="item">
            <div class="row">
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="images/singers/ghostle.jpg" onclick="location.href='ghostle.do';"></a>
              </div>          
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="images/singers/diwakar.jpg" onclick="location.href='diwakar.do';"></a>
              </div>
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="images/singers/priyanka.jpg" onclick="location.href='priyanka.do';"></a>
              </div>        
            </div>
          </div>
   
        </div>
        <a data-slide="prev" href="#media" class="left carousel-control"> <span class="glyphicon glyphicon-chevron-left"></span></a>
        <a data-slide="next" href="#media" class="right carousel-control"><span class="glyphicon glyphicon-chevron-right"></span></a>
      </div>                          
    </div>
  </div>
</div>
	</div>

</div>




</body>
</html>
