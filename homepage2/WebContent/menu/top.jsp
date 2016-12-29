<!DOCTYPE html>

<%
	String root = request.getContextPath();

	String id = (String) session.getAttribute("id");
%>

<html>
<title></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	function startTime() {
		var today = new Date();
		var h = today.getHours();
		var m = today.getMinutes();
		var s = today.getSeconds();
		m = checkTime(m);
		s = checkTime(s);
		document.getElementById('txt').innerHTML = h + ":" + m + ":" + s;
		var t = setTimeout(startTime, 500);
	}
	function checkTime(i) {
		if (i < 10) {
			i = "0" + i
		}
		; // add zero in front of numbers < 10
		return i;
	}
</script>
<style>
body.b1 {
	font-family: "Lato", sans-serif;
}

.mySlides {
	display: none
}
</style>
<body onload="startTime()">



	<!-- Navbar -->
	<div class="w3-top">
		<ul class="w3-navbar w3-black w3-card-2 w3-left-align">




			<li><a href="${pageContext.request.contextPath }/menu/index.jsp"
				class="w3-hover-none w3-hover-text-grey w3-padding-large">Home</a></li>

			

			<li class="w3-hide-small w3-dropdown-hover"><a
				href="javascript:void(0)" class="w3-hover-none w3-padding-large"
				title="member">PhotoGrapher(member) <i class="fa fa-caret-down"></i></a>
				<div class="w3-dropdown-content w3-white w3-card-4">
				<a href="<%=root %>/member/list.jsp">list</a> <a href="<%=root %>/member/agreement.jsp">agree</a> 
				
				<%
				if (id == null) {
			%>
				<a href="<%=root%>/member/loginForm.jsp">login</a>
			
			<%
				} else {
			%>
				<a href="<%=root%>/member/read.jsp">Mypage</a>
				<a href="<%=root%>/member/logout.jsp">logout</a>
		

			<%
				}
			%>
				
				
			</div>
			</li>
			
				
			<li class="w3-hide-small"><a href="#tour"
				class="w3-padding-large">Photo</a></li>

			<li class="w3-hide-small"><a href="#contact"
				class="w3-padding-large">Popular</a></li>

			<li class="w3-hide-small w3-dropdown-hover"><a
				href="javascript:void(0)" class="w3-hover-none w3-padding-large"
				title="More">Trade <i class="fa fa-caret-down"></i></a>

				<div class="w3-dropdown-content w3-white w3-card-4">
					<a href="#">purchase</a> <a href="#">selling</a> <a href="#">Auction</a>
				</div></li>

			
			
			
		
			<li style="float: right;">
				<div align="right" id="txt" style="color: white; margin: 13px 10px">
				</div>
			</li>
		</ul>
	</div>

	<br>





	<script>
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

</body>
</html>
