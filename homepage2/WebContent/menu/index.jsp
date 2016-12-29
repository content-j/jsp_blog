<!DOCTYPE html>
<html>
<title>The PhtoGrapher</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	font-family: "Lato", sans-serif
}

.mySlides {
	display: none
}
</style>
<body>
	<jsp:include page="/menu/top.jsp" />
	<!-- Page content -->


	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
			<li data-target="#myCarousel" data-slide-to="5"></li>
			<li data-target="#myCarousel" data-slide-to="6"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox"
			style="background-color: black">
			<div class="item active">
				<img src="./images/0.jpg" alt="New York"
					style="width: 700px; height: 750px; margin: 0 auto">

				<div class="carousel-caption">
					<h3></h3>
					<p></p>
				</div>
			</div>
			<div class="item">
				<img src="./images/1.jpg" alt="Chicago"
					style="width: 700px; height: 750px; margin: 0 auto">
				<div class="carousel-caption">
					<h3></h3>
					<p></p>
				</div>
			</div>
			<div class="item">
				<img src="./images/5.jpg" alt="Chicago"
					style="width: 700px; height: 750px; margin: 0 auto">
				<div class="carousel-caption">
					<h3></h3>
					<p></p>
				</div>
			</div>
			<div class="item">
				<img src="./images/6.jpg" alt="Chicago"
					style="width: 700px; height: 750px; margin: 0 auto">
				<div class="carousel-caption">
					<h3></h3>
					<p></p>
				</div>
			</div>
			<div class="item">
				<img src="./images/7.jpg" alt="Chicago"
					style="width: 700px; height: 750px; margin: 0 auto">
				<div class="carousel-caption">
					<h3></h3>
					<p></p>
				</div>
			</div>
			<div class="item">
				<img src="./images/8.jpg" alt="Chicago"
					style="width: 700px; height: 750px; margin: 0 auto">
				<div class="carousel-caption">
					<h3></h3>
					<p></p>
				</div>
			</div>
			<div class="item">
				<img src="./images/9.jpg" alt="Chicago"
					style="width: 700px; height: 750px; margin: 0 auto">
				<div class="carousel-caption">
					<h3></h3>
					<p></p>
				</div>
			</div>


		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>















	<!-- The Band Section -->
	<div class="w3-container w3-content w3-center w3-padding-64"
		style="max-width: 800px" id="band">
		<h2 class="w3-wide">THE PHOTOGRAPHER</h2>
		<p class="w3-opacity">
			<i>We are photographer</i>
		</p>
		<p class="w3-justify">Good morning. 'The PhotoGrapher' The site is
			where you want to be with people who love photography. People who
			bring light. We are photographers. I want to see the light you have.
			Will you share the light with us?</p>
		<!-- 
				
				 -->




		<div class="w3-row w3-padding-32">
			<div class="w3-third">
				<p>Best Photo</p>
				<a href=><img src="./images/sana1.jpg" class="img-circle person"
					alt="Random Name" style="width: 60%"></a>
			</div>
			<div class="w3-third">
				<p>Hot Photo</p>
				<a href=><img src="./images/sana2.jpg" class="img-circle person"
					alt="Random Name" style="width: 60%"></a>
			</div>
			<div class="w3-third">
				<p>New Photo</p>
				<a href=><img src="./images/sana3.jpg" class="img-circle person"
					alt="Random Name" style="width: 60%"></a>
			</div>
		</div>
	</div>

	<!-- Footer -->


	<script>
		// Automatic Slideshow - change image every 4 seconds
		var myIndex = 0;
		carousel();

		function carousel() {
			var i;
			var x = document.getElementsByClassName("mySlides");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {
				myIndex = 1
			}
			x[myIndex - 1].style.display = "block";
			setTimeout(carousel, 1000);
		}

		// Used to toggle the menu on small screens when clicking on the menu button
		function myFunction() {
			var x = document.getElementById("navDemo");
			if (x.className.indexOf("w3-show") == -1) {
				x.className += " w3-show";
			} else {
				x.className = x.className.replace(" w3-show", "");
			}
		}

		// When the user clicks anywhere outside of the modal, close it
		var modal = document.getElementById('ticketModal');
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>
	<jsp:include page="/menu/bottom.jsp" />
</body>
</html>
